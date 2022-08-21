module Main exposing (..)

import Browser exposing (sandbox)
import Html exposing (button, div, text)
import Html.Events exposing (onClick)


initModel : Int
initModel =
    0


type Msg
    = Increment
    | Decrement


update : Msg -> number -> number
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Int -> Html.Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment ] [ text "+" ]
        ]


main : Program () Int Msg
main =
    sandbox { init = initModel, view = view, update = update }
