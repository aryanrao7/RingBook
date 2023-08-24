<!DOCTYPE html>
<html>
<head>
    <cfoutput>#csrfMetaTags()#</cfoutput>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            margin: 0;
            padding: 0;
        }

        .contacts-gradient-box {
            width: 100%;
            height: 110px;
            background: linear-gradient(to bottom, #553c9a, #ee4b2b);
            position: absolute;
            top: 0;
            left: 0;
        }

        table .inactive-user {
        opacity: 0.5;
        }
        
        .cx{
            width: 100%;
            height: 60px;
            background: linear-gradient(to bottom, #553c9a, #ee4b2b);
            position: absolute;
            top: 0;
            left: 0;
        }

        .pr p{
            font-size:8px;
            margin-left:113px;
            color:#a39d9d;
        }

        .toggle-btn {
            position: relative;
            display: inline-block;
            width: 40px;
            height: 20px;
            }

            .toggle-btn input {
            opacity: 0;
            width: 0;
            height: 0;
            }

            .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            transition: 0.4s;
            }

            .slider:before {
            position: absolute;
            content: "";
            height: 16px;
            width: 16px;
            left: 2px;
            bottom: 2px;
            background-color: white;
            transition: 0.4s;
            }

            input:checked + .slider {
            background-color: #04fc19;
            }

            input:focus + .slider {
            box-shadow: 0 0 1px #04fc19;
            }

            input:checked + .slider:before {
            transform: translateX(16px);
            }

            .slider.round {
            border-radius: 20px;
            }

            .slider.round:before {
            border-radius: 50%;
            }



        .contact-grid {
            display: flex;
            flex-wrap: wrap;
            margin-top:120px;
            justify-content: space-between;
        }

        .contact-box {
            width: 21%; 
            height: 300px; 
            position: relative;
            padding: 7px;
            margin-right: 25px;
            box-sizing: border-box;
            cursor: pointer;
            transition: background-color 0.3s ease;
            background-color: #fff;
            margin-bottom: 50px; 
            border: 1px solid #444; 
        }

        .contact-box:hover {
            background-color: #e0e0e0;
            transform: scale(1.02);
        }


        .contact-info {
            margin-top: 53px;
            color: #444; 
        }

        .contact-info small {
            font-size: 9px; 
            font-weight: lighter;
        }

        .contact-info .contact-value {
            font-size:16px;
        }

        .profile-pic {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            overflow: hidden;
            position: absolute;
            top: 5;
            right: 0;
            transform: translate(50%, -50%);
            z-index:10;
        }

        .profile-pic1 {
            width: 50px;
            height: 50px;
            /* border-radius: 50%; */
            margin-right:100px;
            /* overflow: hidden; */
            position: absolute;
            /* transform: translate(50%, -50%); */
            z-index:10;
        }

        .table{
            margin-bottom:2000px;
        }

        .table tr{
            height:80px;
        }

        .table th{
            font-weight: normal;
        }

        .table td{
            font-weight:bold;
        }

        .contacts-gradient-box svg{
            width:90px;
            height:90px;
            margin-top:10px;
            margin-left: 20px;
            position:absolute;
        }

        .login-container svg{
            width:250px;
            height:250px;
            margin-top:100px;
            margin-left: 200px;
            position:absolute;
        }

        .svgg svg{
            width:70px;
            height:70px;
            margin-top:220px;
            margin-left: 180px;
            position:absolute;
        }

        .svggg svg{
            width:70px;
            height:70px;
            margin-top:220px;
            margin-left: 280px;
            position:absolute;
        }

        .svgggg svg{
            width:70px;
            height:70px;
            margin-top:220px;
            margin-left: 380px;
            position:absolute;
        }

        .profile-pic img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .gradient-box {
            width: 35%;
            height: 100vh;
            background: linear-gradient(to bottom, #553c9a, #ee4b2b);
            position: absolute;
            top: 0;
            left: 0;
        }

        .gradient-box h1 {
            color: #fff;
            margin-top: 380px;
            font-family: tahoma;
            font-weight: bold;
            font-size: 40px;
            text-align: center;
        }

        .contacts-gradient-box h1 {
            color: #fff;
            margin-left: 110px;
            margin-top: 30px;
            font-family: tahoma;
            font-weight: bold;
            font-size: 30px;
           
        }

        .login-container {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            width: 50%;
            background: white;
            padding: 20px;
        }

        .form-container h2 {
            font-size: 35px;
            font-weight: 600;
            color: #553c9a;
            text-align: left;
            margin-bottom: 20px;
        }

        .inp{
            margin-top:20px;
            display:flex;
        }

        .inp input{
            margin-right:20.5px;
        }

        .inp label{
            display: inline-block;
            width: 6em;
            margin-right: 5em;
            padding-top: 15em;
        }
        

        .input-group1 {
            margin-top: 15px;
        }

        .input-group1 label {
            display: block;
            font-weight: bold;
            font-size: 12px;
            text-align: left;
            margin-bottom: 5px;
        }

        .input-group1 input {
            width: 98.3%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
            transition: border-color 0.3s ease-in-out;
        }

        .input-group {
            margin-top: 15px;
        }

        .input-group label {
            display: block;
            font-weight: bold;
            font-size: 12px;
            text-align: right;
            margin-bottom: 5px;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
            transition: border-color 0.3s ease-in-out;
        }

        .input-group input::placeholder {
            color: #ccc;
        }

        .input-group input:focus {
            border-color: #553c9a;
            font-weight: bold;
        }

        .input-group2 {
            margin-top: 10px;
        }

        .input-group2 label {
            display: block;
            font-weight: bold;
            font-size: 12px;
            text-align: left;
            margin-bottom: -15px;
        }

        .input-group2 input {
            width: 98.3%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
            transition: border-color 0.3s ease-in-out;
        }

        .input-group2 input::placeholder {
            color: #ccc;
        }

        .input-group2 input:focus {
            border-color: #553c9a;
            font-weight: bold;
        }

        .input-group2 label::after {
            content: "*";
            color: red;
        }

        .input-group3 input {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
            transition: border-color 0.3s ease-in-out;
        }

        .input-group3 {
            display: inline-block; 
            width:49%;
            margin-top: 10px;
        }

        .input-group3 .cf-medium {
            width:130%;
        }

        .input-group3 label {
            display: block; 
            width: 200%;
            font-weight: bold;
            font-size: 12px;
            text-align: left;
            margin-bottom: -15px;
        }


        .input-group3 input::placeholder {
            color: #ccc;
        }

        .input-group3 input:focus {
            border-color: #553c9a;
            font-weight: bold;
        }

        .input-group3 label::after {
            content: "*";
            color: red;
        }

        .btn-primary {
            background: linear-gradient(to bottom, #553c9a, #ee4b2b);
            border: none;
            margin-top: 10px;
            width: 100%;
            text-align: center;
        }

        .btn-primary2 {
            background: linear-gradient(to bottom, #553c9a, #ee4b2b);
            border: none;
            margin-top: 10px;
            margin-bottom:150px;
            color:#fff;
            width: 100%;
            text-align: center;
        }

        .links {
            margin-top: 10px;
            text-align: left;
            font-style: italic;
        }

        .search-bar {
            margin-top: 90px;
            width: 80px;
            margin-bottom: 20px;
        }

        .heyx{
            font-weight:bold;
            font-size:50px;
        }

        .search-bar button{
            margin-top:-60px;
            margin-left: 1180px;
        }

        .search-bar input{
            margin-left:1000px;
        }

        .contact-value {
            font-weight: bold;
        }

        .btn-info {
            background-color: #4caf50;
            color: white;
        }

        .btn-danger {
            background-color: #f44336;
            color: white;
        }

        .pagination {
            display: flex;
            list-style-type: none;
            padding: 0;
            margin-top: 20px;
        }

        .pagination li {
            margin-right: 5px;
        }

        .pagination li a {
            border-radius:40px;
            display: block;
            padding: 5px 10px;
            background-color: #f8f8f8;
            text-decoration: none;
            color: #f8f3f3;
        }

        .pagination li.active a {
            background: linear-gradient(to bottom, #553c9a, #ee4b2b);
        }

        .no-contacts {
            margin-top: 10px;
            margin-bottom:650px;
            font-weight: bold;
        }

        .actions {
            display: flex;
            justify-content: flex-end;
            margin-top: -50px;
        }

        .actions button {
            margin-left: 5px;
            font-size: 12px;
            padding: 3px 5px;
        }

        .fname {
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="36.75" height="25" viewBox="0 0 36.75 41.998"><path d="M18.375-15.75a10.5,10.5,0,0,0,10.5-10.5,10.5,10.5,0,0,0-10.5-10.5,10.5,10.5,0,0,0-10.5,10.5A10.5,10.5,0,0,0,18.375-15.75Zm4.159,3.938H14.216A14.218,14.218,0,0,0,0,2.4,2.844,2.844,0,0,0,2.843,5.248H33.908A2.838,2.838,0,0,0,36.75,2.4,14.217,14.217,0,0,0,22.534-11.812Z" transform="translate(0 36.75)" fill="%231d1d1d"/></svg>');
            background-repeat: no-repeat;
            background-position: right center;
            padding-right: 45px; 
        }

        .lname {
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="36.75" height="25" viewBox="0 0 36.75 41.998"><path d="M18.375-15.75a10.5,10.5,0,0,0,10.5-10.5,10.5,10.5,0,0,0-10.5-10.5,10.5,10.5,0,0,0-10.5,10.5A10.5,10.5,0,0,0,18.375-15.75Zm4.159,3.938H14.216A14.218,14.218,0,0,0,0,2.4,2.844,2.844,0,0,0,2.843,5.248H33.908A2.838,2.838,0,0,0,36.75,2.4,14.217,14.217,0,0,0,22.534-11.812Z" transform="translate(0 36.75)" fill="%231d1d1d"/></svg>');
            background-repeat: no-repeat;
            background-position: right center;
            padding-right: 45px; 
        }

        .eml-in{
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 19 14.25"><path d="M9.5-3.562a2.836,2.836,0,0,1-1.75-.609L0-10.2v8.416A1.781,1.781,0,0,0,1.781,0H17.219A1.781,1.781,0,0,0,19-1.781V-10.2l-7.748,6.03A2.858,2.858,0,0,1,9.5-3.562ZM.6-11.233,8.479-5.106a1.663,1.663,0,0,0,2.043,0L18.4-11.233a1.676,1.676,0,0,0,.6-1.236,1.781,1.781,0,0,0-1.781-1.781H1.781A1.781,1.781,0,0,0,0-12.469a1.567,1.567,0,0,0,.6,1.236Z" transform="translate(0 14.25)" fill="%2545d5"/></svg>');
            background-repeat: no-repeat;
            background-position: right center;
            padding-right: 50px;
        }

        .phnin{
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 18.998 19.001"><path d="M18.97-2.264l-.863,3.741a1.153,1.153,0,0,1-1.13.9A17,17,0,0,1,0-14.6a1.153,1.153,0,0,1,.9-1.13L4.639-16.6a1.165,1.165,0,0,1,1.328.672L7.694-11.9a1.161,1.161,0,0,1-.333,1.353l-2,1.6a12.976,12.976,0,0,0,5.919,5.919l1.636-2A1.154,1.154,0,0,1,14.27-5.35L18.3-3.624A1.266,1.266,0,0,1,18.97-2.264Z" transform="translate(0 16.625)" fill="%2545d5"/></svg>');
            background-repeat: no-repeat;
            background-position: right center;
            padding-right: 50px; 
        }

        .addin{
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 21.374 19"><path d="M21.368-7.144A1.2,1.2,0,0,1,20.18-5.952H18.993l.026,5.941a2.668,2.668,0,0,1-.019.3v.6a1.484,1.484,0,0,1-1.484,1.484h-.594c-.041,0-.082-.033-.122,0-.052-.03-.1,0-.156,0h-2.1A1.484,1.484,0,0,1,13.063.891V-2.375a1.186,1.186,0,0,0-1.187-1.187H9.5A1.186,1.186,0,0,0,8.313-2.375V.891A1.484,1.484,0,0,1,6.828,2.375H4.754c-.056,0-.111,0-.167-.007s-.089.007-.134.007H3.859A1.484,1.484,0,0,1,2.375.891V-3.266c0-.033,0-.071,0-.1V-5.952H1.189A1.176,1.176,0,0,1,0-7.144a1.206,1.206,0,0,1,.371-.891l9.514-8.293a1.069,1.069,0,0,1,.816-.3,1.248,1.248,0,0,1,.783.26l9.474,8.331a1.008,1.008,0,0,1,.408.891Z" transform="translate(0 16.625)" fill="%2545d5"/></svg>');
            background-repeat: no-repeat;
            background-position: right center;
            padding-right: 50px; 
        }

        .username-input {
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="36.75" height="25" viewBox="0 0 36.75 41.998"><path d="M18.375-15.75a10.5,10.5,0,0,0,10.5-10.5,10.5,10.5,0,0,0-10.5-10.5,10.5,10.5,0,0,0-10.5,10.5A10.5,10.5,0,0,0,18.375-15.75Zm4.159,3.938H14.216A14.218,14.218,0,0,0,0,2.4,2.844,2.844,0,0,0,2.843,5.248H33.908A2.838,2.838,0,0,0,36.75,2.4,14.217,14.217,0,0,0,22.534-11.812Z" transform="translate(0 36.75)" fill="%231d1d1d"/></svg>');
            background-repeat: no-repeat;
            background-position: left center;
            padding-right: 45px; 
        }

        .username-input::placeholder {
            text-indent: 40px; 
        }

        .username-input:focus {
            text-indent: 40px; 
        }

        .email-input {
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="36.75" height="25" viewBox="0 0 19 14.25"><path d="M9.5-3.562a2.836,2.836,0,0,1-1.75-.609L0-10.2v8.416A1.781,1.781,0,0,0,1.781,0H17.219A1.781,1.781,0,0,0,19-1.781V-10.2l-7.748,6.03A2.858,2.858,0,0,1,9.5-3.562ZM.6-11.233,8.479-5.106a1.663,1.663,0,0,0,2.043,0L18.4-11.233a1.676,1.676,0,0,0,.6-1.236,1.781,1.781,0,0,0-1.781-1.781H1.781A1.781,1.781,0,0,0,0-12.469a1.567,1.567,0,0,0,.6,1.236Z" transform="translate(0 14.25)" fill="%232545d5"/></svg>');
            background-repeat: no-repeat;
            background-position: left center;
            padding-right: 45px; 
        }

        .email-input::placeholder {
            text-indent: 40px; 
        }

        .email-input:focus {
            text-indent: 40px; 
        }


        .password-input {
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="36.75" height="25" viewBox="0 0 36.75 41.926"><path d="M31.5-18.449l-1.312.074v-6.562A11.825,11.825,0,0,0,18.375-36.75,11.825,11.825,0,0,0,6.563-24.937v6.563L5.25-18.449A5.25,5.25,0,0,0,0-13.2V-.074a5.25,5.25,0,0,0,5.25,5.25H31.5a5.25,5.25,0,0,0,5.25-5.25V-13.2A5.3,5.3,0,0,0,31.5-18.449ZM11.812-24.937A6.57,6.57,0,0,1,18.375-31.5a6.57,6.57,0,0,1,6.563,6.563v6.563H11.812Z" transform="translate(0 36.75)" fill="%231d1d1d"/></svg>');
            background-repeat: no-repeat;
            background-position: left center;
            padding-right: 45px; 
        }

        .password-input::placeholder {
            text-indent: 40px; 
        }

        .password-input:focus {
            text-indent: 40px; 
        }

        .password-input1 {
            background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="36.75" height="25" viewBox="0 0 36.75 41.926"><path d="M31.5-18.449l-1.312.074v-6.562A11.825,11.825,0,0,0,18.375-36.75,11.825,11.825,0,0,0,6.563-24.937v6.563L5.25-18.449A5.25,5.25,0,0,0,0-13.2V-.074a5.25,5.25,0,0,0,5.25,5.25H31.5a5.25,5.25,0,0,0,5.25-5.25V-13.2A5.3,5.3,0,0,0,31.5-18.449ZM11.812-24.937A6.57,6.57,0,0,1,18.375-31.5a6.57,6.57,0,0,1,6.563,6.563v6.563H11.812Z" transform="translate(0 36.75)" fill="%231d1d1d"/></svg>');
            background-repeat: no-repeat;
            background-position: right center;
            padding-right: 45px; 
        }

        /* Side Navigation Bar */
        .sidenav {
            height: 100vh;
            width: 250px;
            position: absolute;
            z-index: 1;
            margin-top: 90px;
            left: 0;
            background-color: #f8f8f8;
            overflow-x: hidden;
            padding-top: 20px;
        }

        .hh h1{
            margin-top:90px;
        }

        .hh p{
            margin-top:-35px;
            color:red;
        }

        .sidenav-create {
            height: 100vh;
            width: 250px;
            position: absolute;
            z-index: 1;
            margin-top: -45px;
            left: 0;
            background-color: #f8f8f8;
            overflow-x: hidden;
            /* padding-top: 20px; */
        }

        .sidenav-create a {
            padding: 6px 8px 6px 16px;
            text-decoration: none;
            font-size: 20px;
            color: #444;
            display: block;
            transition: 0.3s;
        }

        .sidenav-create a:hover {
            background-color: #e0e0e0;
        }

        .sidenav-create p.active {
            color: white;
        }

        .sidenav a {
            padding: 6px 8px 6px 16px;
            text-decoration: none;
            font-size: 20px;
            color: #444;
            display: block;
            transition: 0.3s;
        }

        .sidenav a:hover {
            background-color: #e0e0e0;
        }

        .sidenav p.active {
            color: white;
        }

        .content {
            margin-left: 20px;
            padding: 20px;
        }

        .sidenav-acx {
            height: 100vh;
            width: 250px;
            position: absolute;
            z-index: 1;
            margin-top: 90px;
            left: 0;
            background-color: #f8f8f8;
            overflow-x: hidden;
            /* padding-top: 20px; */
        }

        .sidenav-acx a {
            padding: 6px 8px 6px 16px;
            text-decoration: none;
            font-size: 20px;
            color: #444;
            display: block;
            transition: 0.3s;
        }

        .sidenav-acx a:hover {
            background-color: #e0e0e0;
        }

        .sidenav-acx p.active {
            color: white;
        }

        .hhh h1{
            margin-top: 95px;
            font-size:30px;
            font-weight:bold;
        }
    </style>
</head>
<body>
    <cfoutput>
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col">
                        #flashMessages()#
                        #includeContent()#
                    </div>
                </div>
            </div>
        </div>
    </cfoutput>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
            // Get all toggle buttons
        var toggleButtons = document.getElementsByClassName('toggle-btn');

        // Attach click event listener to each toggle button
        Array.prototype.forEach.call(toggleButtons, function(button) {
        button.addEventListener('click', function() {
            console.log(button.dataset.userId);

            var userId = button.getAttribute('data-user-id');
            var toggleAction = button.getAttribute('data-toggle-action');

            // Submit the form to handle the toggle action
            var form = document.createElement('form');
            form.method = 'post';
            form.action = '/users/toggle';
            form.style.display = 'none';

            var userIdInput = document.createElement('input');
            userIdInput.type = 'hidden';
            userIdInput.name = 'userId';
            userIdInput.value = userId;

            
            var toggleActionInput = document.createElement('input');
            toggleActionInput.type = 'hidden';
            toggleActionInput.name = 'toggleAction';
            toggleActionInput.value = toggleAction;

            form.appendChild(userIdInput);
            form.appendChild(toggleActionInput);
            document.body.appendChild(form);

            form.submit();
        });
        });
</script>
</body>
</html>