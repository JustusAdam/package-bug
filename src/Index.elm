module Index where


import Html exposing (text, Html)


type alias Model =
  { package   : Package
  }

type alias Package =
  { summary : String
  }


view : Model -> Html
view model = packageDisplay model.package


packageDisplay : Package -> Html
packageDisplay {summary} = text summary

-- SIGNALS

initialModel =
  { package = { summary = "hello" }
  }


main : Signal Html
-- this crashed
main = Signal.constant <| view modelPort
-- this doesn't
-- main = Signal.constant <| view initialModel


port modelPort : Model
