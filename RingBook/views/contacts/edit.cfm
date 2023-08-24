<!--- Contact Edit Form --->
<cfparam name="contact">
<cfoutput>
<h1>Edit Contact</h1>
#errorMessagesFor("contact")#
#startFormTag(id="contactEditForm", route="Contact", method="patch", key=params.key)#
	#includePartial("form")#
#endFormTag()#
</cfoutput>
