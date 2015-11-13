package by.pixar.uvd.domain;

public enum AtributePersonal {



    FIRSTNAME("Имя","firstName","1","") ,
    LASTNAME("Фамилия","lastName","1",""),
    SECONDNAME("Отчество","secondName","1","");//,
   /* PERSONALNUMBER("Личный номер","personalNumber"),
    RANK("Звание","rank"),
    ROVD("РОВД","rovd"),
    PLACEOFBORN("Место рождения","placeOfBorn"),
    EDUCATION("Образование","education"),
    GRADUATED("Окончил","graduated"),
    SPECIALITY("Специальность","speciality"),
    DEGREE("Учёная степень","degree"),
    FOREIGNLANG("Иностранные языки","foreigLang"),
    ABROAD("Был ли за границей","abroad"),
    FORECLOSURE("Взыскания","foreclosure"),
    ELECTION("Участие в выборочных органах","election"),
    STATEAWARDS("Имеет ли госнаграды","stateAwards"),
    CALLOFDUTY("Место службы","callOfDuty"),
    WORKPLACE("Место работы","workPlace"),
    FIRED("Пункт увольнения","fired");*/
    private String view;
    private String field;
    private String row;
    private String value;

     AtributePersonal(){

    }

    AtributePersonal(String view, String field, String row, String value) {
        this.view = view;
        this.field = field;
        this.row = row;
        this.value = value;
    }

    public String getView() {
        return view;
    }

    public String getField() {
        return field;
    }

    public String getRow() {
        return row;
    }

    public String getValue() {
        return value;
    }
}
