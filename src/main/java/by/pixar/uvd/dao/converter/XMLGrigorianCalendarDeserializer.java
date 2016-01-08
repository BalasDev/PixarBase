package by.pixar.uvd.dao.converter;


import org.springframework.core.convert.converter.Converter;

import javax.xml.datatype.XMLGregorianCalendar;
import java.util.Date;

public class XMLGrigorianCalendarDeserializer implements Converter<XMLGregorianCalendar,Date> {
    @Override
    public Date convert(XMLGregorianCalendar s) {
        return s.toGregorianCalendar().getTime();
    }
}
