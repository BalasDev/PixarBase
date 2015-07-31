package by.pixar.uvd.domain;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


@Entity
@Table(name = "personal")
public class Personal {

    // ID
    @Id
    @Column(name = "ID")
    @GeneratedValue
    private Integer id;

    //'Фамилия'
    /*@NotBlank (message="Введите фамилию")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))*/
    @Column(name = "LASTNAME")
    private String lastName;

    //'Имя'
   /* @NotBlank (message="Введите имя")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))*/
    @Column(name = "FIRSTNAME")
    private String firstName;

    //'Отчество'
    /*@NotBlank (message = "Введите отчество")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))*/
    @Column(name = "SECONDNAME")
    private String secondName;


    //'Звание'
   /* @NotBlank (message = "Введите звание")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))*/
    @Column(name = "RANK")
    private String rank ;

   //'Дата рождения'
   // @NotNull(message = "Введите дату")
   // @DateTimeFormat(style = "S-")
    @Column(name = "BIRTHDAY")
    private Date birthday;

    //@NotBlank(message = "Введите дату")
    // @DateTimeFormat(style = "S-")
    @Column(name = "STRBIRTHDAY")
    private  String strBirthday;

    //Место рождения'
   /* @NotBlank (message = "Введите место")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))*/
    @Column(name = "PLACEOFBORN")
    private String placeOfBorn;

    //'Образование'
   /* @NotBlank (message = "Введите образование")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))*/
    @Column(name = "EDUCATION")
    private String education;

    //'Окончил'
    @Column(name = "GRADUATED")
    private String graduated;

    //'Специальность'
   /* @NotBlank (message = "Введите специальность")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))*/
    @Column(name = "SPECIALITY")
    private String speciality;

    //'Учёная степень'
  /*  @NotBlank (message = "Введите специальность")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))*/
    @Column(name = "DEGREE")
    private String degree;

    //'Иностранные языки'
    /*@NotBlank (message = "Введите специальность")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))*/
    @Column(name = "FOREIGNLANG")
    private String foreigLang;

/*    //'С какого времени в ВС, КГБ'
    @Column(name = "STMILITSERV")
    private Date stMilitSer;

    //'По какое время в ВС, КГБ'
    @Column(name = "FNMILITSERV")
    private Date fnMilitSer;
*/
    //'Был ли за границей'
    /*@NotBlank (message = "Введите был ли за границей")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))*/
    @Column(name = "ABROAD")
    private String abroad;

    //'Взыскания'
   // @NotBlank (message = "Введите взыскания")
    @Column(name = "FORECLOSURE")
  //  @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))
    private String foreclosure;

    //'Участие в выборочных органах'
  //  @NotBlank (message = "Введите участие в выборочных органах")
  //  @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))
    @Column(name = "ELECTION")
    private String election;

    //'Имеет ли госнаграды'
 //   @NotBlank (message = "Введите имеет ли госнаграды")
 //   @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))
    @Column(name = "STATEAWARDS")
    private String stateAwards;

    // Getters and setters

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }


    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(String date) {

        System.out.println(date);
        DateFormat dateFormat = new SimpleDateFormat("dd MM yyyy");
        try {
            this.birthday =  dateFormat.parse(date);
            System.out.println(this.birthday);
        } catch (ParseException e) {
            e.printStackTrace();
        }

    }

    public String getStrBirthday() {
        return strBirthday;
    }

    public void setStrBirthday(String strBirthday) {
        this.strBirthday = strBirthday;
    }

    public String getPlaceOfBorn() {
        return placeOfBorn;
    }

    public void setPlaceOfBorn(String placeOfBorn) {
        this.placeOfBorn = placeOfBorn;
    }

    public String getDegree() {
        return degree;
    }

    public String getForeigLang() {
        return foreigLang;
    }

    public void setForeigLang(String foreigLang) {
        this.foreigLang = foreigLang;
    }
/*
    public Date getStMilitSer() {
        return stMilitSer;
    }

    public void setStMilitSer(Date stMilitSer) {
        this.stMilitSer = stMilitSer;
    }

    public Date getFnMilitSer() {
        return fnMilitSer;
    }

    public void setFnMilitSer(Date fnMilitSer) {
        this.fnMilitSer = fnMilitSer;
    }
*/
    public String getAbroad() {
        return abroad;
    }

    public void setAbroad(String abroad) {
        this.abroad = abroad;
    }

    public String getForeclosure() {
        return foreclosure;
    }

    public void setForeclosure(String foreclosure) {
        this.foreclosure = foreclosure;
    }

    public String getElection() {
        return election;
    }

    public void setElection(String election) {
        this.election = election;
    }

    public String getStateAwards() {
        return stateAwards;
    }

    public void setStateAwards(String stateAwards) {
        this.stateAwards = stateAwards;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getGraduated() {
        return graduated;
    }

    public void setGraduated(String graduated) {
        this.graduated = graduated;
    }

}
