package powerware.movie.recommendation.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

import org.springframework.stereotype.Service;

import powerware.movie.recommendation.entity.MovieWatches;
import powerware.movie.recommendation.entity.User;


@Service
public class RecommendationService {
	
	// public List<MovieWatches> moviesWatchByFriends(User user){
		
    //     // Step 1: Get the user's friends and friends of friends
    //     List<User> socialNetwork = getSocialNetwork(user);

    //     // Step 2: Create a data structure to keep track of movie frequency
    //     Map<MovieWatches, Integer> movieFrequencyMap = new HashMap<>();

    //     // Step 3: Iterate through movies watched by the social network and update frequency
    //     for (User friend : socialNetwork) {
    //         List<MovieWatches> friendMovies = friend.getMoviesWatched(user);
    //         for (MovieWatches movie : friendMovies) {
    //         	// At this line we find if the movie already exist in the map or not
    //         	//if yes, it will retrieve the current count
    //         	//else, it will return 0
    //         	//, then it will add 1
    //             movieFrequencyMap.put(movie, movieFrequencyMap.getOrDefault(movie, 0) + 1);
    //         }
    //     }

    //     // Step 4: Sort the movies based on frequency in descending order
    //     List<MovieWatches> recommendedMovies = new ArrayList<>(movieFrequencyMap.keySet());
    //     recommendedMovies.sort((m1, m2) -> movieFrequencyMap.get(m2) - movieFrequencyMap.get(m1));

    //     // Step 5: Return the top returnCount movies as recommendations
    //     return recommendedMovies.subList(0, Math.min(1, recommendedMovies.size()));
		
	// }
	
	
    // private List<User> getSocialNetwork(User user) {
    //     List<User> socialNetwork = new ArrayList<>();
    //     Set<User> visited = new HashSet<>();
    //     Queue<User> queue = new LinkedList<>();

    //     queue.offer(user);
    //     visited.add(user);

    //     while (!queue.isEmpty()) {
    //         User currentUser = queue.poll();
    //         List<User> friends = currentUser.getFriends(user);

    //         for (User friend : friends) {
    //         	if (!visited.stream().anyMatch(visitedUser -> visitedUser.equals(friend))) {
    //         	    socialNetwork.add(friend);
    //         	    queue.offer(friend);
    //         	    visited.add(friend);
    //         	}

    //         }
    //     }

    //     return socialNetwork;
    // }

}
