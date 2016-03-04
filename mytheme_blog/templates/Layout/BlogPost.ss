<% require themedCSS('blog', 'blog') %>

<article id="Content" class="blogEntry">
    
    <h1>$Title</h1>
    
	<p class="authorDate">$PublishDate.Long</p>
   
	$Content
    
    <div class="clear"><!-- --></div>
           
    <p>
    <% if PreviousBlogEntry %><a class="previousPage" href="$PreviousBlogEntry.Link">&laquo; Previous</a><% end_if %>
    <% if NextBlogEntry %><a class="nextPage" href="$NextBlogEntry.Link">Next &raquo;</a><% end_if %>
    </p>
        
</article>

<aside id="RightCol">
<% include BlogSideBar %>
</aside>
