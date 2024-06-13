package hd.fe.com.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.Instant;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CourseDTO {
    private String courseId;
    private String accountId;
    private String topicId;
    private String name;
    private String description;
    private Instant startDate;
    private Instant endDate;
    private Boolean inactive;
    private Boolean readonly;
    private String createdUser;
    private Instant createdDate;
    private Instant lastModifiedDate;
    private String lastModifiedUser;
}
