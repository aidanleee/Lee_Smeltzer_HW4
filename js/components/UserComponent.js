export default {
    props: ['liveuser'],

    template: `
		<div @click="navToUserProfile()" class="user-cont text-center col-6 col-md-3">
            <div class="profileIcon">
                <div class="user-icon">
                    <span>{{ liveuser.finitial }}</span>
                </div>
                <p>{{ liveuser.fname }}</p>
            </div>
        </div>
	`,

    created: function() {
        if (this.liveuser.avatar == null) {
            this.liveuser.avatar = "temp_avatar.jpg";
        }
    },

    methods: {
        navToUserProfile() {            
            this.$router.push({ name: "adultskids", params: { currentuser: this.liveuser } });
            // set a localstorage session object so that we don't have to log back in on page refresh or after our initial login
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser)); 
        }
    }
}