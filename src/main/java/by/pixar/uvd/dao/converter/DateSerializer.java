package by.pixar.uvd.dao.converter;


import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateSerializer implements Converter<String,Date>{
    @Override
    public Date convert(String s) {
        SimpleDateFormat formatter = new SimpleDateFormat("dd MM yyyy");

        try {
            Date date = formatter.parse(s);
            return date;
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }

    }
}
