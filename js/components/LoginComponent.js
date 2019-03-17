export default {
    template: `
        <div id=signInBG class="container-fluid">
            <div class="row">
                <div class="col-1 col-md-2 col-lg-3"></div>
                <div class="col-10 col-md-8 col-lg-6"><img src="images/roku_flashback.svg" id="loginLogo"></div>
                <div class="col-1 col-md-2 col-lg-3"></div>
            </div>
            <div class="row">
                <div class="col-1 col-md-2 col-lg-3"></div>
                <div class="col-10 col-md-8 col-lg-6" id="signInBox">
                    <form class="text-center p-5" id="signInInfo">
                        <p class="h2 mb-4">Sign In</p>							
                        <input v-model="input.username" type="text" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="Username" required>
                        <input v-model="input.password" type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password" required>							
                        <div class="d-flex justify-content-around">
                            <div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember">
                                    <label class="custom-control-label" for="defaultLoginFormRemember">Remember me</label>
                                </div>
                            </div>
                            <div>
                                <a href="#">Forgot password?</a>
                            </div>
                        </div>
                        <button v-on:click.prevent="login()" class="btn btn-info btn-block my-4" type="submit">Sign in</button>
                        <p>Need an account?</p>
                        <button class="btn btn-info btn-block my-4" type="submit">Register</button>
                    </form>
                </div>
                <div class="col-1 col-md-2 col-lg-3"></div>
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