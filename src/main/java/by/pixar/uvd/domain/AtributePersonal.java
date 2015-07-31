package by.pixar.uvd.domain;

public enum AtributePersonal {



    FIRSTNAME("Имя","firstName") ,
    LASTNAME("Фамилия","lastName"),
    SECONDNAME("Отчество","secondName"),
    RANK("Звание","rank"),
    PLACEOFBORN("Место рождения","placeOfBorn"),
    EDUCATION("Образование","education"),
    GRADUATED("Окончил","graduated"),
    SPECIALITY("Специальность","speciality"),
    DEGREE("Учёная степень","degree"),
    FOREIGNLANG("Иностранные языки","foreigLang"),
    ABROAD("Был ли за границей","abroad"),
    FORECLOSURE("Взыскания","foreclosure"),
    STATEAWARDS("Имеет ли госнаграды","stateAwards");

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
