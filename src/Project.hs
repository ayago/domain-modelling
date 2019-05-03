{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Project where

import Data.Text (Text)

newtype Money = Money {
    amount::Double
} deriving (Show, Eq, Num)

newtype ProjectId = ProjectId {
    projectId::Int
} deriving (Show, Eq, Num)

data Project = Project ProjectId Text
    | ProjectGroup Text [Project]
    deriving (Show, Eq)
    
data Budget = Budget {
    budgetIncome::Money,
    budgetExpenditure::Money
} deriving (Show, Eq) 

data Transaction = Sale Money
    | Purchase Money
    deriving (Show, Eq)