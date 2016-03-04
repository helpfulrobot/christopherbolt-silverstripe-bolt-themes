<% if $Categories %>
	<ul>
        <% with $AllCat %>
        <li><a href="$BlogLink" title="All" class="$LinkingMode">All</a></li>
        <% end_with %>
		<% loop $Categories %>
        <li><a href="$Link" title="$Title" class="$LinkingMode">$Title</a></li>
		<% end_loop %>
	</ul>
<% end_if %>