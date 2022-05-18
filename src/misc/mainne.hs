
{-# LANGUAGE CPP               #-}
{-# LANGUAGE OverloadedStrings #-}

import Control.Monad
import System.Environment


data Flag = Sty String
          | Theme String
          | Format String
          | Help
          | Fragment
          | List
          | NumberLines
          | StartNumber String
          | Syn String
          | TitleAttributes
          | ColorLevel String
          | Definition String
          | Trace
          | Version
          deriving (Eq, Show)