module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Html)
import Html.Attributes exposing (style)
import Lottie exposing (lottie)


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    {}


init : Model
init =
    {}


type Msg
    = Nothing


update : Msg -> Model -> Model
update msg model =
    case msg of
        Nothing ->
            {}


view : Model -> Html Msg
view model = lottie { path = "/animation.json" } [ style "width" "100vw", style "height" "100vh"]
