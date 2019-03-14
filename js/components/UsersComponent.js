import UserComponent from './UserComponent.js';

export default {
	template: `
	<div class="container">
		<div class="row">
			<div class="col-sm-12 text-center">
				<h1 class="user-message">{{ message }}</h1>
			</div>

			<user v-for="(user, index) in userList" :liveuser="user" :key="index"></user>     

		</div>
	</div>
	`,

	data() {
	  return {
		message: `Choose your profile`,

		userList: []
	  }
	},

	methods: {
	  fetchAllUsers() {
		let url = `./admin/scripts/users.php?allusers=true`;

		fetch(url)
		  .then(res => res.json())
		  .then(data => {this.userList = data})
		.catch(function(error) {
		  console.error(error);
		});
	  }
	},

	components: {
		user: UserComponent
	}
}