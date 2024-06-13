package hd.fe.com.controller;

import hd.fe.com.dto.CourseDTO;
import hd.fe.com.mapper.CourseMapper;
import hd.fe.com.pojo.Account;
import hd.fe.com.pojo.Course;
import hd.fe.com.pojo.Topic;
import hd.fe.com.repository.IAccountRepository;
import hd.fe.com.repository.ICourseRepository;
import hd.fe.com.repository.ITopicRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.Instant;
import java.util.List;


@RestController
@RequestMapping("/course")
@RequiredArgsConstructor
public class CourseController {

    private  final ICourseRepository iCourseRepository;
    private  final ITopicRepository iTopicRepository;
    private  final IAccountRepository iAccountRepository;

    @CrossOrigin("*")
    @GetMapping ("/get-all-course")
    public ResponseEntity<List<CourseDTO>> getAllCourse() {

        List<Course> courseList = iCourseRepository.findAll();

        return ResponseEntity.ok(CourseMapper.mapToListCourseDTO(courseList));


    }

}
