package hd.fe.com.mapper;

import hd.fe.com.dto.response.CourseResponse;
import hd.fe.com.entity.Course;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class CourseMapper {


    public static List<CourseResponse> mapToListCourseDTO(List<Course> courseList) {
        List<CourseResponse> courseDTOList = new ArrayList<>();

        for (Course course : courseList) {
            CourseResponse courseDTO = new CourseResponse();
            courseDTO.setCourseId(course.getCourseUuid());
            courseDTO.setAccountId(course.getAccountUuid().getAccountUuid());
            courseDTO.setTopicId(course.getTopicUuid().getTopicUuid());
            courseDTO.setName(course.getName());
            courseDTO.setDescription(course.getDescription());
            courseDTO.setStartDate(course.getStartDate());
            courseDTO.setEndDate(course.getEndDate());
            courseDTO.setInactive(course.getInactive());
            courseDTO.setReadonly(course.getReadonly());
            courseDTO.setCreatedUser(course.getCreatedUser());
            courseDTO.setCreatedDate(course.getCreatedDate());
            courseDTO.setLastModifiedDate(course.getLastModifiedDate());
            courseDTO.setLastModifiedUser(course.getLastModifiedUser());
            courseDTOList.add(courseDTO);
        }
        return courseDTOList;
    }

}
