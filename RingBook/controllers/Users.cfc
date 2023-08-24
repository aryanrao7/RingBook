component extends="Controller" {

	function config() {
		verifies(except = "index,new,create,login,accounts,delete,promote,demote,forgotPassword,impersonatedUserPage,impersonate,isTokenValid,toggle,saveNewPassword,resetUserPassword,sendPasswordResetEmail,generateRandomPassword,resetPasswordForm,resetPassword,fixTokenExpiresOn,sendResetPasswordEmail,getResetPasswordLink", params = "key", paramsTypes = "integer", handler = "objectNotFound");
	}
	
	/**
	* View all Users
	**/
	function index() {

		//fixTokenExpiresOn();

		var users = model("user").findAll(); 
		var contacts = model("contact").findAll();
		renderView(data = { contacts = contacts, users = users }); 
	}

	
	/**
	* View User
	**/
	function show() {
		user=model("user").findByKey(params.key);
	}

	function getCurrentUser() {
		// Check if the "currentUser" key exists in the session
		if (structKeyExists(session, "currentUser")) {
			// Return the user object from the session
			return session.currentUser;
		}
		//return null;
	}

	/**
	* Add New User
	**/
	function new() {
		user=model("user").new();
	}

	/**
	* Create User
	**/
	function create() {
		user=model("user").create(params.user);

			var destinationFolder = 'C:\Users\aryan.rao\Desktop\profilePic';
			var fileImage = fileUpload(destinationFolder, "user[profilePic]"," " , "makeUnique");
			var filePath = destinationFolder & "\" & fileImage.serverFile;

			img = imageRead(filePath);
			size = img.width < img.height ? img.width : img.height;

			imageCrop(img, 0, 0, size, size);
			imageResize(img, 70, 70);
			imageWrite(img);

			user.profilePic = filePath;

		if(user.hasErrors()){
			renderView(action="new");
		} else {
			session.currentUser = user;
			user.save();
			redirectTo(controller="users", action = "index", success = "Successfull");
		}
	}

	function logout() {
		
		structDelete(session, "currentUser");
		redirectTo(controller="users", action="index");
	}

	
	function login() {
		var username = params.user.username;
		var password = params.user.password;
	
		var user = findByUsername(username);
	
		if (isNull(user) || !passwordMatches(user, password) || user.is_active==0) {
			
			renderView(data = { error = "Invalid username or password" }, action = "index");
		} else {
			session.currentUser = user;
			redirectTo(controller = "contacts", action = "index");
		}
	}

	function findByUsername(username) {
		var user = model("user").findOne(where = "username = '#username#'");
		return user;
	}
	
	function passwordMatches(user, password) {
		return user.password == password;
	}

	/**
	 * Promote a user to a higher role
	 **/
	 function promote() {
		var currentUser = getCurrentUser();
		
		var id = params.key;
	
		if (isNull(currentUser)) {
			redirectTo(controller = "users", action = "login");
		} 
		else {
			if (currentUser.role == 2 || currentUser.role == 1) {
				var user = model("user").findByKey(id);

				if (user.role == 0) {
					user.role = 1;
				}
				user.save();
				redirectTo(controller = "users", action = "accounts");
			} 
			else 
			{
				redirectTo(controller = "contacts", action = "index");
			}
		}
	}

	function demote() {
		var currentUser = getCurrentUser();
		
		var id = params.key;
	
		if (isNull(currentUser)) {
			redirectTo(controller = "users", action = "login");
		} 
		else {
			if (currentUser.role == 2 || currentUser.role == 1) {
				var user = model("user").findByKey(id);
	
				if (user.role == 1) {
					user.role = 0;
				}
				user.save();
				redirectTo(controller = "users", action = "accounts");
			} 
			else 
			{
				redirectTo(controller = "contacts", action = "index");
			}
		}
	}	

	/**
	 * Delete a user
	 **/
	function delete() {
		var currentUser = getCurrentUser();
		var id = params.key;
		
		if (isNull(currentUser)) {
			redirectTo(controller = "users", action = "login");
		} else {
			if (currentUser.role == "Super Admin" || currentUser.role == "Admin") {
				var user = model("user").findOne(where = "id = '#id#'");
				user.delete();
				redirectTo(controller = "users", action = "accounts");
			} else {
				redirectTo(controller = "contacts", action = "index");
			}
		}
	}

	/**
	 * View all Users and their roles
	 **/
	 function accounts() {
		var currentUser = getCurrentUser();
		
		if (isNull(currentUser)) {
			redirectTo(controller = "users", action = "login");
		} else if (currentUser.role == 2 || currentUser.role == 2) {
			var users = model("user").findAll();
			renderView(view = "accounts", users = users, currentUser = currentUser);
		} else {
			redirectTo(controller = "contacts", action = "index");
		}
	}

	function fixTokenExpiresOn() {
		
		var users = model("user").findAll(where = "token_expires_on IS NULL");
		
		for (var user in users) {
			
			user.token_expires_on = dateAdd("d", 1, now()); 
			user.save();
		}
	}
	
	/**
	 * Get the role of a user based on their user ID
	 **/
	function getUserRole(userID) {
		var user = model("user").findByKey(userID);
		return user.role;
	}

	function forgotPassword() {
		renderView(view = "forgotPassword");
	}
	
	function resetPasswordForm() {
		var email = params.email;
		var user = model("user").findOne(where = "email = '#email#'", params = { email = email });
		if (isNull(user)) {
			redirectTo(action = "forgotPassword", error = "Invalid email");
			return;
		}
		var token = createUUID();
		var tokenExpiresOn = dateAdd("h", 2, now());
		if (isNull(tokenExpiresOn) || tokenExpiresOn EQ "0000-00-00 00:00:00") {
			
			tokenExpiresOn = dateAdd("d", 1, now()); 
	
			
			redirectTo(action = "forgotPassword", error = "Invalid token expiration date");
			return;
		}
		user.token = token;
		user.token_expires_on = tokenExpiresOn;
		user.save();	
		sendResetPasswordEmail(user);
		redirectTo(action = "forgotPassword", success = "Password reset link sent to your email");
	}

	function sendResetPasswordEmail(user) {
		var toEmail = user.email;
		var fromEmail = "smtptest@smtp.saltechsystems.com";
		var subject = "Reset Password";
		var body = "Click on the following link to reset your password: #getResetPasswordLink(user)#";	
		cfmail(to = toEmail, from = fromEmail, subject = subject) {
			writeOutput(body);
		}
	}
	
	function getResetPasswordLink(user) {	
		var resetPasswordUrl = "http://127.0.0.1:54494/users/resetPassword?token=" & urlEncodedFormat(user.token) & "&email=" & urlEncodedFormat(user.email);
		return resetPasswordUrl;
	}

	function resetPassword() {
		var token = urlDecode(params.token);
		var user = model("user").findOne(where = "token = '#token#'", params = { token = token });
		if (isNull(user) || !isTokenValid(user)) {
			redirectTo(controller = "users", action = "login", error = "Invalid or expired token");
			return;
		}
		renderView(view = "resetPassword", email = user.email, token = token);
	}

	function isTokenValid(user) {
		var currentDateTime = now();
		return dateCompare(currentDateTime, user.token_expires_on) != 1;
	}

	function saveNewPassword() {
		var email = urlDecode(params.email);
		var token = urlDecode(params.token);
		var newPassword = params.newPassword;
		var confirmPassword = params.confirmPassword;
		var user = model("user").findOne(where = "email = '#email#' AND token = '#token#'", params = { email = email, token = token });
		if (isNull(user) || !isTokenValid(user)) {
			redirectTo(controller = "users", action = "login", error = "Invalid or expired token");
			return;
		}
		if (newPassword == confirmPassword) {
			user.password = newPassword;
			user.token = "";
			user.token_expires_on = "";
			user.update();
			user.save();	
			redirectTo(controller = "users", action = "login", success = "Password reset successful. Please login with your new password.");
		} 
		else {
			redirectTo(action = "resetPassword", email = email, token = token, error = "Passwords do not match");
		}
	}

	function impersonate() {
		var currentUser = getCurrentUser();
		var id = params.key;
		
	
		if (isNull(currentUser)) {
			redirectTo(controller = "users", action = "login");
		} else {
			if (currentUser.role == 2 || currentUser.role == 1) {
				var userToImpersonate = model("user").findByKey(id);
				
				// Store the impersonated user's information in the session
				session.impersonatedUser = userToImpersonate;
				session.currentUser = userToImpersonate;
				// var contacts = model("contact").findAll(where = "id = '#userToImpersonate.id#'");
				// throw(contacts.firstname);
				redirectTo(controller = "contacts", action = "index");
			} else {
				redirectTo(controller = "contacts", action = "index");
			}
		}
	}

	function impersonatedUserPage() {
		var impersonatedUser = session.impersonatedUser;
		
		if (isNull(impersonatedUser)) {
			redirectTo(controller = "users", action = "login");
		} else {
			// Check if the logged-in user is an admin
			var currentUser = getCurrentUser();
			if (currentUser.role == 2 || currentUser.role == 1) {
				// Redirect the admin user to the contacts page of the impersonated user
				redirectTo(controller = "contacts", action = "index", params = { userId = impersonatedUser.id });
			} else {
				// Render an error page or display an error message
				renderView(data = { error = "You do not have permission to impersonate users." });
			}
		}
	}
	
	function resetUserPassword() {
		var currentUser = getCurrentUser();
		var id = params.key;
	
		if (isNull(currentUser)) {
			redirectTo(controller = "users", action = "login");
		} else {
			if (currentUser.role == 2 || currentUser.role == 1) {
				var user = model("user").findByKey(id);
	
				// Generate a new random password
				var newPassword = generateRandomPassword();
	
				// Set the new password for the user
				user.password = newPassword;
				user.save();
	
				// Send an email to the user with the new password
				sendPasswordResetEmail(user, newPassword);
	
				redirectTo(controller = "users", action = "accounts");
			} else {
				redirectTo(controller = "contacts", action = "index");
			}
		}
	}
	
	function toggle() {
		var currentUser = getCurrentUser();
		var userId = params.userId;
		var toggleAction = params.toggleAction;
	  
		if (isNull(currentUser)) {
		  redirectTo(controller = "users", action = "login");
		} else {
		  if (currentUser.role == 2) {
			var user = model("user").findByKey(userId);
			
			if (toggleAction eq "activate") {
			  user.is_active = true;
			} else if (toggleAction eq "deactivate") {
			  user.is_active = false;
			}
			
			user.save();
			redirectTo(controller = "users", action = "accounts");
		  } else {
			redirectTo(controller = "contacts", action = "index");
		  }
		}
	}
	  

	function generateRandomPassword() {
		// Generate a random password using a combination of letters, numbers, and special characters
		var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@$%^&*()";
		var password = "";
		for (var i = 1; i <= 10; i++) {
			password &= mid(chars, randRange(1, len(chars)), 1);
		}
		return password;
	}
	
	function sendPasswordResetEmail(user, newPassword) {
		var toEmail = user.email;
		var fromEmail = "smtptest@smtp.saltechsystems.com";
		var subject = "Password Reset";
		var body = "Your password has been reset. Your new password is: " & newPassword;
		cfmail(to = toEmail, from = fromEmail, subject = subject) {
			writeOutput(body);
		}
	}
	


	/**
	* Redirect away if verifies fails, or if an object can't be found
	**/
	function objectNotFound() {
		redirectTo(action="index");
	}
}