package databeans;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.genericdao.PrimaryKey;

@PrimaryKey("photoId")
public class PhotoBean implements Comparable<PhotoBean> {
	public static final List<String> EXTENSIONS = Collections.unmodifiableList(Arrays.asList( new String[] {
			".jpg", ".gif", ".JPG"
	} ));

	private int    	photoId	;
	private int 	userId		= -1;
	private int 	tweetId		= -1;
	private byte[] 	bytes       = null;
	private String 	caption     = null;
	private String 	contentType = null;
	private int    	vote    	= 0;
	
	public int compareTo(PhotoBean other) {
		// Ordered by vote
		if (userId == -1 && other.userId != -1) return -1;
		if (userId != -1 && other.userId == -1) return 1;
		return vote - other.vote;
	}
	
	public boolean equals(Object obj) {
		if (obj instanceof PhotoBean) {
			PhotoBean other = (PhotoBean) obj;
			return compareTo(other) == 0;
		}
		return false;
	}
	
	public int getPhotoId()			{ return photoId; 		}
	public int getUserId()			{ return userId;       	}
	public int getTweetId()			{ return tweetId;		}
    public byte[] getBytes()       	{ return bytes;       	}
    public String getCaption()     	{ return caption;     	}
    public String getContentType() 	{ return contentType; 	}
    public int getVote()			{ return vote; 			}
 
	public void setPhotoId(int i)		 { photoId = i; 	}
	public void setUserId(int i)		 { userId = i;      }
	public void setTweetId(int i)		 { tweetId = i;		}
    public void setBytes(byte[] b)       { bytes = b;       }
    public void setCaption(String s)     { caption = s;     }
    public void setContentType(String s) { contentType  = s;}
    public void setVote(int i)			 { vote = i; 		}
    
    public String toString() {
    	return "Photo("+photoId+")";
    }

}
