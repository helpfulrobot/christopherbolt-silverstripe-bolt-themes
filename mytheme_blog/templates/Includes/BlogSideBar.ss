<% if $SideBar %>
$SideBar
<% else %>

<% if $CategoriesList %>
<div class="WidgetHolder BlogCategoryWidget">
<h3>Categories</h3>
<% include BlogCategoriesWidget Categories=$CategoriesList %>
</div>
<% end_if %>

<% if $RecentPosts %>
<div class="WidgetHolder BlogRecentPostsWidget">
<h3>Recent Posts</h3>
<% include BlogRecentPostsWidget Posts=$RecentPosts %>
</div>
<% end_if %>

<% if $ArchiveList %>
<div class="WidgetHolder BlogArchiveWidget">
<h3>Archive</h3>
<% include BlogArchiveWidget Archive=$ArchiveList %>
</div>
<% end_if %>

<% if $RSSLink %>
<div class="WidgetHolder BlogSubscribeRSSWidget">
<h3>RSS Feed</h3>
<a href="$RSSLink">RSS Feed</a>
</div>
<% end_if %>

<% end_if %>