package hd.fe.com.pojo;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.LinkedHashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "submission")
public class Submission {
    @Id
    @Column(name = "submission_uuid", nullable = false, length = 36)
    @GeneratedValue(strategy = GenerationType.UUID)
    private String submissionUuid;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "account_uuid", nullable = false)
    private Account accountUuid;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "question_uuid", nullable = false)
    private Question questionUuid;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "course_uuid", nullable = false)
    private Course courseUuid;

    @Column(name = "submission_time")
    private Instant submissionTime;

    @Column(name = "file", length = 100)
    private String file;

    @Column(name = "mark", precision = 3, scale = 1)
    private BigDecimal mark;

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

    @Column(name = "last_modified_user",length = 40)
    private String lastModifiedUser;

    @OneToMany(mappedBy = "submissionUuid")
    private Set<Assessment> assessments = new LinkedHashSet<>();

}