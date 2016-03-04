<article class="blogSummary">
	<h2><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
	<p class="authorDate">$Date.Long</p>
	<% if $Summary %>
    <p>$Summary</p>
    <% else %> 
    <p>$Content.LimitWordCountNoHTML(41, "&nbsp;...")</p>
    <% end_if %>
    <div class="clear"></div>
    <p class="more"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'"><%t Website.More 'More' %></a></p>
</article>
