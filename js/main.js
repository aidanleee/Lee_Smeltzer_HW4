
import LoginComponent from './components/LoginComponent.js';


let router = new VueRouter({

  routes: [
      { path: '/', redirect: { name: "login"} },
      { path: '/login', name: "login", component: LoginComponent },
  ]
});

const vm = new Vue({
 
  data: {
    authenticated: false,
    administrator: false,

    mockAccount: {
      username: "user",
      password: "password"
    },

    user: [],

    //currentUser: {},
  },

  created: function() {
  console.log("parent is live");

    if (localStorage.getItem("cachedUser")) {
      let user = JSON.parse(localStorage.getItem("cachedUser"));
      this.authenticated = true;
      // params not setting properly, so this route needs to be debugged a bit...
      this.$router.push({ name: "home", params: { currentuser: user }});
    } else {
      this.$router.push({ path: "/login"} );
    }
  },

  methods: {
    setAuthenticated(status, data) {
      this.authenticated = status;
      this.user = data;
    },

    logout() {
      if (localStorage.getItem("cachedUser")) {
        localStorage.removeItem("cachedUser");
      }
      this.$router.push({ path: "/login" });
      this.authenticated = false;
      
      
    }
  },

  router: router
}).$mount("#app");

router.beforeEach((to, from, next) => {
  console.log('router guard fired!', to, from, vm.authenticated);

  if (vm.authenticated == false) {
    next("/login");
  } else {
    next();
  }
});