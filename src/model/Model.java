package model;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;

import org.genericdao.ConnectionPool;
import org.genericdao.DAOException;
import org.genericdao.RollbackException;

import databeans.PhotoBean;
import databeans.UserBean;

public class Model {
	private PhotoDAO photoDAO;
	private UserDAO  userDAO;
	private TweetDAO tweetDAO;

	public Model(ServletConfig config) throws ServletException {
		try {
			String jdbcDriver = config.getInitParameter("jdbcDriverName");
			String jdbcURL    = config.getInitParameter("jdbcURL");
			
			ConnectionPool pool = new ConnectionPool(jdbcDriver, jdbcURL);
			userDAO  = new UserDAO("user", pool);
			photoDAO = new PhotoDAO("photo", pool);
			tweetDAO = new TweetDAO("tweet", pool);
			
			if(userDAO.getUsers().length==0) {
				UserBean user1 = new UserBean("aaa","aaa","aaa","aaa");
				PhotoBean photo1 = new PhotoBean();
				File fi = new File("/Users/SuperXiao/git/PetCommunity/src/dog1.jpg");
				byte[] fileContent = Files.readAllBytes(fi.toPath());
				photo1.setBytes(fileContent);
				photo1.setContentType("jpg");
				photo1.setTweetId(1);
				photo1.setUserId(1);
				photo1.setCaption("Dog1");
				userDAO.create(user1);
				photoDAO.create(photo1);
				
				
				UserBean user2 = new UserBean("bbb","bbb","bbb","bbb");
				userDAO.create(user2);
				PhotoBean photo2 = new PhotoBean();
				fi = new File("/Users/SuperXiao/git/PetCommunity/src/dog2.jpg");
				fileContent = Files.readAllBytes(fi.toPath());
				photo2.setBytes(fileContent);
				photo1.setContentType("jpg");
				photo1.setTweetId(2);
				photo2.setUserId(1);
				photo2.setCaption("Dog1");
				photoDAO.create(photo2);
			}
		} catch (DAOException e) {
			throw new ServletException(e);
		} catch (RollbackException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	public PhotoDAO getPhotoDAO() { return photoDAO; }
	public UserDAO  getUserDAO()  { return userDAO;  }
	public TweetDAO  getTweetrDAO()  { return tweetDAO;  }
}
