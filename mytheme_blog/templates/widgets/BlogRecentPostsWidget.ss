<% if $Posts %>
	<ul>
		<% loop $Posts %>
			<li>
				<a href="$Link" title="$Title" class="$LinkingMode">$Title</a>
			</li>
		<% end_loop %>
	</ul>
<% end_if %>