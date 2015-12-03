package by.pixar.uvd.domain;

import javax.persistence.*;


@Entity
@Table(name="USERS")
public class Users extends BaseEntity {

    @Column(name = "FIRSTNAME")
    private String firstName;

    @Column(name = "SECONDNAME")
    private String secondName;

    @Column(name = "LASTNAME")
    private String lastName;

    @Column(name = "LOGIN")
    private String login;

    @Column(name = "PASSWORD")
    private String password;

    @Column(name = "IP")
    private String ip;

    @ManyToOne//(fetch = FetchType.LAZY)
   // (cascade=CascadeType.ALL)
    @JoinColumn(name = "ROLEID")
    private Roles role;

    @ManyToOne
    @JoinColumn(name = "ROVDID")
    private Rovd rovd;



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

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Roles getRole() {
        return role;
    }

    public void setRole(Roles role) {
        this.role = role;
    }

    public Rovd getRovd() {
        return rovd;
    }

    public void setRovd(Rovd rovd) {
        this.rovd = rovd;
    }
}
