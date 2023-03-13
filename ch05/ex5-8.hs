import Text.XHtml (Html)
-- Using Widgets

data PageContent url = PageContent
    { pageTitle :: Html
    , pageHead :: HtmlUrl url
    , pageBody :: HtmlUrl url
    }
widgetToPageContent :: Widget -> Handler (PageContent url)