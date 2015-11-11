package by.pixar.uvd.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "ROLES")
public class Roles extends BaseEntity  {


    @Column(name = "NAME")
    private String name;

   /* @OneToMany(fetch = FetchType.LAZY*//*, mappedBy = "role"*//*)
    private Set<Roles> users = new HashSet<Roles>();*/

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /*public Set<Roles> getUsers() {
        return users;
    }

    public void setUsers(Set<Roles> users) {
        this.users = users;
    }*/
}
