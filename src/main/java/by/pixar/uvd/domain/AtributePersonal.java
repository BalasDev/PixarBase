package by.pixar.uvd.domain;

public enum AtributePersonal {



    FIRSTNAME("Имя","firstName") ,
    LASTNAME("Фамилия","lastName"),
    SECONDNAME("Отчество","secondName"),
    PERSONALNUMBER("Личный номер","personalNumber"),
    RANK("Звание","rank"),
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
    FIRED("Пункт увольнения","fired");
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
