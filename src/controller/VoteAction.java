// 08-600 Java and J2EE Programming, 2014 Fall
// Homework 9: 		Favorite Link Sharing System
// Compiled by: 	Xinjun Chen, Backy
// Andrew ID:		xinjunc	
// Submitted on:	Dec 04, 2014

package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.Model;
import model.PhotoDAO;
import model.UserDAO;

import org.genericdao.RollbackException;
import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;

import databeans.PhotoBean;
import databeans.TweetBean;
import formbeans.PhotoForm;

/*
 * Action called when viewing a link given it's "id" number.
 * 
 * If successful, looks up the Favorite bean by id and sets the
 * "favorite" attribute to that bean.  Also sets the "title"
 * attribute to the link's comments.
 * 
 * On success, forward to view.jsp for formatting.
 * 
 */
public class VoteAction extends Action {
	private FormBeanFactory<PhotoForm> formBeanFactory = FormBeanFactory.getInstance(PhotoForm.class);

	private PhotoDAO photoDAO;
	private UserDAO  userDAO;
	
    public VoteAction(Model model) {
    	photoDAO = model.getPhotoDAO();
    	userDAO  = model.getUserDAO();
	}

    public String getName() { return "vote.do"; }

    public String perform(HttpServletRequest request) {
        List<String> errors = new ArrayList<String>();
        request.setAttribute("errors",errors);
        
		try {
            // Set up user list for nav bar
			request.setAttribute("userList",userDAO.getUsers());

			PhotoForm form = formBeanFactory.create(request);
	    	
	        // Any validation errors?
	        errors.addAll(form.getValidationErrors());
	        if (errors.size() != 0) {
	            return "error.jsp";
	        }
        
    		int id = form.getIdAsInt();
    		PhotoBean p = photoDAO.read(id);
    		if (p == null) {
    			errors.add("No url with id="+id);
    			return "error.jsp";
    		}
    		photoDAO.vote(id);
    		request.setAttribute("favorite",p);
    		request.setAttribute("title",p.getCaption());
    		
            return "vote.jsp";
    	} catch (RollbackException e) {
    		errors.add(e.getMessage());
    		return "error.jsp";
    	} catch (FormBeanException e) {
    		errors.add(e.getMessage());
    		return "error.jsp";
    	}
    }
}
