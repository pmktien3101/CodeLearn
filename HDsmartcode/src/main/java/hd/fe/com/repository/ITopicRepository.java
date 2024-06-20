package hd.fe.com.repository;

import hd.fe.com.entity.Topic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ITopicRepository extends JpaRepository<Topic, Integer> {
    Topic findByName(String topicName);
}
