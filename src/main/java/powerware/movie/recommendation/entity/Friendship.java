package powerware.movie.recommendation.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "friendship")
public class Friendship implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @Column(name = "friendship_id")
    private Long friendshipId;

    @Column(name = "user_id1")
    private String user1;

    @Column(name = "user_id2")
    private String user2;

    public Friendship() {
        // Default no-argument constructor
    }

    public Friendship(String user1, String user2) {
        this.user1 = user1;
        this.user2 = user2;
    }

	public Long getFriendshipId() {
		return friendshipId;
	}

	public void setFriendshipId(Long friendshipId) {
		this.friendshipId = friendshipId;
	}

	public String getUser1() {
		return user1;
	}

	public void setUser1(String user1) {
		this.user1 = user1;
	}

	public String getUser2() {
		return user2;
	}

	public void setUser2(String user2) {
		this.user2 = user2;
	}


}
