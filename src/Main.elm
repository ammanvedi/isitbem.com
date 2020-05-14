module Main exposing (main)

import Browser exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import BemTester exposing (checkSelector, BemInfoMessage)

type alias Model = 
    { inputVal : String
    }

-- Model

init : Model
init = 
    { inputVal = ""
    }


view : Model -> Html msg
view model =
    div []
        [
            input [ type_ "text", placeholder "text", value model.inputVal ] []
        ]


-- Update

type Msg
    = Change String

update : Msg -> Model -> Model
update msg model =
    case msg of
        Change newVal ->
            {model | inputVal = newVal}

-- Main

main =
    Browser.sandbox {
        init = init,
        update = update,
        view = view
    }