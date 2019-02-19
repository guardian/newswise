module Fixtures exposing (..)

import Model exposing (..)
import Time exposing (millisToPosix)
import Url exposing (Url, Protocol(..))

sample : FrontPage
sample =
  { masthead   = sampleMasthead
  , headlines  = sampleHeadlines
  , layout     = Greta
  }

sampleMasthead : Masthead
sampleMasthead = 
  { logo    = GuardianLogo
  , date    = millisToPosix 1543333006770 
  , issueNo = 27
  , cost    = 2.0 
  }

sampleHeadlines : List Headline
sampleHeadlines =
  [ headline1
  , headline2
  , headline3
  , headline4
  , headline5
  , headline6
  , headline7
  ]

headline1 : Headline
headline1 = 
  let 
    img = Remote 
      { protocol = Http
      , host     = "localhost"
      , port_    = Just 8000
      , path     = "/sample/mammoth.jpg"
      , query    = Nothing
      , fragment = Nothing
      }
  in
    Shorty (Just "Mammoth haul") "Unearthing the treasures of the A14" (Just (Raw img))

headline2 : Headline
headline2 = Shorty (Just "Personal finance") "20 questions you were too embarrassed to ask" Nothing

headline3 : Headline
headline3 = Fully 
  Nothing
  "Climate-warming El Niño very likely in 2019, says UN agency"
  [ { name = "Damian Carrington", role = Just "Environment editor" } ]
  [ Para "There is a 75-80% chance of a climate-warming El Niño event by February, according to the latest analysis from the UN’s World Meteorological Organization."
  , Para "The last El Niño event ended in 2016 and helped make that year the hottest ever recorded by adding to the heating caused by humanity’s carbon emissions. The 2019 event is not currently forecast to be as strong as in 2016."
  , Para "El Niño events occur naturally every few years and stem from abnormally high ocean temperatures in the western Pacific. They have a major influence on weather around the globe, bringing droughts to normally damp places, such as parts of Australia, and floods to normally drier regions, such as in South America. The high temperatures also cause major bleaching on coral reefs."
  , Para "“The forecast El Niño is not expected to be as powerful as the event in 2015-2016,” said Maxx Dilley, the director of WMO’s climate prediction and adaptation branch. “Even so, it can still significantly affect rainfall and temperature patterns in many regions, with important consequences to agriculture and food security, and for management of water resources and public health. It may also combine with long-term climate change to boost 2019 global temperatures.”"
  , Para "Forecasters in the US have already warned of an imminent El Niño. Australia’s Bureau of Meteorology said in October that a dry, hot summer was very likely, with increased risk of heatwaves and bushfires and no relief for already drought-stricken farmers. There is evidence that climate change is making the effects of El Niño more severe."
  , Para "The heat boost from El Niño helped 2016 to be the hottest year ever recorded. The following year, 2017, was ranked equal second, but was the hottest for a year without an El Niño. Scientists expect 2018, which saw climate-related disasters around the globe, to be the fourth hottest on record."
  ]

headline4 : Headline
headline4 = Fully 
  Nothing
  "Climate-warming El Niño very likely in 2019, says UN agency"
  [ { name = "Damian Carrington", role = Just "Environment editor" } ]
  [ Para "There is a 75-80% chance of a climate-warming El Niño event by February, according to the latest analysis from the UN’s World Meteorological Organization."
  , Para "The last El Niño event ended in 2016 and helped make that year the hottest ever recorded by adding to the heating caused by humanity’s carbon emissions. The 2019 event is not currently forecast to be as strong as in 2016."
  , Para "El Niño events occur naturally every few years and stem from abnormally high ocean temperatures in the western Pacific. They have a major influence on weather around the globe, bringing droughts to normally damp places, such as parts of Australia, and floods to normally drier regions, such as in South America. The high temperatures also cause major bleaching on coral reefs."
  , Para "“The forecast El Niño is not expected to be as powerful as the event in 2015-2016,” said Maxx Dilley, the director of WMO’s climate prediction and adaptation branch. “Even so, it can still significantly affect rainfall and temperature patterns in many regions, with important consequences to agriculture and food security, and for management of water resources and public health. It may also combine with long-term climate change to boost 2019 global temperatures.”"
  , Para "Forecasters in the US have already warned of an imminent El Niño. Australia’s Bureau of Meteorology said in October that a dry, hot summer was very likely, with increased risk of heatwaves and bushfires and no relief for already drought-stricken farmers. There is evidence that climate change is making the effects of El Niño more severe."
  ]

headline5 : Headline
headline5 = Pictured
  (Just "Touchdown")
  "Climate-warming El Niño very likely in 2019, says UN agency"
  (Rich 
    { data    = Remote 
      { protocol = Http
      , host     = "localhost"
      , port_    = Just 8000
      , path     = "/sample/mars.jpg"
      , query    = Nothing
      , fragment = Nothing
      }
    , caption = "Jubilation at Nasa mission control for scientists Kris Bruvold, left, and Sandy Krasner"
    , credit  = Just "Willian Justen de Vasconcellos"
    })

headline6 : Headline
headline6 = Fully
  Nothing
  "Climate-warming El Niño very likely in 2019, says UN agency"
  []
  [ Para "There is a 75-80% chance of a climate-warming El Niño event by February, according to the latest analysis from the UN’s World Meteorological Organization." 
  , Para "There is a 75-80% chance of a climate-warming El Niño event by February, according to the latest analysis from the UN’s World Meteorological Organization." ]

headline7 : Headline
headline7 = headline6