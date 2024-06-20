package hd.fe.com.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;
import java.util.LinkedHashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "usergroup")
public class Usergroup {
    @Id
    @Column(name = "usergroup_uuid", nullable = false, length = 36)
    @GeneratedValue(strategy = GenerationType.UUID)
    private String usergroupUuid;

    @Column(name = "name", nullable = false, length = 40)
    private String name;

    @Column(name = "description", length = 100)
    private String description;

    @Column(name = "inactive")
    private Boolean inactive;

    @Column(name = "readonly")
    private Boolean readonly;

    @Column(name = "created_date")
    private Instant createdDate;

    @Column(name = "created_user", length = 40)
    private String createdUser;

    @Column(name = "last_modified_date")
    private Instant lastModifiedDate;

    @Column(name = "last_modified_user", length = 40)
    private String lastModifiedUser;

    @OneToMany(mappedBy = "usergroupUuid")
    private Set<UsergroupRole> usergroupRoles = new LinkedHashSet<>();

    @OneToMany(mappedBy = "usergroupUuid")
    private Set<UsergroupUser> usergroupUsers = new LinkedHashSet<>();

}