package hd.fe.com.pojo;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;

@Getter
@Setter
@Entity
@Table(name = "dd_course_status")
public class DdCourseStatus {
    @Id
    @Column(name = "code", nullable = false, length = 5)
    private String code;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "course_uuid", nullable = false)
    private Course courseUuid;

    @Column(name = "name", nullable = false, length = 50)
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "priority")
    private Byte priority;

    @Column(name = "editable")
    private Boolean editable;

    @Column(name = "created_date")
    private Instant createdDate;

    @Column(name = "created_user", length = 40)
    private String createdUser;

    @Column(name = "last_modified_date")
    private Instant lastModifiedDate;

    @Column(name = "last_modified_user", length = 40)
    private String lastModifiedUser;

    @Column(name = "inactive")
    private Boolean inactive;

    @Column(name = "readonly")
    private Boolean readonly;

}