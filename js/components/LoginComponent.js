export default {
    template: `
    <div id="login-section" class="container">
        <div class="row">
            <form class="col-10 offset-1" id="login-form">
                <h2 class="offset-1">Sign In:</h2>
                <input v-model="input.username" type="text" id="username" placeholder="Username" required class="col-10 offset-1 textbox">
                <input v-model="input.password" type="password" id="password" placeholder="Password" required class="col-10 offset-1 textbox">
                <div class="col-10 offset-1" id="signinBttns">
                    <button v-on:click.prevent="login()" type="submit" class="login-button">Sign In</button>
                </div>
            </form>
        </div>
    </div>
     `,
 
     data() {
         return {
             input: {
                 username: "",
                 password: ""
             },

         }
     },
 
     methods: {
         login() {
            //console.log(this.$parent.mockAccount.username);
 
            if(this.input.username != "" && this.input.password != "") {
            // fetch the user from the DB
            // generate the form data
            let formData = new FormData();

             formData.append("username", this.input.username);
             formData.append("password", this.input.password);

             let url = `./admin/scripts/admin_login.php`;
 
             fetch(url, {
                    method: 'POST',
                    body: formData
                })
                 .then(res => res.json())
                 .then(data => {
                    if (typeof data != "object") { // means that we're not getting a user object back
                        console.warn(data);
                        console.error("authentication failed, please try again");
                        this.$emit("autherror", data);
                    } else {
                        this.$emit("authenticated", true, data[0]);
                        this.$router.replace({ name: "users" });
                    }
                })
             .catch(function(error) { 
                 console.log(error);
             });
        } else {
                 console.log("A username and password must be present");
            }
        }
    }
 }