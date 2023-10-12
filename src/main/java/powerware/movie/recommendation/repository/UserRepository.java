package powerware.movie.recommendation.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import powerware.movie.recommendation.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{

}
