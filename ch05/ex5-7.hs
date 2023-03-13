-- Types

type Widget = WidgetT MyApp IO ()


footer :: Widget
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

page :: Widget
page =
    [whanlet|
        <p>This is my page. I hope you enjoyed it.
        ^{footer}
    |]