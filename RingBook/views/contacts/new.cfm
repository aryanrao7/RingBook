<!--- Contact Creation Form --->
<cfparam name="contact">
<cfoutput>
<h1>Create New Contact</h1>
#errorMessagesFor("contact")#
#startFormTag(id="contactNewForm", action="create", encType="multipart/form-data")#
	#includePartial("form")#

	<div id="errorContainer">

	 <script>
	    document.getElementById('contactNewForm').addEventListener('submit',function(event){
		event.preventDefault();
		
		var firstname = document.getElementById('firstname').value;
		var lastname = document.getElementById('lastname').value;
		var email = document.getElementById('email').value;
		var phone = document.getElementById('phone').value;
		var address = document.getElementById('address').value;
		//var profilePic = document.getElementById('profilePic').value;
		
		var errors = [];

		if(firstname.trim()==""){
			errors.push('First name is required');
		}

		if(lastname.trim()==""){
			errors.push('Last name is required');
		}

		if(email.trim()==""){
			errors.push('Email is required');
		}

		if(phone.trim()==""){
			errors.push('Phone is required');
		}

		if(address.trim()==""){
			errors.push('Address name is required');
		}
		
		var errorContainer = document.getElementById('errorContainer');
		errorContainer.innerHTML = "";

		if(errors.length>0){
			errors.forEach(function(error){
				var errorElement = document.createElement('p');
				errorElement.textContent = error;
				errorContainer.appendChild(errorElement);
			});
		}
		
		else{
			//no errors
			event.target.submit();
		}

		});

	</script></div>
#endFormTag()#
</cfoutput>
