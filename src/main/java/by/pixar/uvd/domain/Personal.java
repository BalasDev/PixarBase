package by.pixar.uvd.domain;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "personal")
public class Personal {

    // ID
    @Id
    @Column(name = "ID")
    @GeneratedValue
    private Integer id;

    //'�������'

    // @Pattern(regexp = "[�-��-�]")
    @NotBlank (message="Vvedite familiu")
    @Column(name = "LASTNAME")
    private String lastName;

    //'���'
    @NotBlank (message="Vvedite name")
    @Column(name = "FIRSTNAME")
    private String firstName;

    //'��������'
    @NotBlank (message = "Vvedite otchestvo")
//    @NotBlank (message="������� ��������")
    @Column(name = "SECONDNAME")
    private String secondName;

    /*
    //'������'
    @Column(name = "RANK")
    private String rank ;

    //'���� ��������'
    @Column(name = "BIRTHDAY")
    private Date birthday;

    //'����� ��������'
    @Column(name = "PLACEOFBORN")
    private String placeOfBorn;

    //'�����������'
    @Column(name = "EDUCATION")
    private String education;

    //'�������'
    @Column(name = "GRADUATED")
    private String graduated;

    //'�������������'
    @Column(name = "SPECIALITY")
    private String speciality;

*/
    // Getters and setters
/*
    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }
*/
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
/*
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
*/
}
