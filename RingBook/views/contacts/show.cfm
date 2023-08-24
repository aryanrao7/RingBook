<!--- Contact Show --->
<cfparam name="contact">
<cfoutput>
<h1>#encodeForHTML(contact.firstname)# </h1>
<div class = "viewC">
<p><strong>First Name</strong><br />#encodeForHTML(contact.firstname)#</p></br>
<p><strong>Last Name</strong><br />#encodeForHTML(contact.lastname)#</p></br>
<p><strong>Email</strong><br />#encodeForHTML(contact.email)#</p></br>
<p><strong>Phone</strong><br />#encodeForHTML(contact.phone)#</p></br>
<p><strong>Address</strong><br />#encodeForHTML(contact.address)#</p>
<p><strong>Profile Pic</strong><br />#ImageRead(contact.profilePic)#</p>

</div>
<!--- CLI-Appends-Here --->
</cfoutput>
