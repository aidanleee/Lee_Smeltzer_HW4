(() => {
    // component will go here

    const LoginComponent = {
        template:
        `<div id="signInBG"></div>

        <div class="container-fluid">
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
                        <input type="email" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="E-mail">
                        <input type="password" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Password">							
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
                        <button class="btn btn-info btn-block my-4" type="submit">Sign in</button>
                        <p>Need an account?</p>
                        <button class="btn btn-info btn-block my-4" type="submit">Register</button>
                    </form>
                </div>
                <div class="col-1 col-md-2 col-lg-3"></div>
            </div>
        </div>`
    }

    const HeaderComponent = {
        template:
        `<div class="row header">
            <div class="col-6 col-md-6 col-lg-4"><img src="images/roku_flashback.svg" id="logo"></div>
            <div class="col-1 col-md-3 col-lg-5"><!--Filler--></div>
            <div class="col-3 col-md-2" class="headerNav">
                <div class="md-form mt-0">
                    <input class="form-control" type="text" placeholder="Search" aria-label="Search">
                </div>	
            </div>
            <div class="col-2 col-md-1">
                <img src="images/usericon.svg" class="userIcon">
            </div>
        </div>`
    };

    const DecadeComponent = {
        template: 
        `<div class="row">
            <!-- Side Menu-->
            <div class="col-12 col-lg-2 menu">
                <nav>
                    <ul>
                        <li><a href="#">Movies</a></li>
                        <li><a href="#">TV</a></li>
                        <li><a href="#">Music</a></li>
                    </ul>
                </nav>
            </div>  
            
            <!-- 1980's -->
            <div class="col-12 col-lg-10" id="content">
                <div class="row contentTitle">
                    <div class="col-10 col-lg-11">
                        <h2>Your Library</h2>
                    </div>
                    <div clas="col-2 col-lg-1">
                        <div >
                            <button class="backbutton">BACK</button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col libraryThumb">
                        <a href="#"><img src="images/thumb_backtothefuture.jpg"></a>
                        <div class="libraryTitle"><p>Back to the Future, 1985</p></div>
                    </div>
                    <div class="col libraryThumb">
                        <a href="#"><img src="images/thumb_backtothefuture.jpg"></a>
                        <div class="libraryTitle"><p>Back to the Future, 1985</p></div>
                    </div>
                    <div class="col d-none d-md-block libraryThumb">
                            <a href="#"><img src="images/thumb_backtothefuture.jpg"></a>
                    <div class="libraryTitle"><p>Back to the Future, 1985</p></div>
                    </div>
                    <div class="col d-none d-xl-block libraryThumb">
                        <a href="#"><img src="images/thumb_backtothefuture.jpg"></a>
                        <div class="libraryTitle"><p>Back to the Future, 1985</p></div>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-10 col-lg-11"></div>
                    <div clas="col-2 col-lg-1">
                        <div >
                            <button class="backbutton">MORE</button>
                        </div>
                    </div>
                </div>
                <div class="row decadesDesktop">
                    <!-- DECADES MOBILE -->
                    <div class="col-12 d-lg-none">
                        <a href="#"><img src="images/50s_mobile.jpg"></a>
                    </div>
                    <div class="col-12 d-lg-none">
                        <a href="#"><img src="images/60s_mobile.jpg"></a>
                    </div>
                    <div class="col-12 d-lg-none">
                        <a href="#"><img src="images/70s_mobile.jpg"></a>
                    </div>
                    <div class="col-12 d-lg-none">
                        <a href="#"><img src="images/80s_mobile.jpg"></a>
                    </div>
                    <div class="col-12 d-lg-none">
                        <a href="#"><img src="images/90s_mobile.jpg"></a>
                    </div>
                    <!-- DECADES DESKTOP -->
                    <div class="col d-none d-lg-block">
                        <a href="#"><img src="images/50s_desk.jpg"></a>
                    </div>
                    <div class="col d-none d-lg-block">
                        <a href="#"><img src="images/60s_desk.jpg"></a>
                    </div>
                    <div class="col d-none d-lg-block">
                        <a href="#"><img src="images/70s_desk.jpg"></a>
                    </div>
                    <div class="col d-none d-lg-block">
                        <a href="#"><img src="images/80s_desk.jpg"></a>
                    </div>
                    <div class="col d-none d-lg-block">
                        <a href="#"><img src="images/90s_desk.jpg"></a>
                    </div>
                </div>
            </div>
        </div>`
    };

    const MoviesComponent = {
        template:
        `<div class="row">
            <!-- Side Menu-->
            <div class="col-12 col-lg-2 menu">
                <nav>
                    <ul>
                        <li><a href="#">Movies</a></li>
                        <li><a href="#">TV</a></li>
                        <li><a href="#">Music</a></li>
                    </ul>
                </nav>
            </div>
            <!-- Library -->
            <div class="col-12 col-lg-10" id="content">
                <div class="row contentTitle">
                    <div class="col-10 col-lg-11">
                        <h2>1980's Movies</h2>
                    </div>
                    <div clas="col-2 col-lg-1">
                        <div >
                            <button class="backbutton">BACK</button>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4 col-md-2"><a href="#"><img class="moviePoster" src="images/cover_80s_footloose.jpg"></a></div>
                    <div class="col-4 col-md-2"><a href="#"><img class="moviePoster" src="images/cover_80s_raiders.jpg"></a></div>
                    <div class="col-4 col-md-2"><a href="#"><img class="moviePoster" src="images/cover_80s_empirestrikesback.jpg"></a></div>
                    <div class="col-4 col-md-2"><a href="#"><img class="moviePoster" src="images/cover_80s_backtothefuture.jpg"></a></div>
                    <div class="col-4 col-md-2"><a href="#"><img class="moviePoster" src="images/cover_80s_poltergeist.jpg"></a></div>
                    <div class="col-4 col-md-2"><a href="#"><img class="moviePoster" src="images/cover_80s_empirestrikesback.jpg"></a></div>
                    <div class="col-4 col-md-2"><a href="#"><img class="moviePoster" src="images/cover_80s_empirestrikesback.jpg"></a></div>
                    <div class="col-4 col-md-2"><a href="#"><img class="moviePoster" src="images/cover_80s_empirestrikesback.jpg"></a></div>
                    <div class="col-4 col-md-2"><a href="#"><img class="moviePoster" src="images/cover_80s_empirestrikesback.jpg"></a></div>
                    <div class="col-4 col-md-2"><a href="#"><img class="moviePoster" src="images/cover_80s_empirestrikesback.jpg"></a></div>
                    <div class="col-4 col-md-2"><a href="#"><img class="moviePoster" src="images/cover_80s_empirestrikesback.jpg"></a></div>
                    <div class="col-4 col-md-2"><a href="#"><img class="moviePoster" src="images/cover_80s_empirestrikesback.jpg"></a></div>
                </div>
            </div>
        </div>`
    };

    const MovieInfoComponent = {
        template:
        `<div class="row">
            <!-- Side Menu-->
            <div class="col-12 col-lg-2 menu">
                <nav>
                    <ul>
                        <li><a href="#">Movies</a></li>
                        <li><a href="#">TV</a></li>
                        <li><a href="#">Music</a></li>
                    </ul>
                </nav>
            </div>
            <!-- Movie Info -->
            <div class="col-12 col-lg-10" id="content">
				<div class="row contentTitle">
					<div class="col-10 col-lg-11">
					</div>
					<div clas="col-2 col-lg-1">
						<div >
							<button class="backbutton">BACK</button>
						</div>
					</div>
				</div>
				<div class="row movieInfo">
					<div class="col-6 col-lg-3">
						<img src="images/cover_80s_thebreakfastclub.jpg">
					</div>
					<div class="col-6 col-lg-9">
						<div class="row">
							<p class="col-12 col-lg-6 infoTitle">The Breakfast Club</p>
							<p class="col-3 col-lg-2 infoYear">1985</p>
							<p class="col-9 col-lg-4 infoRuntime">1h 37m</p>
						</div>
						<!-- rating -->
						<p class="infoDesc">Five high school students meet in Saturday detention and discover how they have a lot more in common than they thought.</p>
						<p class="infoCast">Emilio Estevez, Judd Nelson, Molly Ringwald, Ally Sheedy, Anthony Michael Hall</p>
						<div class="row">
							<div class="col">
								<button class="libraryButton">+ My Library</button>
							</div>
						</div>
					</div>
				</div>
            </div>
        </div>`
    };

    const routes = [
        { path: '/', name: 'home', component: HomePageComponent },
        { path: '/users', name: 'users', component: UsersPageComponent }
    ];

    const router = new VueRouter({
        routes
    });

    const vm = new Vue({
        el: '#app',

        data: {
            message: "hello from vue"
        },

        created: function() {
            console.log('parent is live');
        },

        methods: {
            logParent(message) {
                console.log("from the parent", message);
            },

            logMainMessage(message) {
                console.log("called from inside a child, lives in the parent", message);
            }
        },

        components: {
            'LoginComponent': LoginComponent,
            'HeaderComponent': HeaderComponent,
            'DecadeComponent': DecadeComponent,
            'MoviesComponent': MoviesComponent,
            'MovieInfoComponent': MovieInfoComponent,
        },

        router: router
    })
})();