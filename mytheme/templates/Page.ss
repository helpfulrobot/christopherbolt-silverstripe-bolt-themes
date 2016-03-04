<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<% base_tag %>
<title><% if $MetaTitle %>$MetaTitle<% else %><% if $URLSegment = "home" || $ClassName = "HomePage" %>$SiteConfig.Title<% else %>$Title<% end_if %><% if $URLSegment != "home" && $ClassName != "HomePage" %> | $SiteConfig.Title<% end_if %><% end_if %></title>
<link rel="icon" href="{$BaseHref}favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="{$BaseHref}favicon.ico" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
$MetaTags(false)
</head>

<body class="$ClassName url{$SanitizedURLSegment} id{$ID}">

<header id="Header">
    <div id="Logo"><a href="$BaseHref" title="Return to $SiteConfig.Title home">$SiteConfig.Title</a></div>
    <nav id="Nav">
        <ul>
            <% loop $Menu(1) %>
            <li class="$LinkingMode"><a class="$LinkingMode" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
            <% end_loop %>
        </ul>
    </nav>
</header>

<main id="Layout" class="typography">
    $Layout
</main>

<footer id="Footer">

</footer>

$SilverstripeNavigator
</body>
</html>
