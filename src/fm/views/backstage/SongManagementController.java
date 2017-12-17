package fm.views.backstage;

import fm.beans.Song;
import fm.services.Interfaces.SingerService;
import fm.services.Interfaces.SongService;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(value="/manager")
public class SongManagementController {

    private static final long MAX_SONG_FILE_SIZE = 20971520;
    private static final long MAX_IMAGE_FILE_SIZE = 1048576;
    private Integer lastSongId = 0;
    private ApplicationContext applicationContext = null;
    private SongService songService = null;

    @RequestMapping(value="addSong.do", method=POST)
    public ModelAndView doAddSong(String songName, String singerName, String songStyle,
                                  String songLanguage, MultipartFile songFile, MultipartFile songImg, HttpSession session){
        ServletContext context = session.getServletContext();
        String songFilePath = context.getRealPath("/songs");
        String imageFilePath = context.getRealPath("/images");
        applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(context);
        songService = (SongService)applicationContext.getBean("songService");
        lastSongId = songService.findLastSong().getSongId();
        String uploadSongResult = doUploadSong(songFile, songFilePath);
        String uploadImageResult = "";
        String addSongInfoResult = "";
        if (songImg.getSize() > 0) {
            uploadImageResult = doUploadImage(songImg, imageFilePath);
        }
        if (uploadSongResult.startsWith("OK!")){
            String songFileLocation = uploadSongResult.substring(3);
            String imageLocation = "";
            if (!uploadImageResult.equals("")){
                imageLocation = uploadImageResult.substring(3);
            }
            try {
                addSongInfo(songName, singerName, songStyle, songLanguage, songFileLocation, imageLocation);
                addSongInfoResult = "OK!添加歌曲信息成功！";
            } catch (Exception e){
                addSongInfoResult = "添加歌曲信息失败！";
            }
        }
        System.out.println(uploadSongResult);
        System.out.println(uploadImageResult);
        System.out.println(addSongInfoResult);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addSong");
        mv.addObject("songName", songName);
        mv.addObject("singerName", singerName);
        mv.addObject("uploadSongResult", uploadSongResult);
        mv.addObject("uploadImageResult", uploadImageResult);
        mv.addObject("addSongInfoResult", addSongInfoResult);
        return mv;

    }

    @RequestMapping(value="removeSong.do")
    public String doRemoveSong(HttpServletRequest request){

        if (request.getSession().getAttribute("administrator") == null) {
            return "admin";
        }

        int deleteId;
        try {
            deleteId = Integer.parseInt(request.getParameter("delete"));
            applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(request.getServletContext());
            songService = (SongService) applicationContext.getBean("songService");
            songService.removeSongById(deleteId);
        } catch (Exception e) {
            return "errorPage";
        }
        String songFilePath = request.getServletContext().getRealPath("/songs");

        String os = System.getProperty("os.name");
        if(os.toLowerCase().startsWith("win")){
            songFilePath = songFilePath + "\\" + deleteId + ".mp3";
        } else {
            songFilePath = songFilePath + "/" + deleteId + ".mp3";
        }

        File file = new File(songFilePath);
        if(!file.delete()){
            return "errorPage";
        }
        return "songInfo";
    }

    @RequestMapping(value="updateSongInfo.do", method=POST)
    public void doUpdateSongInfo(String songId, String songName, String singerName, String songStyle,
                                 String songLanguage, String songFile, String songImg,HttpSession session, HttpServletResponse response) throws IOException {

        if (session.getAttribute("administrator") == null) {
            response.sendRedirect(response.encodeRedirectURL("/fm/admin"));
        }
        ServletContext context = session.getServletContext();
        applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(context);
        songService = (SongService)applicationContext.getBean("songService");
        SingerService singerService = (SingerService) applicationContext.getBean("singerService");
        int singerId = singerService.findSingerByName(singerName).getSingerId();
        Song song = new Song();
        song.setSongId(Integer.parseInt(songId));
        song.setSongName(songName);
        song.setSingerId(singerId);
        song.setSongStyle(songStyle);
        song.setSongLanguage(songLanguage);
        song.setLocationPath(songFile);
        song.setCoverImagePath(songImg);
        try {
            songService.modifySong(song);
            response.sendRedirect(response.encodeRedirectURL("/fm/management/managerIndex.jsp?part=updateSongInfo&update=" +
                    songId+"&updateResult=success"));
        } catch (Exception e) {
            e.printStackTrace();
            try {
                response.sendRedirect(response.encodeRedirectURL("/fm/management/managerIndex.jsp?part=updateSongInfo&update=" + songId
                        +"&updateResult=fault"));
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        }
    }

    private void addSongInfo(String songName, String singerName, String songStyle, String songLanguage,
                             String songFileLocation, String imageLocation){
        Song song = new Song();
        song.setSongName(songName);
        song.setSongLanguage(songLanguage);
        song.setSongStyle(songStyle);
        song.setLocationPath(songFileLocation);

        if (!imageLocation.equals("") && imageLocation != null) {
            song.setCoverImagePath(imageLocation);
        }
        songService.addSong(song, singerName);
    }

    private String doUploadSong(MultipartFile file, String songFilePath) {
        Long fileSize = file.getSize();
        String fileName = file.getOriginalFilename();
        if (fileSize > 0 && fileSize <= MAX_SONG_FILE_SIZE) {
            if (fileName.endsWith(".mp3")) {
                fileName = lastSongId + ".mp3";
                File filePath = new File(songFilePath, fileName);
                try {
                    file.transferTo(filePath);
                } catch (IOException e) {
                    e.printStackTrace();
                    return "歌曲传输失败！";
                }
                return  "OK!" + songFilePath.substring(songFilePath.lastIndexOf("\\")+1) + fileName;
            }
            return "歌曲格式不正确！";
        }
        return "歌曲文件大小不正确！";
    }

    private String doUploadImage(MultipartFile file, String imageFilePath){
        Long fileSize = file.getSize();
        if (fileSize > 0 && fileSize < MAX_IMAGE_FILE_SIZE) {
            String fileName = file.getOriginalFilename();
            if (fileName.endsWith(".jpg") || fileName.endsWith(".png")) {
                File imagePath = new File(imageFilePath, fileName);
                try {
                    file.transferTo(imagePath);
                } catch (IOException e){
                    e.printStackTrace();
                    return "图片传输失败！";
                }
                return "OK!" + imageFilePath.substring(imageFilePath.lastIndexOf("\\")) + fileName;
            }
            return "图片格式不正确！";
        }
        return "图片文件大小不正确！";
    }
}
