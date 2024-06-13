package hd.fe.com.pojo;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;
import java.util.LinkedHashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "topic")
public class Topic {
    @Id
    @Column(name = "topic_uuid", nullable = false, length = 36)
    @GeneratedValue(strategy = GenerationType.UUID)
    private String topicUuid;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "account_uuid", nullable = false)
    private Account accountUuid;

    @Column(name = "name", nullable = false, length = 100)
    private String name;

    @Column(name = "type", length = 20)
    private String type;

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

//    @OneToMany(mappedBy = "topicUuid")
//    private Set<Course> courses = new LinkedHashSet<>();

    @OneToMany(mappedBy = "topicUuid")
    private Set<Question> questions = new LinkedHashSet<>();

}