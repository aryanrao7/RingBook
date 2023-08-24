<!--- Contact Index --->
<cfoutput>
  <!--- Contact boxes, create, logouts and users if admin --->
    <div class="sidenav">
        <p style="display: flex; align-items: center;">
            <svg xmlns="http://www.w3.org/2000/svg" width="21.563" height="23" viewBox="0 0 21.563 23">
                <path d="M17.25-20.125H4.313A2.875,2.875,0,0,0,1.437-17.25V0A2.875,2.875,0,0,0,4.313,2.875H17.25A2.875,2.875,0,0,0,20.125,0V-17.25A2.876,2.876,0,0,0,17.25-20.125Zm-6.469,5.75A2.875,2.875,0,0,1,13.656-11.5a2.875,2.875,0,0,1-2.875,2.875A2.875,2.875,0,0,1,7.906-11.5,2.876,2.876,0,0,1,10.781-14.375Zm4.313,11.5H6.469a.721.721,0,0,1-.719-.719A3.593,3.593,0,0,1,9.344-7.187h2.875a3.594,3.594,0,0,1,3.594,3.594A.721.721,0,0,1,15.094-2.875ZM22.281-17.25h-.719v4.313h.719A.721.721,0,0,0,23-13.656v-2.875A.72.72,0,0,0,22.281-17.25Zm0,5.75h-.719v4.313h.719A.721.721,0,0,0,23-7.906v-2.875A.721.721,0,0,0,22.281-11.5Zm0,5.75h-.719v4.313h.719A.719.719,0,0,0,23-2.156V-5.031A.721.721,0,0,0,22.281-5.75Z" transform="translate(-1.438 20.125)" fill="##1d1d1d"/>
            </svg>
            #linkTo(route="contacts", text="Contacts")#
        </p>
        

        <p style="display: flex; align-items: center;">
            <svg xmlns="http://www.w3.org/2000/svg" width="28.75" height="23" viewBox="0 0 28.75 23">
                <path d="M10.063-8.625a5.75,5.75,0,0,0,5.75-5.75,5.75,5.75,0,0,0-5.75-5.75,5.75,5.75,0,0,0-5.75,5.75A5.75,5.75,0,0,0,10.063-8.625ZM12.34-6.469H7.785A7.786,7.786,0,0,0,0,1.316,1.557,1.557,0,0,0,1.557,2.875H18.569a1.556,1.556,0,0,0,1.556-1.559A7.786,7.786,0,0,0,12.34-6.469Zm15.332-4.672H25.516V-13.3a1.078,1.078,0,0,0-1.078-1.078A1.077,1.077,0,0,0,23.359-13.3v2.156H21.2a1.081,1.081,0,0,0-1.078,1.078A1.08,1.08,0,0,0,21.2-8.984h2.156v2.156A1.078,1.078,0,0,0,24.438-5.75a1.08,1.08,0,0,0,1.078-1.078V-8.984h2.156a1.076,1.076,0,0,0,1.078-1.078A1.076,1.076,0,0,0,27.672-11.141Z" transform="translate(0 20.125)" fill="##1d1d1d"/>
            </svg>
            #linkTo(route="newContact", text="Create a Contact")#
        </p>

        <cfif (currentUser.role == 2 OR currentUser.role == 1)>
            <p style="display: flex; align-items: center;">
                <svg xmlns="http://www.w3.org/2000/svg" width="28.75" height="23" viewBox="0 0 28.75 23">
                    <path d="M14.371-5.75A4.638,4.638,0,0,0,19-10.422a4.663,4.663,0,0,0-4.631-4.672,4.638,4.638,0,0,0-4.631,4.672A4.614,4.614,0,0,0,14.371-5.75Zm2.246,1.438H12.133A6.2,6.2,0,0,0,5.75,1.676a1.237,1.237,0,0,0,1.276,1.2h14.7A1.237,1.237,0,0,0,23,1.676,6.2,6.2,0,0,0,16.617-4.312ZM23-12.937a3.594,3.594,0,0,0,3.594-3.594A3.593,3.593,0,0,0,23-20.125a3.594,3.594,0,0,0-3.594,3.594A3.593,3.593,0,0,0,23-12.937ZM8.261-10.422a5.985,5.985,0,0,1,.072-.715,3.253,3.253,0,0,0-1.6-.363H3.957A4.08,4.08,0,0,0,0-7.309a.818.818,0,0,0,.792.84H9.753A6.051,6.051,0,0,1,8.261-10.422ZM5.75-12.937a3.594,3.594,0,0,0,3.594-3.594A3.593,3.593,0,0,0,5.75-20.125a3.594,3.594,0,0,0-3.594,3.594A3.594,3.594,0,0,0,5.75-12.937ZM24.792-11.5H22.014a3.746,3.746,0,0,0-1.611.37,6.155,6.155,0,0,1,.072.708,6.056,6.056,0,0,1-1.49,3.953h8.971a.818.818,0,0,0,.793-.84A4.079,4.079,0,0,0,24.792-11.5Z" transform="translate(0 20.125)" fill="##1d1d1d"/>
                </svg>
                #linkTo(route="accounts", text="Users")#
            </p>
        </cfif>

        <p style="display: flex; align-items: center;">
            <svg xmlns="http://www.w3.org/2000/svg" width="23" height="20.125" viewBox="0 0 23 20.125">
                <path d="M4.313,1.438H7.188A1.436,1.436,0,0,0,8.625,0,1.436,1.436,0,0,0,7.188-1.437H4.313A1.438,1.438,0,0,1,2.875-2.875v-11.5a1.438,1.438,0,0,1,1.438-1.437H7.188A1.437,1.437,0,0,0,8.625-17.25a1.437,1.437,0,0,0-1.437-1.437H4.313A4.312,4.312,0,0,0,0-14.375v11.5A4.313,4.313,0,0,0,4.313,1.438ZM22.677-9.411,16.2-15.521a1.081,1.081,0,0,0-1.168-.206,1.079,1.079,0,0,0-.652.991l0,3.234H8.629a1.438,1.438,0,0,0-1.438,1.438V-7.19A1.438,1.438,0,0,0,8.629-5.752h5.75l0,3.194a1.079,1.079,0,0,0,.652.991A1.081,1.081,0,0,0,16.2-1.774l6.473-6.109A1.064,1.064,0,0,0,22.677-9.411Z" transform="translate(0 18.688)" fill="##1d1d1d"/>
            </svg>
            #linkTo(route="logout", text="Log Out")#
        </p>
    </div>
    <div class="content">
       
          <!--- Search Bar --->
        <div class="search-bar">
            <form action="/contacts/search" method="get">
                <input type="text" name="search" value = "#session.searchTerm#" placeholder="Search Contacts">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
        
        <div class="contacts-gradient-box">
            <svg width="256px" height="425px" viewBox="0 0 256 425" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid">
				<defs>
					<linearGradient x1="50%" y1="-352.925786%" x2="50%" y2="96.7175267%" id="linearGradient-1">
						<stop stop-color="##002E3B" offset="0%"></stop>
						<stop stop-color="##002639" offset="100%"></stop>
					</linearGradient>
					<linearGradient x1="50%" y1="-2.80786187%" x2="50%" y2="428.758892%" id="linearGradient-2">
						<stop stop-color="##002E3B" offset="0%"></stop>
						<stop stop-color="##002639" offset="100%"></stop>
					</linearGradient>
					<radialGradient cx="16.4234038%" cy="142.999709%" fx="16.4234038%" fy="142.999709%" r="295.57111%" id="radialGradient-3">
						<stop stop-color="##00BC85" offset="0%"></stop>
						<stop stop-color="##149D91" offset="100%"></stop>
					</radialGradient>
					<radialGradient cx="16.423338%" cy="-42.999755%" fx="16.423338%" fy="-42.999755%" r="357.003966%" id="radialGradient-4">
						<stop stop-color="##00BC85" offset="0%"></stop>
						<stop stop-color="##149D91" offset="100%"></stop>
					</radialGradient>
					<radialGradient cx="11.4670327%" cy="-40.4580495%" fx="11.4670327%" fy="-40.4580495%" r="343.189366%" id="radialGradient-5">
						<stop stop-color="##004473" offset="0%"></stop>
						<stop stop-color="##00345F" offset="100%"></stop>
					</radialGradient>
				</defs>
				<g>
					<path d="M65.6992339,330.300644 L0.107733463,362.384436 L127.400289,424.384842 L255.039336,362.18981 L189.28052,329.651265 L127.352045,360.40471 L65.6992339,330.300644 Z" fill="url(##linearGradient-1)"></path>
					<path d="M57.6019991,98.1748765 L57.6019991,98.1541795 L127.531267,64.0476413 L197.46571,98.1541795 L255.003891,62.1986373 L127.484698,0 L0,62.1796642 L0,62.2348584 L57.5537042,98.1990237 L57.6019991,98.1748765 L57.6019991,98.1748765 Z" fill="url(##linearGradient-2)"></path>
					<path d="M0.15618046,298.428426 L63.071162,267.624645 L127.784793,299.667263 L0.15618046,362.461971 L0.15618046,298.428426 Z" fill="url(##radialGradient-3)"></path>
					<path d="M196.677541,99.4103235 C196.67754,132.999495 196.677539,200.177839 196.677539,200.177839 L126.336262,234.601641 L191.022434,266.940614 L254.000917,236.143726 L254.00091,62.1907831 L196.677541,98.1665853 L196.677541,99.4103235 Z" fill="url(##radialGradient-4)"></path>
					<path d="M255.003891,298.216498 L57.5889764,199.96591 L57.5889774,98.1815418 L1.42108547e-14,62.2302408 L1.42108547e-14,63.1375243 L1.42108547e-14,235.931797 L255.003891,362.253488 L255.003891,298.216498 Z" fill="url(##radialGradient-5)"></path>
				</g>
			</svg>
            <h1>Phone-Book powered by-SALTECH SYSTEMS &trade;</h1>
        </div>

        <div class="heyx">
            <p>Contacts</p>
        </div>

        <div class="contact-grid">
            <cfloop from="1" to="#contacts.recordcount#" index="i">
              <div class="contact-box">
                <div class="profile-pic">
                  #ImageRead(contacts.profilePic[i])#
                </div>
                <div class="contact-info">
                  <div class="cx"></div>
                  <p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16.625" height="18.999" viewBox="0 0 16.625 18.999">
                      <path d="M8.313-7.125a4.75,4.75,0,0,0,4.75-4.75,4.75,4.75,0,0,0-4.75-4.75,4.75,4.75,0,0,0-4.75,4.75A4.75,4.75,0,0,0,8.313-7.125Zm1.881,1.781H6.431A6.432,6.432,0,0,0,0,1.087,1.287,1.287,0,0,0,1.286,2.374H15.34a1.284,1.284,0,0,0,1.285-1.287A6.432,6.432,0,0,0,10.194-5.344Z" transform="translate(0 16.625)" fill="##2545d5"/>
                    </svg>
                    <strong><small>Name</small></strong><br>
                    <span class="contact-value">#contacts.firstname[i]# #contacts.lastname[i]#</span>
                  </p>
                  <p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="19" height="14.25" viewBox="0 0 19 14.25">
                      <path d="M9.5-3.562a2.836,2.836,0,0,1-1.75-.609L0-10.2v8.416A1.781,1.781,0,0,0,1.781,0H17.219A1.781,1.781,0,0,0,19-1.781V-10.2l-7.748,6.03A2.858,2.858,0,0,1,9.5-3.562ZM.6-11.233,8.479-5.106a1.663,1.663,0,0,0,2.043,0L18.4-11.233a1.676,1.676,0,0,0,.6-1.236,1.781,1.781,0,0,0-1.781-1.781H1.781A1.781,1.781,0,0,0,0-12.469a1.567,1.567,0,0,0,.6,1.236Z" transform="translate(0 14.25)" fill="##2545d5"/>
                    </svg>
                    <strong><small>Email</small></strong><br>
                    <span class="contact-value">#contacts.email[i]#</span>
                  </p>
                  <p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="18.998" height="19.001" viewBox="0 0 18.998 19.001">
                      <path d="M18.97-2.264l-.863,3.741a1.153,1.153,0,0,1-1.13.9A17,17,0,0,1,0-14.6a1.153,1.153,0,0,1,.9-1.13L4.639-16.6a1.165,1.165,0,0,1,1.328.672L7.694-11.9a1.161,1.161,0,0,1-.333,1.353l-2,1.6a12.976,12.976,0,0,0,5.919,5.919l1.636-2A1.154,1.154,0,0,1,14.27-5.35L18.3-3.624A1.266,1.266,0,0,1,18.97-2.264Z" transform="translate(0 16.625)" fill="##2545d5"/>
                    </svg>
                    <strong><small>Phone</small></strong><br>
                    <span class="contact-value">#contacts.phone[i]#</span>
                  </p>
                  <p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="21.374" height="19" viewBox="0 0 21.374 19">
                      <path d="M21.368-7.144A1.2,1.2,0,0,1,20.18-5.952H18.993l.026,5.941a2.668,2.668,0,0,1-.019.3v.6a1.484,1.484,0,0,1-1.484,1.484h-.594c-.041,0-.082-.033-.122,0-.052-.03-.1,0-.156,0h-2.1A1.484,1.484,0,0,1,13.063.891V-2.375a1.186,1.186,0,0,0-1.187-1.187H9.5A1.186,1.186,0,0,0,8.313-2.375V.891A1.484,1.484,0,0,1,6.828,2.375H4.754c-.056,0-.111,0-.167-.007s-.089.007-.134.007H3.859A1.484,1.484,0,0,1,2.375.891V-3.266c0-.033,0-.071,0-.1V-5.952H1.189A1.176,1.176,0,0,1,0-7.144a1.206,1.206,0,0,1,.371-.891l9.514-8.293a1.069,1.069,0,0,1,.816-.3,1.248,1.248,0,0,1,.783.26l9.474,8.331a1.008,1.008,0,0,1,.408.891Z" transform="translate(0 16.625)" fill="##2545d5"/>
                    </svg>
                    <strong><small>Address</small></strong><br>
                    <span class="contact-value">#contacts.address[i]#</span>
                  </p>
                </div>
             
                    
                    <!--- <div class="actions">
                        <div>#linkTo(route="Contact", key=contacts.userID[i], text="View", encode=false)#</div>
                        <div>#linkTo(route="editContact", key=contacts.userID[i], text="Edit", encode=false)#</div>
                        <div>#buttonTo(route="Contact", method="delete", key=contacts.userID[i], text="x", encode=false)#</div>
                    </div>  --->

                </div>
            </cfloop>
          </div>
      
        <!--- Pagination --->
        <ul class="pagination">
            <cfset var contactsPerPage = 8>
            <cfset var totalPages = ceiling(contacts.recordcount / contactsPerPage)>
            <cfparam name="url.page" default="1">
            <cfloop from="1" to="#totalPages#" index="page">
              <cfset var isActive = (page EQ url.page)>
              <li class="#(isActive ? 'active' : '')#">
                <a href="?page=#page#">#page#</a>
              </li>
            </cfloop>
        </ul>

        <cfif contacts.recordcount EQ 0>
            <p class="no-contacts">Sorry, there are no Contacts yet</p>
        </cfif>
    </div>
</cfoutput>