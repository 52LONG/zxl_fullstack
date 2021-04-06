package utils;

import org.junit.Test;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {


    public static Timestamp string_to_timestamp_hh(String s) throws ParseException {
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = sf.parse(s);
        Timestamp ts=new Timestamp(date.getTime());
        return ts;
    }

    public static Timestamp string_to_timestamp(String s) throws ParseException {
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
        Date date = sf.parse(s);
        Timestamp ts=new Timestamp(date.getTime());
        return ts;
    }

    public static Date stringtodate(String str) throws ParseException {
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
        Date parse = sf.parse(str);
        return parse;
    }

    public static String datetostring(Date date){
        SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
        String format = sf.format(new Date());
        return format;
    }

    public static Timestamp datatotimestamp(Date date){
        return new Timestamp(date.getTime());
    }

}
