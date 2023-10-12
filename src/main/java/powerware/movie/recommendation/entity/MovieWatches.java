package powerware.movie.recommendation.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "movie_watches")
public class MovieWatches {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "movie_watch_id")
    private Long movieWatchId;

    @Column(name = "movie_id")
    private String movieId;

    @Column(name = "user_id")
    private String userId;

    @Column(name = "watch_timestamp")
    @Temporal(TemporalType.TIMESTAMP)
    private Date watchTimestamp;

    @Column(name = "frequency")
    private Integer frequency;

    public MovieWatches() {
        // Default no-argument constructor
    }

	public MovieWatches(Long movieWatchId, String movieId, String userId, Date watchTimestamp, Integer frequency) {
		super();
		this.movieWatchId = movieWatchId;
		this.movieId = movieId;
		this.userId = userId;
		this.watchTimestamp = watchTimestamp;
		this.frequency = frequency;
	}

	public Long getMovieWatchId() {
		return movieWatchId;
	}

	public void setMovieWatchId(Long movieWatchId) {
		this.movieWatchId = movieWatchId;
	}

	public String getMovieId() {
		return movieId;
	}

	public void setMovieId(String movieId) {
		this.movieId = movieId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getWatchTimestamp() {
		return watchTimestamp;
	}

	public void setWatchTimestamp(Date watchTimestamp) {
		this.watchTimestamp = watchTimestamp;
	}

	public Integer getFrequency() {
		return frequency;
	}

	public void setFrequency(Integer frequency) {
		this.frequency = frequency;
	}







}

