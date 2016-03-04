<% require themedCSS('blog', 'blog') %>

<article id="Content">

    <h1>
        <% if $ArchiveYear %>
            <%t Blog.Archive "Archive" %>:
            <% if $ArchiveDay %>
                $ArchiveDate.Nice
            <% else_if $ArchiveMonth %>
                $ArchiveDate.format("F, Y")
            <% else %>
                $ArchiveDate.format("Y")
            <% end_if %>
        <% else_if $CurrentTag %>
            <%t Blog.Tag "Tag" %>: $CurrentTag.Title
        <% else_if $CurrentCategory %>
            <%t Blog.Category "Category" %>: $CurrentCategory.Title
        <% else %>
            $Title
        <% end_if %>
    </h1>
    
    $Content
    
    <% if $PaginatedList.Exists %>
        <ul id="BlogEntries" class="contentList">
        <% loop $PaginatedList %>
            <li class="$FirstLast"><% include PostSummary %></li>
        <% end_loop %>
        </ul>
    <% else %>
        <p><%t Blog.NoPosts "There are no posts" %></p>
    <% end_if %>
        
    <% with $PaginatedList %>
		<% include Pagination %>
	<% end_with %>
    
</article>

<aside id="RightCol">
<% include BlogSideBar %>
</aside>
