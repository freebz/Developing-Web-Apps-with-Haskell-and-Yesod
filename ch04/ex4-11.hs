-- Conditionals

$if isAdmin
    <p>Welcome to the admin section.
$elseif isLoggedIn
    <p>You are not the administrator.
$else
    <p>I don't know who you are. Please log in so I can decide if you get access.



-- maybe

$maube name <- maybeName
    <p>Your name is ${name}
$nothing
    <p>I don't know your name.



$maybe Person firstName lastName <- maybePerson
    <p>Your name is ${firstName} #{lastName}



-- forall

$if null people
    <p>No people
$else
    <ul>
        $forall person <- people
            <li>#{person}



-- case

$case foo
    $of Left bar
        <p>It was left: #{bar}
    $of Right baz
        <p>It was right: #{baz}



-- with

$with foo <- some very (long ugly) expression that $ should only $ happen once
    <p>But I'm going to use #{foo} multiple times. #{foo}



-- doctype

$doctype 5
<html>
    <head>
        <title>Hamlet is Awesome
    <body>
        <p>All done.