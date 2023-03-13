-- whamlet

page =
    [hamlet|
        <p>This is my page. I hope you enjoyed it.
        ^{footer}
    |]

footer =
    [hamlet|
        <footer>
            <p>That's all folks!
    |]



footer = do
    toWidget
        [lucius|
            footer {
                font-weight: bold;
                text-align: center
            }
        |]
    toWidget
        [hamlet|
            <footer>
                <p>That's all folks!
        |]



page =
    [whamlet|
        <p>This is my page. I hope you enjoyed it.
        ^{footer}
    |]