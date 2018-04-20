<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>

<div class="row" style="background-image: url('https://wallpapertag.com/wallpaper/full/5/5/1/35799-vertical-wow-wallpaper-1920x1200-screen.jpg')">
	<div class="<!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
		<h1 class="categories-title">[[pages:categories]]</h1>
		<div>
			<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList" style="display:inline-block;width:30%">
				<!-- BEGIN categories -->
				<!-- IMPORT partials/categories/item.tpl -->
				<!-- END categories -->
			</ul>
			<div class="category"style="display:inline-block;right: 10%;position: absolute;width:15%">
				<ul>
					<li>
			<div class="card" style="background-color:rgba(131, 228, 255, 0.18);text-align:center">
				<p style="margin-top:5px"><u>	黑暗之门<script>document.write(new Date().getFullYear())</script>年</u></p>
				<div>					
					<script>	
							var date1 = new Date();
							var date2 = new Date("4/18/2018");
							var timeDiff = Math.abs(date2.getTime() - date1.getTime());
							var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24)); 
							document.write("纸房子成立 " + diffDays + "天");
					</script>
				</div>
				<p id="online-users-badge"></p>
			</div></li>
			</ul>
			</div>
		</div>
	</div>
	<div widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		<!-- BEGIN widgets.sidebar -->
		{{widgets.sidebar.html}}
		<!-- END widgets.sidebar -->
	</div>
</div>
<div widget-area="footer">
	<!-- BEGIN widgets.footer -->
	{{widgets.footer.html}}
	<!-- END widgets.footer -->
</div>
