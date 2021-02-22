module Main exposing (Model, init)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)



---- MODEL ----


type alias Model =
    { vueTitleText : String
    , vueTitleDescription : String
    , elmTitleText : String
    , elmTitleDescription : String
    }


init : ( Model, Cmd Msg )
init =
    let
        model =
            { vueTitleText = "Vue"
            , vueTitleDescription = "JavaScript Framework"
            , elmTitleText = "Elm"
            , elmTitleDescription = "Functional Language"
            }
    in
    ( model, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ line_break
        , view_card model.vueTitleText model.vueTitleDescription
        , line_break
        , view_card model.elmTitleText model.elmTitleDescription
        ]


line_break : Html Msg
line_break =
    br [] []


view_card : String -> String -> Html Msg
view_card title description =
    div
        [ class "card"
        , style "width" "18rem"
        ]
        [ div [ class "card-body" ]
            [ h2 [ class "card-title" ] [ text title ]
            , p [ class "card-text" ] [ text description ]
            ]
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
