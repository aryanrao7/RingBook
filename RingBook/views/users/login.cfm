<!--- User Login Form --->
<cfoutput>
    <h1>Login User</h1>
    #errorMessagesFor("user")#
    #startFormTag(id="userLoginForm", action="users/login")#
        <div class="col-md-6">
            <label for="username"><strong>Username</strong></label><br>
            <input type="text" name="user.username" id="username" class="form-control-rounded">
        </div>
        <div class="col-md-6">
            <label for="password"><strong>Password</strong></label><br>
            <input type="password" name="user.password" id="password" class="form-control-rounded">
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
    </form>
    #endFormTag()# 
</cfoutput>

