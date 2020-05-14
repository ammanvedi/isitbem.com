module BemTester exposing (checkSelector, BemInfoMessage)

import Array

type InfoMessageType = Success | Warning | Error

type alias BemInfoMessage = 
    {
        info : String,
        links : List String,
        messageType : InfoMessageType
    }

checkSelector : String -> BemInfoMessage
checkSelector selector = 
    {
        info = "infoooo",
        links = [],
        messageType = Success
    }