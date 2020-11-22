module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Html, div, h1, text, button)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Lottie exposing (lottie, loop, play, Loop(..))

main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { playing: Bool }


init : Model
init =
    Model True


type Msg
    = TogglePlay


update : Msg -> Model -> Model
update msg model =
    case msg of
        TogglePlay ->
            { model | playing = not model.playing }


view : Model -> Html Msg
view { playing } = div [ style "text-align" "center"]
    [ h1 [] [ text "Elm-Lottie Demo" ]
    , lottie "/animation.json" [ loop Forever, play playing, style "height" "50vh"] []
    , button [ onClick TogglePlay ] [ playing |> getButtonString |> text ]
    ]

getButtonString : Bool -> String
getButtonString playing =
    if playing then
        "Pause"
    else
        "Play"
