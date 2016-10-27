package by.pixar.uvd.domain;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
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

    //Категории сотрудников
    @NotBlank(message = "Введите категорию сотрудника")
    @Column(name = "CATEGORY")
    private String category;

    //Службы ОВД
    /*@NotBlank(message = "Введите службу ОВД")
    @Column(name = "SERVICESOFOVD")
    private String servicesOfOVD;
*/


    //'Дата рождения'
    @DateTimeFormat(pattern="dd MM yyyy")
    @NotNull(message = "Введите дату рождения (дд мм гггг)")
    @Column(name = "BIRTHDAY")
    private Date birthday;

    /*@Pattern(message = "Неверный формат", regexp = "[0-9][0-9][ \\f\\n\\r\\t\\v][0-9][0-9][ \\f\\n\\r\\t\\v][0-9][0-9][0-9][0-9]")
    //  @DateTimeFormat(style = "S-")*//*
    @Column(name = "STRBIRTHDAY")
    private String strBirthday;*/

    //Место рождения
    @NotBlank(message = "Введите место рождения")
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

    // Место службы
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

    //Служба в ОВД
    @DateTimeFormat(pattern="dd MM yyyy")
    @NotNull(message = "Введите дату службы в ОВД (дд мм гггг)")
    @Column(name = "CALLOFOVD")
    private Date callOfOVD;


    //Увольнение
    @NotBlank(message = "Введите увольнение")
    @Column(name = "FIRED")
    private String fired;

    // Место работы
    @NotBlank(message = "Введите место работы")
    @Column(name = "WORKPLACE")
    private String workPlace;

    //Отредактировано когда
    @Column(name = "EDITED")
    private Date edited;

    //Отредактирвано кем
    //@ManyToOne
    @Column(name = "EDITEDBY")
    private String editedBy;

    //Создано когда
    @Column(name = "CREATED")
    private Date created;

    //Контракт
    @DateTimeFormat(pattern="dd MM yyyy")
    @NotNull(message = "Введите контракт")
    @Column(name = "CONTRACT")
    private Date contract;

    //Дата аттестации
    @DateTimeFormat(pattern="dd MM yyyy")
    @NotNull(message = "Введите дату аттестации (дд мм гггг)")
    @Column(name = "DATEOFCERTIFICATION")
    private Date dateOfCertification;

   /* @NotNull(message = "Введите дату аттестации (дд мм гггг)")*/
    @Column(name = "SERVICESOFOVD")
    private String serviceOfOVD;

    @Column(name = "UNDERSERVICESOFOVD")
    private String underServiceOfOVD;

    @Column(name = "CLASSLEVEL")
    private String classLevel;

    @DateTimeFormat(pattern="dd MM yyyy")
    @Column(name = "CLASSLEVELGOTDATE")
    private Date classLevelGotDate;

    //РОВД
    @ManyToOne
    @JoinColumn(name = "ROVDID")
    private Rovd rovd;

    //Дата присвоения звания, класс госслужбы
    @DateTimeFormat(pattern="dd MM yyyy")
    @NotNull(message = "Введите присвоения звания (дд мм гггг)")
    @Column(name = "DATEOFGOTRANK")
    private Date dateOfGotRank;

    //Создано кем
    @ManyToOne
    @JoinColumn(name = "CREATEDBY")
    @NotFound(action = NotFoundAction.IGNORE)
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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Date getBirthday()  {
        return birthday;

    }

    public void setBirthday( Date birthday) {
        this.birthday =  birthday;
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

        return formatDateAndTime(edited);
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

        return formatDateAndTime(created);
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getContract() {
        return contract;
    }

    public void setContract(Date contract) {
        this.contract = contract;
    }

    public Date getDateOfCertification() {
        return dateOfCertification;
    }

    public void setDateOfCertification(Date dateOfCertification) {
        this.dateOfCertification = dateOfCertification;
    }

    public Date getCallOfOVD() {
        return callOfOVD;
    }

    public void setCallOfOVD(Date callOfOVD) {
        this.callOfOVD = callOfOVD;
    }

    public Date getDateOfGotRank() {
        return dateOfGotRank;
    }

    public void setDateOfGotRank(Date dateOfGotRank) {
        this.dateOfGotRank = dateOfGotRank;
    }

    /* public String getServicesOfOVD() {
        return servicesOfOVD;
    }

    public void setServicesOfOVD(String servicesOfOVD) {
        this.servicesOfOVD = servicesOfOVD;
    }*/

    //Format date and time
    private String formatDateAndTime(Date date){
        String stringDate="";
        DateFormat dateFormat = new SimpleDateFormat("dd MM yyyy HH:mm:ss");
        if (date!=null)
            stringDate = dateFormat.format(date);
        return stringDate;
    }
    //Format date
    private String formatDate(Date date){
        String stringDate="";
        DateFormat dateFormat = new SimpleDateFormat("dd MM yyyy");
        if (date!=null)
            stringDate = dateFormat.format(date);
        return stringDate;
    }

    private Date formatDate(String date){
        Date d = new Date();
        DateFormat dateFormat = new SimpleDateFormat("dd MM yyyy");
        try {
            d = dateFormat.parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return d;
    }

    public String getServiceOfOVD() {
        return serviceOfOVD;
    }

    public void setServiceOfOVD(String serviceOfOVD) {
        this.serviceOfOVD = serviceOfOVD;
    }

    public String getUnderServiceOfOVD() {
        return underServiceOfOVD;
    }

    public void setUnderServiceOfOVD(String underServiceOfOVD) {
        this.underServiceOfOVD = underServiceOfOVD;
    }

    public String getClassLevel() {
        return classLevel;
    }

    public void setClassLevel(String classLevel) {
        this.classLevel = classLevel;
    }

    public Date getClassLevelGotDate() {
        return classLevelGotDate;
    }

    public void setClassLevelGotDate(Date classLevelGotDate) {
        this.classLevelGotDate = classLevelGotDate;
    }
}

