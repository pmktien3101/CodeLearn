package hd.fe.com.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;

@Getter
@Setter
@Entity
@Table(name = "account")
public class Account {
    @Id
    @Column(name = "account_uuid", nullable = false, length = 36)
    @GeneratedValue(strategy = GenerationType.UUID)
    private String accountUuid;

    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_uuid", nullable = false)
    private User userUuid;

    @Column(name = "username", nullable = false, length = 40)
    private String username;

    @Column(name = "password", length = 100)
    private String password;

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

//    @OneToMany(mappedBy = "accountUuid")
//    private Set<Course> courses = new LinkedHashSet<>();
//
//    @OneToMany(mappedBy = "accountUuid")
//    private Set<Enrollment> enrollments = new LinkedHashSet<>();
//
//    @OneToMany(mappedBy = "accountUuid")
//    private Set<Submission> submissions = new LinkedHashSet<>();
//
//    @OneToMany(mappedBy = "accountUuid")
//    private Set<Topic> topics = new LinkedHashSet<>();

}