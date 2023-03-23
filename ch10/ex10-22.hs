-- More complicated, more generic

data BlogGeneric backend = Blog { blogTitle :: Text }
data PostGeneric backend = Post
    { postTitle  :: Text
    , postBlogId :: Key (BlogGeneric backend)
    }


type Blog   = BlogGeneric SqlBackend
type BlogId = Key Blog
type Post   = PostGeneric SqlBackend
type PostId = Key Post