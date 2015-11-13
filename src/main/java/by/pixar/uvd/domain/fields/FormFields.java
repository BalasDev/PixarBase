package by.pixar.uvd.domain.fields;


import java.util.ArrayList;
import java.util.List;

public class FormFields {

    private  List<FormBuilder> fields = new ArrayList<FormBuilder>();
    public List<FormBuilder> getFields() {
        setFields();
        return fields;
    }

    public void setFields() {
        fields.add(new FormBuilder("�������","lastName","1"));
        fields.add(new FormBuilder("���","firstName","1"));
        fields.add(new FormBuilder("��������","secondName","1"));
        fields.add(new FormBuilder("������ �����","personalNumber","1"));
        fields.add(new FormBuilder("������","rank","1"));
        fields.add(new FormBuilder("����","rovd","1"));
        fields.add(new FormBuilder("����� ������", "workPlace", "2"));
        fields.add(new FormBuilder("������ � �����","callOfDuty","1"));
        fields.add(new FormBuilder("���� ��������","strBirthday","1"));
        fields.add(new FormBuilder("����� ��������","placeOfBorn","1"));
        fields.add(new FormBuilder("�����������","education","2"));
        fields.add(new FormBuilder("�������","graduated","1"));
        fields.add(new FormBuilder("�������������","speciality","1"));
        fields.add(new FormBuilder("������ �������","degree","1"));
        fields.add(new FormBuilder("����������� �����","foreigLang","1"));
        fields.add(new FormBuilder("��� �� �� ��������","abroad","1"));
        fields.add(new FormBuilder("���������","foreclosure","1"));
        fields.add(new FormBuilder("������� � ���������� �������","election","1"));
        fields.add(new FormBuilder("����� �� ����������","stateAwards","1"));
        fields.add(new FormBuilder("����� ����������","fired","1"));

    }
}
