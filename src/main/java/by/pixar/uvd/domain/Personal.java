package by.pixar.uvd.domain;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


@Entity
@Table(name = "personal")
public class Personal extends BaseEntity {

    // ID
    // ID
   /* @Id
    @Column(name = "ID")
    @GeneratedValue
    private Integer id;
*/
    //'Фамилия'
    @NotBlank(message = "Введите фамилию")
    @Column(name = "LASTNAME")
    private String lastName;

    //'Имя'
    @NotBlank(message = "Введите имя")
    @Column(name = "FIRSTNAME")
    private String firstName;

    //'Отчество'
    @NotBlank(message = "Введите отчество")
    @Column(name = "SECONDNAME")
    private String secondName;

    //'Личный номер'
    @NotBlank(message = "Введите личнчый номер")
    @Column(name = "PERSONALNUMBER")
    private String personalNumber;


    //'Звание'
    @NotBlank(message = "Введите звание")

    @Column(name = "RANK")
    private String rank;


    //'Дата рождения'


    @Column(name = "BIRTHDAY")
    private Date birthday;

    @Pattern(message = "Неверный формат", regexp = "[0-9][0-9][ \\f\\n\\r\\t\\v][0-9][0-9][ \\f\\n\\r\\t\\v][0-9][0-9][0-9][0-9]")
    //  @DateTimeFormat(style = "S-")
    @Column(name = "STRBIRTHDAY")
    private String strBirthday;

    //Место рождения'
    @NotBlank(message = "Введите место")
    @Column(name = "PLACEOFBORN")
    private String placeOfBorn;

    //'Образование'
    @NotBlank(message = "Введите образование")
    @Column(name = "EDUCATION")
    private String education;

    //'Окончил'
    @NotBlank(message = "Введите заведение")
    @Column(name = "GRADUATED")
    private String graduated;

    //'Специальность'
    @NotBlank(message = "Введите специальность")
    @Column(name = "SPECIALITY")
    private String speciality;

    //'Учёная степень'
    @NotBlank(message = "Введите учёную степень")
    @Column(name = "DEGREE")
    private String degree;

    //'Иностранные языки'
    @NotBlank(message = "Введите владение иностранными языками")
    @Column(name = "FOREIGNLANG")
    private String foreigLang;


    //'Был ли за границей'
    @NotBlank(message = "Введите был ли за границей")
    @Column(name = "ABROAD")
    private String abroad;

    //'Взыскания'
    @NotBlank(message = "Введите взыскания")
    @Column(name = "FORECLOSURE")
    private String foreclosure;

    //'Участие в выборочных органах'
    @NotBlank(message = "Введите участие в выборочных органах")
    @Column(name = "ELECTION")
    private String election;

    //'Имеет ли госнаграды'
    @NotBlank(message = "Введите имеет ли госнаграды")
    @Column(name = "STATEAWARDS")
    private String stateAwards;

    @NotBlank(message = "Введите место службы")
    @Column(name = "CALLOFDUTY")
    private String callOfDuty;

   /* //'С какого времени в ВС, КГБ'
    @NotBlank(message = "Введите дату начала службы")
    @Column(name = "STMILITSERV")
    private Date stMilitSer;

    //'По какое время в ВС, КГБ'
    @NotBlank(message = "Введите дату окончания службы")
    @Column(name = "FNMILITSERV")
    private Date fnMilitSer;*/

    @NotBlank(message = "Введите увольнение")
    @Column(name = "FIRED")
    private String fired;

    // Место работы
    @NotBlank(message = "Введите место работы")
    @Column(name = "WORKPLACE")
    private String workPlace;

    @Column(name = "EDITED")
    private Date edited;

    //@ManyToOne
    @Column(name = "EDITEDBY")
    private String editedBy;

    @Column(name = "CREATED")
    private Date created;



    @ManyToOne
    @JoinColumn(name = "ROVDID")
    private Rovd rovd;

    @ManyToOne
    @JoinColumn(name = "CREATEDBY")
    private Users users;




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
            this.birthday = dateFormat.parse(date);
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
        setBirthday(strBirthday);
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



    public String getPersonalNumber() {
        return personalNumber;
    }

    public void setPersonalNumber(String personalNumber) {
        this.personalNumber = personalNumber;
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

    public String getCallOfDuty() {
        return callOfDuty;
    }

    public void setCallOfDuty(String callOfDuty) {
        this.callOfDuty = callOfDuty;
    }

    public String getFired() {
        return fired;
    }

    public void setFired(String fired) {
        this.fired = fired;
    }

    public String getWorkPlace() {
        return workPlace;
    }

    public void setWorkPlace(String workPlace) {
        this.workPlace = workPlace;
    }

    public Rovd getRovd() {
        return rovd;
    }

    public void setRovd(Rovd rovd) {
        this.rovd = rovd;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public String getEdited() {

        String date ="-";
        DateFormat dateFormat = new SimpleDateFormat("dd MM yyyy hh:mm:ss");
        if (edited!=null)
        date = dateFormat.format(edited);
        return date;
    }

    public void setEdited(Date edited) {
        this.edited = edited;
    }

    public String getEditedBy() {
        return editedBy;
    }

    public void setEditedBy(String editedBy) {
        this.editedBy = editedBy;
    }

    public String getCreated() {

        String date ="-";
        DateFormat dateFormat = new SimpleDateFormat("dd MM yyyy hh:mm:ss");
        if (created!=null)
            date = dateFormat.format(created);
        return date;
    }

    public void setCreated(Date created) {
        this.created = created;
    }
}
