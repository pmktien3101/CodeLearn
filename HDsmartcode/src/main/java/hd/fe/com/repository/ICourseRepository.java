package hd.fe.com.repository;

import hd.fe.com.entity.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICourseRepository  extends JpaRepository<Course, Integer> {
}
