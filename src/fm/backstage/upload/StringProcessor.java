package fm.backstage.upload;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

public class StringProcessor {
    private static Map<String, String> songStyleMap = new HashMap<>();
    private static Map<String, String> languageMap = new HashMap<>();

    public static Map<String, String> getSongStyleMap() {
        songStyleMap.put("Pop", "流行");
        songStyleMap.put("Rock", "摇滚");
        songStyleMap.put("Folk", "民谣");
        songStyleMap.put("Dance", "舞曲");
        songStyleMap.put("Hip-hop", "嘻哈");
        return songStyleMap;
    }

    public static Map<String, String> getLanguageMap() {
        languageMap.put("Chinese", "中文");
        languageMap.put("Cantonese", "粤语");
        languageMap.put("English", "英语");
        languageMap.put("Japanese", "日语");
        languageMap.put("Korean", "韩语");
        return languageMap;
    }



    /**
     * 获取某段字符串的编码类型
     */
    public static String getEncoding(String str) {
        String encode = "GB2312";
        try {
            if (str.equals(new String(str.getBytes(encode), encode))) {
                String s = encode;
                return s;
            }
        } catch (Exception exception) {
        }
        encode = "ISO-8859-1";
        try {
            if (str.equals(new String(str.getBytes(encode), encode))) {
                String s1 = encode;
                return s1;
            }
        } catch (Exception exception1) {
        }
        encode = "UTF-8";
        try {
            if (str.equals(new String(str.getBytes(encode), encode))) {
                String s2 = encode;
                return s2;
            }
        } catch (Exception exception2) {
        }
        encode = "GBK";
        try {
            if (str.equals(new String(str.getBytes(encode), encode))) {
                String s3 = encode;
                return s3;
            }
        } catch (Exception exception3) {
        }
        return "";
    }
    /**
     * 将一段错误解码的字符串重新解码
     */
    public static String convertEncodingFormat(String str, String formatFrom, String formatTo) {
        String result = null;
        if (!(str == null || str.length() == 0)) {
            try {
                result = new String(str.getBytes(formatFrom), formatTo);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return result;
    }

    /**
     * convertEncodingFormat(String str, String formatFrom, String formatTo)方法的重载方法
     */
    public static String convertEncodingFormat(String str, String formatTo) {
        String formatFrom = StringProcessor.getEncoding(str);
        return StringProcessor.convertEncodingFormat(str, formatFrom, formatTo);
    }
}
