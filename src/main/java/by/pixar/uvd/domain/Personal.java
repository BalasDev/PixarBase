package by.pixar.uvd.domain;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
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
    @NotBlank (message="Введите фамилию")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))
    @Column(name = "LASTNAME")
    private String lastName;

    //'Имя'
    @NotBlank (message="Введите имя")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))
    @Column(name = "FIRSTNAME")
    private String firstName;

    //'Отчество'
    @NotBlank (message = "Введите отчество")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))
    @Column(name = "SECONDNAME")
    private String secondName;


    //'Звание'
    @NotBlank (message = "Введите звание")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))
    @Column(name = "RANK")
    private String rank ;

    //'Дата рождения'
    @NotNull(message = "Введите дату")
   // @DateTimeFormat(style = "S-")
    @Column(name = "BIRTHDAY")
    private Date birthday = new java.util.Date(new java.util.Date().getTime());

    //'Место рождения'
    @NotBlank (message = "Введите место")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))
    @Column(name = "PLACEOFBORN")
    private String placeOfBorn;

    //'Образование'
    @NotBlank (message = "Введите оюразование")
    @Pattern(regexp = "[а-яА-я]*", message = ("Только русские буквы"))
    @Column(name = "EDUCATION")
    private String education;

    //'Окончил'

    @Column(name = "GRADUATED")
    private String graduated;

    //'Специальность'
    @Column(name = "SPECIALITY")
    private String speciality;


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

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPlaceOfBorn() {
        return placeOfBorn;
    }

    public void setPlaceOfBorn(String placeOfBorn) {
        this.placeOfBorn = placeOfBorn;
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
