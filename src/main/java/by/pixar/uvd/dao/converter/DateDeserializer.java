package by.pixar.uvd.dao.converter;


import org.springframework.core.convert.converter.Converter;

import java.text.SimpleDateFormat;
import java.sql.Date;

public class DateDeserializer implements Converter<Date,String> {


    @Override
    public String convert(Date s) {
        return new SimpleDateFormat("dd MM yyyy").format(s);
    }
}
