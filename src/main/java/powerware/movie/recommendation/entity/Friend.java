package powerware.movie.recommendation.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "friend")
public class Friend implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @Column(name = "friendship_id")
    private Long friendshipId;

    @Column(name = "status", length = 50)
    private String status;

    @Column(name = "established_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date establishedDate;

    public Friend() {
        // Default no-argument constructor
    }

    public Friend(String status) {
        this.status = status;
    }

	public Long getFriendshipId() {
		return friendshipId;
	}

	public void setFriendshipId(Long friendshipId) {
		this.friendshipId = friendshipId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getEstablishedDate() {
		return establishedDate;
	}

	public void setEstablishedDate(Date establishedDate) {
		this.establishedDate = establishedDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


}

