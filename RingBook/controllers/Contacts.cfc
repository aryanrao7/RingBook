component extends="Controller" {

	function config() {
		verifies(except="index,new,create,search", params="key", paramsTypes="integer", handler="objectNotFound");
	}

	/**
	* View all Contacts
	**/
	function index() {
        var currentUser = getCurrentUser();

        if (isNull(currentUser)) {
            redirectTo(controller = "users", action = "login");
        } else {
            // var userId = params.userId ? params.userId : currentUser.id;
			var searchTerm ="";
            // Fetch contacts for the specified user
			if(isDefined("session.searchTerm")){
            	searchTerm = session.searchTerm;            
			}

			var contacts = model("contact").findAll(where = "id = '#currentUser.id#' AND (firstname LIKE '%#searchTerm#%' OR lastname LIKE '%#searchTerm#%') ");
			renderView(view = "index", contacts = contacts, currentUser = currentUser);
			
		}
    }
	

	function getCurrentUser() {
		// Check if the "currentUser" key exists in the session
		if (structKeyExists(session, "currentUser")) {
			// Return the user object from the session
			return session.currentUser;
		}
		return "";
	}

	/**
	* Search Contacts
	**/
	function search() {
		structDelete(session,"contacts");
		var currentUser = getCurrentUser();
		var searchTerm = trim(params.search);
		
		if (isNull(currentUser)) {
			redirectTo(controller = "users", action = "login");
		} 
		else {
			// var contacts = model("contact").findAll(
			// 	where = "id = '#currentUser.id#' AND (firstname LIKE '%#searchTerm#%' OR lastname LIKE '%#searchTerm#%')"
			// );
			// session.contacts = contacts;

			session.searchTerm = searchTerm;
		}
		
		
        session.currentUser = currentUser;
        redirectTo(controller = "contacts", action = "index");
	}
	
	/**
	* View Contact
	**/
	function show() {
		contact=model("contact").findByKey(params.key);
	}

	/**
	* Add New Contact
	**/
	function new() {
		contact=model("contact").new();
	}

	/**
	* Create Contact
	**/
	function create() {

		var currentUser = getCurrentUser();
		contact=model("contact").create(params.contact);// maybe change


		var errors = [];
		
		if(Len(params.contact.firstname) EQ 0){
			errors.push("Firstname can't be empty");
		}

		if(Len(params.contact.lastname) EQ 0){
			errors.push("Lastname can't be empty");
		}

		if(Len(params.contact.email) EQ 0){
			errors.push("Email can't be empty");
		}

		if(Len(params.contact.phone) EQ 0){
			errors.push("Phone can't be empty");
		}

		if(Len(params.contact.address) EQ 0){
			errors.push("Address can't be empty");
		}

		if(Len(params.contact.profilePic) EQ 0){
			errors.push("Profile Pic can't be empty");
		}

		try{

			var destinationFolder = 'C:\Users\aryan.rao\Desktop\profilePic';
			var fileImage = fileUpload(destinationFolder, "contact[profilePic]"," " , "makeUnique");
			var filePath = destinationFolder & "\" & fileImage.serverFile;

			img = imageRead(filePath);
			size = img.width < img.height ? img.width : img.height;

			imageCrop(img, 0, 0, size, size);
			imageResize(img, 70, 70);
			imageWrite(img);

			contact.profilePic = filePath;
			
		}

		catch(any e){
		error = "Error:PROFILE PICTURE  ";
	    }
		

		if(ArrayLen(errors)>0){
		 	renderView(action="new", errors = errors);
			return;
		 }

		if(contact.hasErrors()){ //maybe change
		 	renderView(action="new");
		} else {

			contact.id = currentUser.id;

    		// Save the contact with the correct 'id' value
    		contact.save();
		 	redirectTo(action="index", success="Contact successfully created");
		}
	}

	/**
	* Edit Contact
	**/
	function edit() {
		contact=model("contact").findByKey(params.key);
	}

	/**
	* Update Contact
	**/
	function update() {
		contact=model("contact").findByKey(params.key);
		if(contact.update(params.contact)){
			redirectTo(action="index", success="Contact successfully updated");
		} else {
			renderView(action="edit");
		}
	}

	/**
	* Delete Contact
	**/
	function delete() {
		contact=model("contact").deleteByKey(params.key);
		redirectTo(action="index", success="Contact successfully deleted");
	}

	/**
	* Redirect away if verifies fails, or if an object can't be found
	**/
	function objectNotFound() {
		redirectTo(action="index", error="That Contact wasn't found");
	}

}
