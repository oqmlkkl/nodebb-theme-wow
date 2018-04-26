<div class="category"style="display:inline-block;right: 10%;position: absolute;width:15%">
        <ul>
            <li>
                <div class="card" style="background-color:rgba(131, 228, 255, 0.18);text-align:center">
                    <p style="margin-top:5px"><u><div id="year-badge"></div></u></p>
                    <div id="elapsed-time-badge"></div>
                    <p id="online-users-badge"></p>
                </div>
            </li>
        </ul> 
        <script language="JavaScript" type="text/javascript">
            {literal}
            var settings = {
                "async": true,
                "crossDomain": true,
                "url": "/api/users?section=online",
                "method": "GET"
                };
            $.ajax(settings).done(function (response) {
                $('#online-users-badge')[0].innerHTML = "当前在线"+response.users.length+"位";
                let year = new Date().getFullYear();
                $('#year-badge')[0].innerHTML = "黑暗之门" + year + "年";
                var date1 = new Date();
                var startDate = new Date("4/18/2018");
                var timeDiff = Math.abs(startDate.getTime() - date1.getTime());
                var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24));
                $('#elapsed-time-badge')[0].innerHTML =  "成立" + diffDays + "天";
            });
            {/literal}
        </script>
</div>