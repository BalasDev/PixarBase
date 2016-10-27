package by.pixar.uvd.domain;


import java.util.ArrayList;
import java.util.List;

public class FormFields {

    private  List<FormBuilder> fields = new ArrayList<FormBuilder>();
    public List<FormBuilder> getFields() {
        setFields();
        return fields;
    }
    public void setFields() {
        fields.add(new FormBuilder("Фамилия","lastName","1"));
        fields.add(new FormBuilder("Имя","firstName","1"));
        fields.add(new FormBuilder("Отчество","secondName","1"));
        fields.add(new FormBuilder("Личный номер","personalNumber","1"));
        fields.add(new FormBuilder("Звание","rank","1"));
        fields.add(new FormBuilder("Дата присвоения звания, класс госслужбы","dateOfGotRank","1","01 01 2015"));
        fields.add(new FormBuilder("Дата присвоения звания","dateOfGotRank","1","01 01 2015"));
        fields.add(new FormBuilder("Классность","classLevel","1"));
        fields.add(new FormBuilder("Дата присвоения классности","classLevelGotDate","1","01 01 2015"));
        fields.add(new FormBuilder("Категория сотрудника","category","1"));
        fields.add(new FormBuilder("Службы ОВД","serviceOfOVD","1"));
        fields.add(new FormBuilder("Подслужбы ОВД","underServiceOfOVD","1"));
        fields.add(new FormBuilder("РОВД","rovd","1"));
        fields.add(new FormBuilder("Место работы", "workPlace", "2"));
        fields.add(new FormBuilder("Служба в ОВД","callOfOVD","1","01 01 2015"));
        fields.add(new FormBuilder("Служба в армии","callOfDuty","1"));
        fields.add(new FormBuilder("Дата рождения","birthday","1","01 01 2015"));
        fields.add(new FormBuilder("Место рождения","placeOfBorn","1"));
        fields.add(new FormBuilder("Образование","education","2"));
        fields.add(new FormBuilder("Окончил","graduated","1"));
        fields.add(new FormBuilder("Специальность","speciality","1"));
        fields.add(new FormBuilder("Учёная степень","degree","1"));
        fields.add(new FormBuilder("Иностранные языки","foreigLang","1"));
        fields.add(new FormBuilder("Был ли за границей","abroad","1"));
        fields.add(new FormBuilder("Взыскания","foreclosure","2"));
        fields.add(new FormBuilder("Участие в выборочных органах","election","1"));
        fields.add(new FormBuilder("Имеет ли госнаграды","stateAwards","1"));
        fields.add(new FormBuilder("Пункт увольнения","fired","1"));
        fields.add(new FormBuilder("Дата окончания контракта","contract","1","01 01 2015"));
        fields.add(new FormBuilder("Дата аттестации","dateOfCertification","1","01 01 2015"));


    }
}
