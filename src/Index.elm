module Index where


import Html exposing (text, Html)


type alias Model =
  { proxy : Thing
  }

type alias Thing =
  { package   : String
  }


view : Model -> Html
view model = text model.proxy.package

-- SIGNALS


main : Signal Html
main = Signal.constant <| view modelPort


port modelPort : Model
