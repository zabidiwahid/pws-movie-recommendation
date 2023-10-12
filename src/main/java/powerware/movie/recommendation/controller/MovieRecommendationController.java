package powerware.movie.recommendation.controller;

import java.util.LinkedHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import powerware.movie.recommendation.entity.User;
import powerware.movie.recommendation.repository.MovieWatchesRepository;

@RestController
@RequestMapping("/api")
public class MovieRecommendationController {
	
	
	@Autowired
	MovieWatchesRepository movieWatchesRepository;
	
	
	@RequestMapping(method = RequestMethod.POST, value = "/movie-recommendation")
	public ResponseEntity<?> getMovieRecommendation(@RequestBody User user) {
		
		LinkedHashMap<String, Object> response = new LinkedHashMap<String, Object>();
		
	    	 if(user != null) { 
	    		 response.put("Recommended Movies", movieWatchesRepository.getMoviesWatchByFriends(user.getName()));
   		 	    		 
	    	 }else {
	    		 response.put("Status", "NOK");
	    		 response.put("Message", "user was not exist in body");

	    	 }
		
		return new ResponseEntity<>(response, HttpStatus.OK);
	}


}
