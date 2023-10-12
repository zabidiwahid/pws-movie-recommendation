package powerware.movie.recommendation.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import powerware.movie.recommendation.entity.Movie;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Integer>{

}
