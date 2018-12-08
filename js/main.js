(() => {
    const vm = new Vue({
        el: '#app',

        data : {
            copyright : "2018 Roku, Inc. All rights reserved."

        },

        methods : {
            openNav() {
                document.getElementById("mySidenav").style.width = "250px";
            },
            
            closeNav() {
                document.getElementById("mySidenav").style.width = "0";
            }

        },
    });
})();