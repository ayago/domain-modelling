{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LANGUAGE OverloadedStrings #-}

module Demo where

import Project

someProject::Project
someProject = ProjectGroup "Philippines" [naga, mandaluyong, cavite] where
    naga = Project 1 "Naga City"
    mandaluyong = Project 2 "Mandaluyong City"
    cavite = ProjectGroup "Cavite" [silang, dasmarinas]
    silang = Project 3 "Silang"
    dasmarinas = Project 4 "Dasmarinas"