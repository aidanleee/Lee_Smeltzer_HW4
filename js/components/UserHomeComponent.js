export default {
    props: ['currentuser'],

    template: `
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 col-lg-2 menu">
                <nav>
                    <ul>
                        <li v-for="media in mediaTypes" :data-type="media.description" @click="loadMedia(null, media.description)">
                            <span class="d-none d-md-block">{{ media.name }}</span>
                        </li>
                    </ul>
                </nav>
            </div> 

            <div class="col-12 col-lg-10" id="content">
                <!-- Movies -->
                <div v-if="activeMediaType == 'video' && retrievedMedia.length > 0" class="preview">
                    <div class="row">
                        <video  autoplay controls muted :src="'video/' + currentMediaDetails.movies_trailer" class="fs-video"></video>
                    </div>
                

                    <div class="row contentTitle">
                        <div class="col-10 col-lg-11">
                        </div>
                        <div clas="col-2 col-lg-1">
                            <div >
                                <button class="backbutton" v-on:click="hide()">BACK</button>
                            </div>
                        </div>
                    </div>
                    <div class="row movieInfo">
                        <div class="col-6 col-lg-3">
                            <img :src="'images/video/' + currentMediaDetails.movies_cover">
                        </div>
                        <div class="col-6 col-lg-9">
                            <div class="row">
                                <p class="col-12 col-lg-6 infoTitle">{{currentMediaDetails.movies_title}}</p>
                                <p class="col-3 col-lg-2 infoYear">{{currentMediaDetails.movies_year}}</p>
                                <p class="col-9 col-lg-4 infoRuntime">{{currentMediaDetails.movies_runtime}}</p>
                            </div>
                            <!-- rating -->
                            <p class="infoDesc" v-html="currentMediaDetails.movies_storyline"></p>
                            <div class="row">
                                <div class="col">
                                    <button class="libraryButton">+ My Library</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Music -->
                <div v-if="activeMediaType == 'audio' && retrievedMedia.length > 0" class="preview">
                    <div class="row">
                        <audio class="col-12" autoplay controls :src="'audio/' + currentMediaDetails.audio_src"/>
                    </div>

                    <div class="row contentTitle">
                        <div class="col-10 col-lg-11">
                        </div>
                        <div clas="col-2 col-lg-1">
                            <div >
                                <button class="backbutton" v-on:click="hide()">BACK</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row movieInfo">
                        <div class="col-6 col-lg-3">
                            <img :src="'images/audio/' + currentMediaDetails.audio_cover">
                        </div>
                        <div class="col-6 col-lg-9">
                            <div class="row">
                                <p class="col-12 col-lg-6 infoTitle">{{currentMediaDetails.audio_artist}} - {{currentMediaDetails.audio_title}}</p>
                                <p class="col-3 col-lg-2 infoYear">{{currentMediaDetails.audio_year}}</p>
                            </div>
                            <!-- rating -->
                            <p class="infoDesc" v-html="currentMediaDetails.audio_storyline"></p>
                            <div class="row">
                                <div class="col">
                                    <button class="libraryButton">+ My Library</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!--Stays on bottom-->
                <div class="clearfix">
                    <img v-if="activeMediaType == 'video'" v-for="media in retrievedMedia" :src="'images/video/' + media.movies_cover" alt="media thumb" @click="switchActiveMedia(media)" class="col-4 col-md-2 moviePoster">
                    <img v-if="activeMediaType == 'audio'" v-for="media in retrievedMedia" :src="'images/audio/' + media.audio_cover" alt="media thumb" @click="switchActiveMedia(media)" class="col-4 col-md-2 moviePoster">
                </div> 

                <div class="row decadesDesktop" v-if="activeMediaType == 'video'">
                <!-- Decades Mobile-->
                <div class="col-12 d-lg-none">
                        <a href="fifties" @click.prevent="loadMedia(null, null)"><img src="images/50s_mobile.jpg"></a>
                </div>
                <div class="col-12 d-lg-none">
                        <a href="sixties" @click.prevent="loadMedia('sixties', null)"><img src="images/60s_mobile.jpg"></a>
                </div>
                <div class="col-12 d-lg-none">
                        <a href="seventies" @click.prevent="loadMedia('seventies', null)"><img src="images/70s_mobile.jpg"></a>
                </div>
                <div class="col-12 d-lg-none">
                        <a href="eighties" @click.prevent="loadMedia('eighties', null)"><img src="images/80s_mobile.jpg"></a>
                </div>
                <div class="col-12 d-lg-none">
                        <a href="nineties" @click.prevent="loadMedia('nineties', null)"><img src="images/90s_mobile.jpg"></a>
                </div>

                <!-- Decades Desktop -->
                <div class="col d-none d-lg-block">
                        <a href="nineties" @click.prevent="loadMedia(null, null)"><img src="images/50s_desk.jpg"></a>
                </div>
                <div class="col d-none d-lg-block">
                        <a href="nineties" @click.prevent="loadMedia('sixties', null)"><img src="images/60s_desk.jpg"></a>
                </div>
                <div class="col d-none d-lg-block">
                        <a href="nineties" @click.prevent="loadMedia('seventies', null)"><img src="images/70s_desk.jpg"></a>
                </div>
                <div class="col d-none d-lg-block">
                        <a href="nineties" @click.prevent="loadMedia('eighties', null)"><img src="images/80s_desk.jpg"></a>
                </div>
                <div class="col d-none d-lg-block">
                        <a href="nineties" @click.prevent="loadMedia('nineties', null)"><img src="images/90s_desk.jpg"></a>
                </div>
            </div>

            <div class="row decadesDesktop" v-if="activeMediaType == 'audio'">
                <!-- Decades Mobile-->
                <div class="col-12 d-lg-none">
                        <a href="fifties" @click.prevent="loadMedia(null, null)"><img src="images/50s_mobile.jpg"></a>
                </div>
                <div class="col-12 d-lg-none">
                        <a href="sixties" @click.prevent="loadMedia('sixties', null)"><img src="images/60s_mobile.jpg"></a>
                </div>
                <div class="col-12 d-lg-none">
                        <a href="seventies" @click.prevent="loadMedia('seventies', null)"><img src="images/70s_mobile.jpg"></a>
                </div>
                <div class="col-12 d-lg-none">
                        <a href="eighties" @click.prevent="loadMedia('eighties', null)"><img src="images/80s_mobile.jpg"></a>
                </div>
                <div class="col-12 d-lg-none">
                        <a href="nineties" @click.prevent="loadMedia('nineties', null)"><img src="images/90s_mobile.jpg"></a>
                </div>
        
                <!-- Decades Desktop -->
                <div class="col d-none d-lg-block">
                        <a href="nineties" @click.prevent="loadMedia(null, null)"><img src="images/50s_desk.jpg"></a>
                </div>
                <div class="col d-none d-lg-block">
                        <a href="nineties" @click.prevent="loadMedia('sixties', null)"><img src="images/60s_desk.jpg"></a>
                </div>
                <div class="col d-none d-lg-block">
                        <a href="nineties" @click.prevent="loadMedia('seventies', null)"><img src="images/70s_desk.jpg"></a>
                </div>
                <div class="col d-none d-lg-block">
                        <a href="nineties" @click.prevent="loadMedia('eighties', null)"><img src="images/80s_desk.jpg"></a>
                </div>
                <div class="col d-none d-lg-block">
                        <a href="nineties" @click.prevent="loadMedia('nineties', null)"><img src="images/90s_desk.jpg"></a>
                </div>
                </div>
            </div>
        </div>
    </div> 
    `,

    data() {
        return {
            // set the default to video -> will get a random video via query on create
            activeMediaType: "video",

            // push first (or random) media object here (selected / filtered on create)
            currentMediaDetails: { 
                source: "avengers.mp4",
            },

            // could add more media types here in future
            mediaTypes: [
                { description: "video", name: "Movies"  },
                { description: "audio", name: "Music" },
                { description: "television", name: "TV" }
            ],

            retrievedMedia: [],

            // controls mute / unmute for video element
            vidActive: false
        }

    },

    created: function() {
        console.log('params:', this.$route.params);

        this.loadMedia(null, "video");
    },

    methods: {

        loadMedia(filter, mediaType) {
            // set the active media type
            if (this.activeMediaType !== mediaType && mediaType !== null) {
                this.activeMediaType = mediaType;
            }
            // build the url based on any filter we pass in (will need to expand on this for audio)

            let url = (filter == null) ? `./admin/index.php?media=${this.activeMediaType}` : `./admin/index.php?media=${this.mediaType}&&filter=${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {                    
                    // we're gettin them all, dump it all in the media container
                    this.retrievedMedia = data;
                    // grab the first one in the list and make it active
                    this.currentMediaDetails = data[0];                    
                })
            .catch(function(error) {
                console.error(error);
            });
        },

        switchActiveMedia(media) {
            console.log(media);

            this.currentMediaDetails = media;
        },
        
        hide() {
            document.querySelector(".preview").classList.add('close');
        }
    }
}