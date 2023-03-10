-- Alternative Hamlet Types

data Msg = Hello | Apples Int


renderEnglish :: Msg -> Text
renderEnglish Hello = "Hello"
renderEnglish (Apples 0) = "You did not buy any apples."
renderEnglish (Apples 1) = "You bought 1 apple."
renderEnglish (Apples i) = T.concat ["You bought ", T.pack $ show i, " apples."]


$doctype 5
<html>
    <head>
        <title>i18n
    <body>
        <h1>_{Hello}
        <p>_{Apples count}


type Render url = url -> [(Text, Text)] -> Text
type Translate msg = msg -> Html
type HtmlUrlI18n msg url = Translate msg -> Render url -> Html
