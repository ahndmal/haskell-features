removeExclamationMarks :: String -> String
removeExclamationMarks str = [c | c <- str , c /= '!']
removeExclamationMarks2 = filter (/='!')
removeExclamationMarks3 str = filter (\c -> c /= '!') str