package powerware.movie.recommendation.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import powerware.movie.recommendation.entity.MovieWatches;

@Repository
public interface MovieWatchesRepository extends JpaRepository<MovieWatches, Integer>{
	
	
	//get movie watches by friend
    String sqlGetMoviesWatchByFriend = "SELECT m.title FROM movie_watches mw " +
    								   "LEFT JOIN friendship f ON (mw.user_id = f.user_id2) "+
    								   "LEFT JOIN `user` u ON (f.user_id1 = u.user_id) "+
    								   "LEFT JOIN movie m ON (mw.movie_id = m.movie_id) "+
    								   "WHERE u.name = :name";  

    @Query(value = sqlGetMoviesWatchByFriend, nativeQuery = true)
	List<String> getMoviesWatchByFriends(@Param("name") String name);
    
    
    //List<MovieWatches> findByUserId(String userId);

}
