<!--- User Edit Form --->
<cfparam name="user">
<cfoutput>
<h1>Edit User</h1>
#errorMessagesFor("user")#
#startFormTag(id="userEditForm", route="User", method="patch", key=params.key)#
	#includePartial("form")#
	#submitTag(value="Update User")#
#endFormTag()#
</cfoutput>
