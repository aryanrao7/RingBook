<cfscript>
    mapper()
    // Put above resources
        .get(name = "resetPassword", pattern = "users/resetPassword", to = "users##resetPassword")
        .post(name = "loginUser", pattern = "users/login", to = "users##login")
        .get(name = "resetUserPassword", pattern = "users/resetUserPassword/[key]", to = "users##resetUserPassword")
        .get(name = "search", pattern = "contacts/search", to = "contacts##search")
        .post(name = "toggleUser", pattern = "users/toggle", to = "users##toggle")
        .get(name = "accounts", pattern = "users/accounts", to = "users##accounts")
        .get(name = "promote", pattern = "users/promote/[key]", to = "users##promote")
        .get(name = "demote", pattern = "users/demote/[key]", to = "users##demote")
        .get(name = "impersonate", pattern = "users/impersonate/[key]", to = "users##impersonate")
        .delete(name = "delete", pattern = "users/delete/:key", to = "users##delete")
        .get(name = "logout", pattern = "users/logout", to = "users##logout")
        .get(name = "forgotPassword", pattern = "users/forgotPassword", to = "users##forgotPassword")
        .post(name = "saveNewPassword", pattern = "users/saveNewPassword", to = "users##saveNewPassword")
        .post(name = "resetPasswordForm", pattern = "users/resetPasswordForm", to = "users##resetPasswordForm")

    .resources("contacts")
    .resources("users")
    .wildcard()
    .root(to = "wheels##wheels", method = "get")
    .end();
</cfscript>