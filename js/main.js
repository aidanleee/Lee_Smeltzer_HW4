// components go here
import HomeComponent from './components/HomeComponent.js';
import LoginComponent from './components/LoginComponent.js';

const routes = [
    { path: '/', redirect: { name: "home"} },
    { path: '/home', name: "home", component: HomeComponent },
    { path: '/login', name: "login", component: HomeComponent },
];

const router = new VueRouter({
    routes
});

const vm = new Vue ({

    data: {
        message: "sup from vue!",
    },

    created: function() {
        console.log("parent is live");
    },

    methods: {

    },

    router: router

}).$mount("#app");