export default {
    template: `
    <div class="container-fluid" id="akBG">
    <div class="row">
        <div class="col-1 col-md-2 col-lg-3"></div>
        <div class="col-10 col-md-8 col-lg-6"><img src="images/roku_flashback.svg" id="loginLogo"></div>
        <div class="col-1 col-md-2 col-lg-3"></div>
    </div>
    <div class="row">
        <div class="col-3 col-lg-3"></div>
        <div class="col-6 col-lg-3">
                <button class="akButtons" @click="navToUserHome()"><h2>Adults</h2></button>
        </div>
        <div class="col-3 d-lg-none"></div>
        <div class="col-3 d-lg-none"></div>
        <div class="col-6 col-lg-3">
                <button class="akButtons" @click="navToUserKids()"><h2>KIDS</h2></button>
        </div>
        <div class="col-3 col-lg-3"></div>
    </div>
</div>
     `,
 
     data() {
         return {
             message: "hello from Vue"
         }
     },

     created: function() {
         console.log("adult kid page");
     },
 
     methods: {

        navToUserKids() {            
            this.$router.push({ name: "kidshome", params: { currentuser: this.liveuser } });
            // set a localstorage session object so that we don't have to log back in on page refresh or after our initial login
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser)); 
        },

        navToUserHome() {            
            this.$router.push({ name: "home", params: { currentuser: this.liveuser } });
            // set a localstorage session object so that we don't have to log back in on page refresh or after our initial login
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser)); 
        }

     }
 }