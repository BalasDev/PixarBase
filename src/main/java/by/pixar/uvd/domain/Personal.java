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

    //'Р¤Р°РјРёР»РёСЏ'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ С„Р°РјРёР»РёСЋ")
    @Column(name = "LASTNAME")
    private String lastName;

    //'Р�РјСЏ'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ РёРјСЏ")
    @Column(name = "FIRSTNAME")
    private String firstName;

    //'РћС‚С‡РµСЃС‚РІРѕ'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ РѕС‚С‡РµСЃС‚РІРѕ")
    @Column(name = "SECONDNAME")
    private String secondName;

    //'Р›РёС‡РЅС‹Р№ РЅРѕРјРµСЂ'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ Р»РёС‡РЅС‡С‹Р№ РЅРѕРјРµСЂ")
    @Column(name = "PERSONALNUMBER")
    private String personalNumber;


    //'Р—РІР°РЅРёРµ'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ Р·РІР°РЅРёРµ")

    @Column(name = "RANK")
    private String rank;

    //'Р”Р°С‚Р° СЂРѕР¶РґРµРЅРёСЏ'
    // @NotBlank(message = "Р’РІРµРґРёС‚Рµ РґР°С‚Сѓ")
    //@DateTimeFormat(style = "S-")
    @Column(name = "BIRTHDAY")
    private Date birthday;

    @NotBlank(message = "Р’РІРµРґРёС‚Рµ РґР°С‚Сѓ")
    //  @DateTimeFormat(style = "S-")
    @Column(name = "STRBIRTHDAY")
    private String strBirthday;

    //РњРµСЃС‚Рѕ СЂРѕР¶РґРµРЅРёСЏ'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ РјРµСЃС‚Рѕ")
    @Column(name = "PLACEOFBORN")
    private String placeOfBorn;

    //'РћР±СЂР°Р·РѕРІР°РЅРёРµ'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ РѕР±СЂР°Р·РѕРІР°РЅРёРµ")
    @Column(name = "EDUCATION")
    private String education;

    //'РћРєРѕРЅС‡РёР»'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ Р·Р°РІРµРґРµРЅРёРµ")
    @Column(name = "GRADUATED")
    private String graduated;

    //'РЎРїРµС†РёР°Р»СЊРЅРѕСЃС‚СЊ'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ СЃРїРµС†РёР°Р»СЊРЅРѕСЃС‚СЊ")
    @Column(name = "SPECIALITY")
    private String speciality;

    //'РЈС‡С‘РЅР°СЏ СЃС‚РµРїРµРЅСЊ'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ СЃРїРµС†РёР°Р»СЊРЅРѕСЃС‚СЊ")
    @Column(name = "DEGREE")
    private String degree;

    //'Р�РЅРѕСЃС‚СЂР°РЅРЅС‹Рµ СЏР·С‹РєРё'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ СЃРїРµС†РёР°Р»СЊРЅРѕСЃС‚СЊ")
    @Column(name = "FOREIGNLANG")
    private String foreigLang;

    /*    //'РЎ РєР°РєРѕРіРѕ РІСЂРµРјРµРЅРё РІ Р’РЎ, РљР“Р‘'
        @Column(name = "STMILITSERV")
        private Date stMilitSer;

        //'РџРѕ РєР°РєРѕРµ РІСЂРµРјСЏ РІ Р’РЎ, РљР“Р‘'
        @Column(name = "FNMILITSERV")
        private Date fnMilitSer;
    */
    //'Р‘С‹Р» Р»Рё Р·Р° РіСЂР°РЅРёС†РµР№'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ Р±С‹Р» Р»Рё Р·Р° РіСЂР°РЅРёС†РµР№")
    @Column(name = "ABROAD")
    private String abroad;

    //'Р’Р·С‹СЃРєР°РЅРёСЏ'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ РІР·С‹СЃРєР°РЅРёСЏ")
    @Column(name = "FORECLOSURE")
    private String foreclosure;

    //'РЈС‡Р°СЃС‚РёРµ РІ РІС‹Р±РѕСЂРѕС‡РЅС‹С… РѕСЂРіР°РЅР°С…'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ СѓС‡Р°СЃС‚РёРµ РІ РІС‹Р±РѕСЂРѕС‡РЅС‹С… РѕСЂРіР°РЅР°С…")
    @Column(name = "ELECTION")
    private String election;

    //'Р�РјРµРµС‚ Р»Рё РіРѕСЃРЅР°РіСЂР°РґС‹'
    @NotBlank(message = "Р’РІРµРґРёС‚Рµ РёРјРµРµС‚ Р»Рё РіРѕСЃРЅР°РіСЂР°РґС‹")
    @Column(name = "STATEAWARDS")
    private String stateAwards;

    @NotBlank(message = "Введите место службы")
    @Column(name = "CALLOFDUTY")
    private String callOfDuty;

    @NotBlank(message = "Введите увольнение")
    @Column(name = "FIRED")
    private String fired;


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


}
