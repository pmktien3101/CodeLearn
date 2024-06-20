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
@Table(name = "user")
public class User {
    @Id
    @Column(name = "user_uuid", nullable = false, length = 36)
    @GeneratedValue(strategy = GenerationType.UUID)
    private String userUuid;

    @Column(name = "first_name", length = 20)
    private String firstName;

    @Column(name = "middle_name", length = 20)
    private String middleName;

    @Column(name = "last_name", length = 20)
    private String lastName;

    @Column(name = "avatar", length = 100)
    private String avatar;

    @Column(name = "email", length = 40)
    private String email;

    @Column(name = "birthday")
    private Instant birthday;

    @Column(name = "address", length = 40)
    private String address;

    @Column(name = "numberphone", length = 10)
    private String numberphone;

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

    @OneToOne(mappedBy = "userUuid")
    private Account accounts;

    @OneToMany(mappedBy = "userUuid")
    private Set<UsergroupUser> usergroupUsers = new LinkedHashSet<>();

}