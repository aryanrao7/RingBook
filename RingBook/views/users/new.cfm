<!--- User Creation Form --->
<cfparam name="user">
<cfoutput>
<h1>Registration</h1>
#errorMessagesFor("user")#
#startFormTag(id="userNewForm", action="create", enctype = "multipart/form-data")#
	#includePartial("form")#
	
#endFormTag()#
</cfoutput>
