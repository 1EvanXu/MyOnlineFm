package fm.utils;

import org.springframework.beans.factory.support.DefaultListableBeanFactory;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Test {
    public static void main(String[] args){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
    }



}
