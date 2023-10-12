package powerware.movie.recommendation.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import powerware.movie.recommendation.entity.Friendship;
import powerware.movie.recommendation.entity.User;

@Repository
public interface FriendshipRepository extends JpaRepository<Friendship, Integer>{
	
    //List<User> findUsersByUser2UserId(String user2UserId);

}
