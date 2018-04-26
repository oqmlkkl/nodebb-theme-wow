$(document).ready(function(){

    fetchOnlineUsers(setOnlineUsers);
	setYear();
	setElapsedTime();
	setBadgeLoad();

    function fetchOnlineUsers(callback){
		var settings = {
			"async": true,
			"crossDomain": true,
			"url": "/api/users?section=online",
			"method": "GET"
			}

		$.ajax(settings).done(function (response) {
			callback(response);
		});
	}

	function setOnlineUsers(result){
		$('#online-users-badge')[0].innerHTML = "当前在线"+result.users.length+"位";
	}

	function setYear(){
		let year = new Date().getFullYear();
		$('#year-badge')[0].innerHTML = "黑暗之门" + year + "年";
	}

	function setElapsedTime(){
		var date1 = new Date();
		var startDate = new Date("4/18/2018");
		var timeDiff = Math.abs(startDate.getTime() - date1.getTime());
		var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));
		$('#elapsed-time-badge')[0].innerHTML =  "成立" + diffDays + "天";
	}

	function setBadgeLoad(){
		$("#online-users-badge").on("load", function(){
			fetchOnlineUsers(setOnlineUsers);
		});
		$("#year-badge").on("load", function(){
			setYear();
		});
		$("#elapsed-time-badge").on("load", function(){
			setElapsedTime();
		});
	}


})