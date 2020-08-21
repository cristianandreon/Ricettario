<!-- Gestione callback login -->        
<script>
    function onLoginResult(liquid, params) {
        if(params) {
            var command = params.command;
            if(command) {
                if(command.response) {
                    console.info("Command:"+command.name + " - Result:"+command.response.result);
                    if(command.response.result<0) {
                        var error = atob(command.response.error);
                        console.info(error);
                        alert(command.name + " : " + error);
                    } else {
                        var message = atob(command.response.message);
                        // alert(command.name + " : " + message);
                        Liquid.disableUnloadPagePrompt();
                        location.reload();
                    }
                } else {
                    alert("null response in login service");
                }
            }
        }
    }
</script>
<script>
    function onLogintab(obj) {
        if(obj.parentNode.id === 'loginTab') {
            document.getElementById('registerDiv').style.display = 'none';
            document.getElementById('loginDiv').style.display = '';
            document.getElementById('loginTab').className = "liquidTabSel";
            document.getElementById('registerTab').className = "";
            document.getElementById('loginTab').className = "liquidTabSel";
        } else {
            document.getElementById('registerDiv').style.display = '';
            document.getElementById('loginDiv').style.display = 'none';
            document.getElementById('registerTab').className = "liquidTabSel";
            document.getElementById('loginTab').className = "";
        }                    
    }
    function onLogintab(obj) {
        if(obj.parentNode.id === 'loginTab') {
            document.getElementById('registerDiv').style.display = 'none';
            document.getElementById('loginDiv').style.display = '';
            document.getElementById('loginTab').className = "liquidTabSel";
            document.getElementById('registerTab').className = "";
            document.getElementById('loginTab').className = "liquidTabSel";
        } else {
            document.getElementById('registerDiv').style.display = '';
            document.getElementById('loginDiv').style.display = 'none';
            document.getElementById('registerTab').className = "liquidTabSel";
            document.getElementById('loginTab').className = "";
        }                    
    }
</script>
<form id="formLogin">
    <div class="liquidForeignTables" style="width: 500px; background-color: transparent">
        <ul>
            <li id="loginTab" class="liquidTabSel"><a href="javascript:void(0)" class="liquidTab liquidForeignTableEnabled" onClick="onLogintab(this)">Login</a></li>
            <li id="registerTab" class=""><a href="javascript:void(0)" class="liquidTab liquidForeignTableEnabled" onClick="onLogintab(this)">Register</a></li>
        </ul>
    </div>                        
    <div id="loginDiv">
        <input id="redirect" type="hidden" value="./" />
        <table border=0 cellspacing=10 cellpadding=10 style="background-color: darkRed; font-family: verdana; font-size:13px; padding:0px; width:500px; height:auto; font-size:9pt; table-layout:auto; border:1px solid lightgray;">
            <tr>
                <td colspan="2" style="height: 50px;font-size:20px;vertical-align: baseline;text-align: center;background-color: #03a9f41a;">Login</td>
            </tr>
            <tr>
                <td colspan="1" style="width:1px; height:1px;">
                    User
                </td>
                <td colspan="1" style="width:1px; height:1px;">
                    <input id="user" type="text"/>
                </td>
            </tr>
             <tr>
                <td colspan="1" style="width:1px; height:1px;">
                    Password
                </td>
                <td colspan="1" style="width:1px; height:1px;">
                    <input id="password" type="password"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width:1px; z-index:90000; position:relative; padding-right: 3px;">
                    <center>
                        <% out.println( workspace.get_login_button("Login", "width:150px; height:40px; color:darkRed", "formLogin", "onLoginResult") ); %>
                    </center>
                 </td>
            </tr>
        </table>
        <br/>
        <br/>
    </div>
    <div id="registerDiv" style="display:none">
        <table border=0 cellspacing=10 cellpadding=10 style="background-color: #f4f6f785; font-family: verdana; font-size:20px; padding:0px; width:500px; height:auto; font-size:9pt; table-layout:auto; border:1px solid lightgray;">
            <tr>
                <td colspan="2" style="height: 50px;font-size:20px;vertical-align: baseline;text-align: center;background-color: #03a9f41a;">Register user / Recovery password</td>
            </tr>
            <tr>
                <td colspan="1" style="width:1px; height:1px;">
                    Email
                </td>
                <td colspan="1" style="width:1px; height:1px;">
                    <input id="email" type="email"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width:1px; z-index:90000; position:relative; padding-right: 3px;">
                    <center>
                        <% out.println( workspace.get_register_control("Register", "width:150px; height:40px; color:darkRed", "formLogin", "onLoginResult") ); %>
                        <% out.println( workspace.get_recovery_control("Recovery", "width:150px; height:40px; color:darkRed", "formLogin", "onLoginResult") ); %>
                    </center>
                 </td>
            </tr>
        </table>
    </div>
</form>
</center>
<br/>
<br/>
<br/>
<br/>
