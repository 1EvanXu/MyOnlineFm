package fm.utils;

import java.util.HashMap;
import java.util.Map;

public class ConvertUtils {

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
        languageMap.put("Chinese", "华语");
        languageMap.put("Cantonese", "粤语");
        languageMap.put("English", "英语");
        languageMap.put("Japanese", "日语");
        languageMap.put("Korean", "韩语");
        return languageMap;
    }

}
