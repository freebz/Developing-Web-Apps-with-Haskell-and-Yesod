-- Template Haskell

$(hamletFile "myfile.hamlet")


{-# LANGUAGE TemplateHaskell #-}

-- Normal function declaration, nothing special
myFunction = ...

-- Include some TH code
$(myThCode)

-- Or equivalently
myThCode