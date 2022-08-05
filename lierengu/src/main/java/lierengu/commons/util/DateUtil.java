package lierengu.commons.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    public static String formatDateTime(Date date){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateStr = dateFormat.format(date);
        return dateStr;
    }

    public static String formatDate(Date date){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String dateStr = dateFormat.format(date);
        return dateStr;
    }
}
