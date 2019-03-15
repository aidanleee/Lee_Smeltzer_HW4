export default {
    props: ['currentuser'],

    template: `


    
    <div class="container">
    <div class="row">
        <nav class="col-12 col-lg-2">
            <ul>
                <li v-for="media in mediaTypes" :data-type="media.description" @click="loadMedia(null, media.description)">
                    <span class="d-none d-md-block">{{ media.description }}</span>
                </li>
            </ul>
        </nav>

        <section id="content-sect" class="col-12 col-lg-10">
            <div v-if="activeMediaType == 'video' && retrievedMedia.length > 0">
                <div class>
                    <video autoplay controls muted :src="'video/' + currentMediaDetails.movies_trailer" class="fs-video"></video>
                </div>

                <div>
                    <h4 class="media-title">{{currentMediaDetails.movies_title}}</h4>
                    <p class="media-details" v-html="currentMediaDetails.movies_storyline"></p>
                    <span class="media-time">{{currentMediaDetails.movies_runtime}}</span>
                    <span class="media-year">Released in {{currentMediaDetails.movies_year}}</span>
                </div>
            </div>

            <div v-if="activeMediaType == 'audio' && retrievedMedia.length > 0">
                <div>
                    <audio autoplay controls :src="'audio/' + currentMediaDetails.audio_src"/>
                    <img :src="'images/audio/' + currentMediaDetails.audio_cover" alt="album art" class="img-fluid"/>
                </div>

                <div>
                    <h4 class="media-title">{{currentMediaDetails.audio_artist}} * {{currentMediaDetails.audio_title}}</h4>
                    <p class="media-details" v-html="currentMediaDetails.audio_storyline"></p>
                    <span class="media-year">Released in {{currentMediaDetails.audio_year}}</span>              
                </div>
            </div>

            <div>
                    <!-- genres for video -->
                        <ul v-if="activeMediaType == 'video'" class="media-genres">
                            <li>
                                <a href="fifties" @click.prevent="loadMedia(null, null)">50's</a>
                            </li>
                            <li>
                                <a href="sixties" @click.prevent="loadMedia('sixties', null)">60's</a>
                            </li>
                            <li>
                                <a href="seventies" @click.prevent="loadMedia('seventies', null)">70's</a>
                            </li>
                            <li>
                                <a href="eighties" @click.prevent="loadMedia('eighties', null)">80's</a>
                            </li>
                            <li>
                                <a href="nineties" @click.prevent="loadMedia('nineties', null)">90's</a>
                            </li>
                        </ul>
    
                    <!-- genres for audio -->
                    <ul v-else class="media-genres">
                            <li>
                                <a href="fifties" @click.prevent="loadMedia(null, null)">50's</a>
                            </li>
                            <li>
                                <a href="sixties" @click.prevent="loadMedia('sixties', null)">60's</a>
                            </li>
                            <li>
                                <a href="seventies" @click.prevent="loadMedia('seventies', null)">70's</a>
                            </li>
                            <li>
                                <a href="eighties" @click.prevent="loadMedia('eighties', null)">80's</a>
                            </li>
                            <li>
                                <a href="nineties" @click.prevent="loadMedia('nineties', null)">90's</a>
                            </li>
                        </ul>
                    <div class="clearfix">
                        <img v-if="activeMediaType == 'video'" v-for="media in retrievedMedia" :src="'images/video/' + media.movies_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb">
                        <img v-if="activeMediaType == 'audio'" v-for="media in retrievedMedia" :src="'images/audio/' + media.audio_cover" alt="media thumb" @click="switchActiveMedia(media)" class="img-thumbnail rounded float-left media-thumb audio-thumb">
                    </div>
                </div>
        </section>
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
                { description: "audio" },
                { description: "video" },
                { description: "television" }
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
        }
    }
}