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
@Table(name = "course")
public class Course {
    @Id
    @Column(name = "course_uuid", nullable = false, length = 36)
    @GeneratedValue(strategy = GenerationType.UUID)
    private String courseUuid;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "account_uuid", nullable = false)
    private Account accountUuid;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "topic_uuid", nullable = false)
    private Topic topicUuid;

    @Column(name = "name", length = 40)
    private String name;

    @Column(name = "description", length = 100)
    private String description;

    @Column(name = "start_date")
    private Instant startDate;

    @Column(name = "end_date")
    private Instant endDate;

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

    @OneToMany(mappedBy = "courseUuid")
    private Set<Category> categories = new LinkedHashSet<>();

    @OneToMany(mappedBy = "courseUuid")
    private Set<DdCourseStatus> ddCourseStatuses = new LinkedHashSet<>();

    @OneToMany(mappedBy = "courseUuid")
    private Set<Enrollment> enrollments = new LinkedHashSet<>();

    @OneToMany(mappedBy = "courseUuid")
    private Set<Submission> submissions = new LinkedHashSet<>();

}