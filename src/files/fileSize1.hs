simpleFileSize :: FilePath -> IO Integer

simpleFileSize path = do
    h <- openFile path ReadMode
    size <- hFileSize h
    hClose h
    return size