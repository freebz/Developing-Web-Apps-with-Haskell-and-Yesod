-- Hamlet (HTML)

$doctype 5
<html>
    <head>
        <title>#{pageTitle} - My Site
        <link rel=stylesheet href=2{Stylesheet}>
    <body>
        <h1 .page-title>#{pageTitle}
        <p>Here is a list of your friends:
        $if null friends
            <p>Sorry, I lied, you don't have any friends.
        $else
            <ul>
                $forall Friend name age <- friends
                    <li>#{name} (#{age} years old)
        <footer>^{copyright}