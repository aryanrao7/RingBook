<!--- Contact Form Contents --->
<cfoutput>
    <div class="sidenav-create">
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

        <p style="display: flex; align-items: center;">
            <svg xmlns="http://www.w3.org/2000/svg" width="23" height="20.125" viewBox="0 0 23 20.125">
                <path d="M4.313,1.438H7.188A1.436,1.436,0,0,0,8.625,0,1.436,1.436,0,0,0,7.188-1.437H4.313A1.438,1.438,0,0,1,2.875-2.875v-11.5a1.438,1.438,0,0,1,1.438-1.437H7.188A1.437,1.437,0,0,0,8.625-17.25a1.437,1.437,0,0,0-1.437-1.437H4.313A4.312,4.312,0,0,0,0-14.375v11.5A4.313,4.313,0,0,0,4.313,1.438ZM22.677-9.411,16.2-15.521a1.081,1.081,0,0,0-1.168-.206,1.079,1.079,0,0,0-.652.991l0,3.234H8.629a1.438,1.438,0,0,0-1.438,1.438V-7.19A1.438,1.438,0,0,0,8.629-5.752h5.75l0,3.194a1.079,1.079,0,0,0,.652.991A1.081,1.081,0,0,0,16.2-1.774l6.473-6.109A1.064,1.064,0,0,0,22.677-9.411Z" transform="translate(0 18.688)" fill="##1d1d1d"/>
            </svg>
            #linkTo(route="logout", text="Log Out")#
        </p>
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

    <form action ="/contacts/create" method = "POST" enctype = "multipart/form-data">
    <div class="hh">
        <h1>Create a Contact</h1></br>
        <p>* Indicates a required field</p>
    </div>
        <div class = "input-group3">
            <label for = "firstname"><strong>First Name</strong></label></br>
            <input type = "text" name = "contact.firstname" id = "firstname" class = "form fname">
        </div>

        <div class = "input-group3">
            <label for = "lastname"><strong>Last Name</strong></label></br>
            <input type = "text" name = "contact.lastname" id = "lastname" class = "form lname">
        </div>

        <div class = "input-group2">
            <label for = "email"><strong>Email</strong></label></br>
            <input type = "text" pattern = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required name = "contact.email" id = "email" class = "form eml-in">
        </div>

        <div class = "input-group2">
            <label for = "phone"><strong>Phone</strong></label></br>
            <input type = "text" name = "contact.phone" id = "phone" class = "form phnin">
        </div>

        <div class = "input-group2">
            <label for = "Address"><strong>Address</strong></label></br>
            <input type = "text" name = "contact.address" id = "address" class = "form addin" placeholder="Street Address">
            <div class = "inp">
                <input type = "text" name = "contact.address" id = "address" class = "form-control-rounded" placeholder="Suite/Apt&##35;">
                <input type = "text" name = "contact.address" id = "address" class = "form-control-rounded" placeholder="City">
                <input type = "text" name = "contact.address" id = "address" class = "form-control-rounded" placeholder="State">
                <input type = "text" name = "contact.address" id = "address" class = "form-control-rounded" placeholder="Zip Code">
            </div>
        </div>
<!--- add icons --->

        <div class = "input-group1">
            #fileField(objectName = "contact", property = "profilePic", label = "Profile Picture")#
        </div>

        <button type = "submit" class = "btn btn-primary2">CREATE</button>

    </form>
<!--- CLI-Appends-Here --->
</cfoutput>
