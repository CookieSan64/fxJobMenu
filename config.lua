Config, Locales = {}, {}

Config.Locale = 'en' 
Config.okokTextUI = false -- If true it will use okokTextUI | false it will use help notification
Config.TextUIKey = 38 -- [ E ] - https://docs.fivem.net/docs/game-references/controls/

-- Marker Stuff
Config.useDrawMarker = true -- If true a marker will show | false there's no marker
Config.MarkerRed = 28 -- Red color
Config.MarkerGreen = 140 -- Green color
Config.MarkerBlue = 214 -- Blue color

-- Blip Stuff
Config.BlipSprite = 407 -- The blip itself
Config.BlipDisplay = 4 -- Blip Display
Config.BlipScale = 0 -- Blip Scale
Config.BlipColour = 5 -- Blip Colour

Config.Locations = {
  [1] = {coords = vector3(-265.02, -964.12, 31.21)}, -- You can add more below
}

Config.JobList = {
    {
        title = "Burger Shot",
        icon = "fa-solid fa-hamburger",
        actions = "Travail au Burger Shot",
        jobid = "burgershot"
    },
    {
        title = "Eboueur",
        icon = "fa-solid fa-recycle",
        actions = "Ramasse les poubelles",
        jobid = "garbage"
    },
    {
        title = "GoPostal",
        icon = "fa-solid fa-envelopes-bulk",
        actions = "Distribue le courrier",
        jobid = "gopostal"
    },
    {
        title = "Pêcheur",
        icon = "fa-solid fa-fish",
        actions = "Pêche des gros poissons",
        jobid = "fisherman"
    },
    {
      title = "Raffineur",
      icon = "fa-solid fa-gas-pump",
      actions = "Tu va aimer l'odeur de l'essence !",
      jobid = "fueler"
    },
    {
      title = "Bûcheron",
      icon = "fa-solid fa-seedling",
      actions = "Si tes contre l'écologie",
      jobid = "lumberjack"
    },
    {
      title = "Miner",
      icon = "fa-solid fa-gem",
      actions = "Et ils appelent ça une mine !?",
      jobid = "miner"
    },
    {
      title = "Boucher",
      icon = "fa-solid fa-drumstick-bite",
      actions = "Si tes pas végan",
      jobid = "slaughterer"
    },
    {
      title = "Couturier",
      icon = "fa-solid fa-shirt",
      actions = "Pour créer de magnifiques vêtements",
      jobid = "tailor"
    },
    {
      title = "Taxi",
      icon = "fa-solid fa-taxi",
      actions = "Si t'aime conduire",
      jobid = "taxi"
    },
  }

-- Don't touch in this function
	
  function _fx(id)
    if Locales[Config.Locale][id] then
      return Locales[Config.Locale][id]
    else
      print("The locale '"..id.."' doesn't exist!")
    end
  end