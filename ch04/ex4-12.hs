-- Lucius Syntax

article code { background-color: grey; }
article p { text-indent: 2em; }
article a { text-decoration: none; }


article {
    code { background-color: grey; }
    p { text-indent: 2em; }
    a { text-decoration: none; }
    > h1 { color: green; }
}


@textcolor: #ccc; /* just because we hate our users */
body { color: #{textcolor} }
a:link, a:visited { color: #{textcolor} }