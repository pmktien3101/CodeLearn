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
@Table(name = "assessment")
public class Assessment {
    @Id
    @Column(name = "assessment_uuid", nullable = false, length = 36)
    @GeneratedValue(strategy = GenerationType.UUID)
    private String assessmentUuid;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "submission_uuid", nullable = false)
    private Submission submissionUuid;

    @Column(name = "assessment_number")
    private Integer assessmentNumber;

    @Column(name = "mark", precision = 5, scale = 2)
    private BigDecimal mark;

    @Column(name = "assessment_date")
    private Instant assessmentDate;

    @Column(name = "feedback", length = 40)
    private String feedback;

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

    @OneToMany(mappedBy = "assessmentUuid")
    private Set<DdAssessmentStatus> ddAssessmentStatuses = new LinkedHashSet<>();

}