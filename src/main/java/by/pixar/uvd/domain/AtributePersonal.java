package by.pixar.uvd.domain;

public enum AtributePersonal {



    FIRSTNAME("���","firstName") ,
    LASTNAME("�������","lastname"),
    SECONDNAME("�������","lastname"),
    RANK("������","rank"),
    PLACEOFBORN("����� ��������","placeOfBorn"),
    EDUCATION("�����������","education"),
    GRADUATED("�������","graduated"),
    SPECIALITY("�������������","speciality"),
    DEGREE("������ �������","degree"),
    FOREIGNLANG("����������� �����","foreigLang"),
    ABROAD("��� �� �� ��������","abroad"),
    FORECLOSURE("���������","foreclosure"),
    STATEAWARDS("����� �� ����������","stateAwards");

    private String view;
    private String field;
     AtributePersonal(){

    }

     AtributePersonal(String view, String field) {
        this.view = view;
        this.field = field;
    }

    public String getView() {
        return view;

    }

    public String getField() {
        return field;
    }


}
