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
			<!-- IMPORT partials/category/badge.tpl -->
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
