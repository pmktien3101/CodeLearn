package hd.fe.com.controller;

import hd.fe.com.dto.response.CourseResponse;
import hd.fe.com.mapper.CourseMapper;
import hd.fe.com.entity.Course;
import hd.fe.com.repository.IAccountRepository;
import hd.fe.com.repository.ICourseRepository;
import hd.fe.com.repository.ITopicRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/course")
@RequiredArgsConstructor
@CrossOrigin(origins = "*")
public class CourseController {

    private  final ICourseRepository iCourseRepository;
    private  final ITopicRepository iTopicRepository;
    private  final IAccountRepository iAccountRepository;

    // get all courses
    @GetMapping ("/get-all")
    public ResponseEntity<List<CourseResponse>> getAllCourse() {
        List<Course> courseList = iCourseRepository.findAll();
        return ResponseEntity.ok(CourseMapper.mapToListCourseDTO(courseList));
    }

}
