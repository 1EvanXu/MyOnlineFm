package fm.backstage.upload;

import fm.beans.Song;
import fm.service.SongService;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class UploadServlet extends HttpServlet{
    private static final int ThresholdSize = 5 * 1024;
    private static final long UploadMaxSize = 20 * 1024 * 1024;
    private String songFilePath = null;
    private String tempFilePath = null;
    private Integer lastSongId = 0;
    private ApplicationContext applicationContext = null;
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        //get the path of files of song and temp from init parameter in web.xml.
        songFilePath = config.getInitParameter("songFilePath");
        tempFilePath = config.getInitParameter("tempFilePath");

        songFilePath = getServletContext().getRealPath(songFilePath);
        tempFilePath = getServletContext().getRealPath(tempFilePath);

        //Get the spring container
        applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        lastSongId = getLastSongId();

        try {
            //create a FileItem Factory based on the disk.
            DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
            //set the buffer size when write data into disk, the size is 500k.
            diskFileItemFactory.setSizeThreshold(ThresholdSize);
            //set the temp directory.
            diskFileItemFactory.setRepository(new File(tempFilePath));
            //create a upload processor.
            ServletFileUpload upload = new ServletFileUpload(diskFileItemFactory);
            //set the max size of the upload file.
            upload.setSizeMax(UploadMaxSize);


            List fileItems = upload.parseRequest(req);
            Iterator iterator = fileItems.iterator();
            int uploadResult = 0;
            Map<String, String> songInfoDataMap = new HashMap<>();
            while (iterator.hasNext()) {
                FileItem fileItem = (FileItem) iterator.next();
                if (fileItem.isFormField()) {
                    songInfoDataMap.put(fileItem.getFieldName(), fileItem.getString());
                } else {
                    uploadResult = processUploadedFile(fileItem);

                }
            }
            if (uploadResult == 1) {
                try{
                    processFormField(songInfoDataMap);
                }catch (Exception e) {
                    uploadResult = 0;
                }

            }
            processUploadResult(uploadResult, req, resp);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    private void processFormField(Map<String, String> map) throws Exception {

        if (map.isEmpty()) return;

        Song song = new Song();
        SongService songService = (SongService)applicationContext.getBean("songService");

        String songName = StringProcessor.convertEncodingFormat(map.get("songname"), "UTF-8");
        song.setSongName(songName);
        String singerName = StringProcessor.convertEncodingFormat(map.get("artist"), "UTF-8");
        song.setSongLanguage(map.get("language"));
        song.setSongStyle(map.get("style"));

        //可换路径
        // String location = songFilePath + "/" + Integer.toString(lastSongId + 1) + ".mp3";
        String location = "songs/" + Integer.toString(lastSongId + 1) + ".mp3";
        song.setLocationPath(location);

        songService.addSong(song,singerName);
    }



    private int processUploadedFile(FileItem fileItem) {

        String filename = fileItem.getName();
        long fileSize = fileItem.getSize();

        if(filename.equals("")) { return -1;}
        else if (fileSize == 0) { return -2;}
        else if (fileSize > UploadMaxSize) {return -3;}

        int indexOfPoint = filename.indexOf(".");
        String fileFormat = filename.substring(indexOfPoint);
        String newFileName = Integer.toString(lastSongId + 1) + fileFormat;
        File uploadedFile = new File(  songFilePath + "/" + newFileName);
        try {
            fileItem.write(uploadedFile);
        } catch (Exception e) {
            e.printStackTrace();
            return -4;
        }
        return 1;
    }

    private void processUploadResult(int uploadResult, HttpServletRequest request, HttpServletResponse response) {
        switch (uploadResult) {
            case 1: request.setAttribute("uploadResult1", "Upload completed");break;
            case 0: request.setAttribute("uploadResult2", "Failed to add song info !");break;
            case -1: request.setAttribute("uploadResult2", "Filename can't be empty !");break;
            case -2: request.setAttribute("uploadResult2", "The size of file can't be 0m !");break;
            case -3: request.setAttribute("uploadResult2", "The file is oversize ! ");break;
            case -4: request.setAttribute("uploadResult2", "Failed to upload file !");break;
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/manager/upload");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private Integer getLastSongId() {
        SongService songService = (SongService) applicationContext.getBean("songService");
        return songService.findLastSong().getSongId();
    }
}
