package powerware.movie.recommendation.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import powerware.movie.recommendation.entity.Friend;

@Repository
public interface FriendRepository extends JpaRepository<Friend, Integer>{

}