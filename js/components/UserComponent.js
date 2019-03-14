export default {
    props: ['liveuser'],

    template: `
    <div class="mx-auto">
        <div @click="navToUserHome()">
            <div class="text-center">
                <div class="elipse-users">
                    <span>{{ liveuser.finitial }}</span>
                </div>
                <p>{{ liveuser.fname }}</p>
            </div>
        </div>
    </div>`,

    created: function() {
        if (this.liveuser.avatar == null) {
            this.liveuser.avatar = "temp_avatar.jpg";
        }
    },

    methods: {
        navToUserHome() {            
            this.$router.push({ name: "home", params: { currentuser: this.liveuser } });
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser)); 
        }
    }
}