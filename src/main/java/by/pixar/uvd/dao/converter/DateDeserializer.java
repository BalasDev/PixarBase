package by.pixar.uvd.dao.converter;


import org.springframework.core.convert.converter.Converter;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateDeserializer implements Converter<Date,String> {
    @Override
    public String convert(Date date) {
        DateFormat df = new SimpleDateFormat("dd MM yyyy");
        String sd = df.format(date);
        return sd;
    }
}
