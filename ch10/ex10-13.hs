-- SelectOpt

resultsForPage pageNumber = do
    let resultsPerPage = 10
    selectList
        [ PersonAge >=. 18
        ]
        [ Desc PersonAge
        , Asc PersonLastName
        , Asc PersonFirstName
        , LimitTo resultsPerPage
        , OffsetBy $ (pageNumber - 1) * resultsPerPage
        ]