if not modules then modules = { } end modules ['europass'] = {
    version   = 1.000,
    comment   = "companion to t-europass-cv.mkiv",
    author    = "Adam Reviczky",
    copyright = "Adam Reviczky",
    license   = "Public Domain"
}

languages       = languages or { }
local languages = languages

languages.data  = languages.data or utilities.storage.allocate { }
local data      = languages.data

data.labels={
 ["texts"]={
   ["bg"]="Bulgarian definitions",   -- not supported by ConTeXt yet
   ["cs"]="Czech definitions",
   ["da"]="Danish definitions",
   ["de"]="German definitions",
   ["gr"]="Greek definitions",       -- "el" in Europass
   ["en"]="English definitions",
   ["es"]="Spanish/Castilian definitions",
   ["et"]="Estonian definitions",    -- not supported by ConTeXt yet
   ["fi"]="Finnish definitions",
   ["fr"]="French definitions",
   ["ga"]="Gaeilge definitions",     -- not supported by ConTeXt yet
   ["hr"]="Croatian definitions",
   ["hu"]="Hungarian definitions",
   ["is"]="Icelandic definitions",   -- not supported by ConTeXt yet
   ["it"]="Italian definitions",
   ["lt"]="Lithuanian definitions",
   ["lv"]="Latvian definitions",     -- not supported by ConTeXt yet
   ["me"]="Montenegrin definitions", -- not supported by ConTeXt yet
   ["mk"]="Macedonian definitions",  -- not supported by ConTeXt yet
   ["mt"]="Maltese definitions",     -- not supported by ConTeXt yet
   ["nb"]="Norsk definitions",
   ["nl"]="Dutch definitions",
   ["pl"]="Polish definitions",
   ["pt"]="Portuguese definitions",
   ["ro"]="Romanian definitions",
   ["sk"]="Slovakian definitions",
   ["sl"]="Slovenian definitions",
   ["sr"]="Serbian definitions",     -- not supported by ConTeXt yet (cyr/lat)
   ["sv"]="Swedish definitions",
   ["tr"]="Turkish definitions",
   ["uk"]="British definitions",
 },
}

userdata              = userdata or { }
uservariables         = uservariables or { }
uservariables.content = uservariables.content or { }

function userdata.setgkeyval(keyvals)
    local named_values = utilities.parsers.settings_to_hash(keyvals) or { }

    uservariables.content['europass'] = uservariables.content['europass'] or { }

    -- local userdata_name        = 'First Last'
    -- local userdata_address     = 'Flat, Street, City (Country)'
    -- local userdata_telephone   = '+(00) 00 000 00000'
    -- local userdata_work        = '+(00) 00 000 00000'
    -- local userdata_mobile      = '+(00) 00 000 00000'
    -- local userdata_email       = 'first.last@company.com'
    -- local userdata_im          = 'username'
    -- local userdata_sex         = 'gender'
    -- local userdata_birth       = 'd=1,m=1,y=2000'
    -- local userdata_nationality = 'nationality'

    -- https://tex.stackexchange.com/questions/343985/using-property-list-from-expl3

    for k,v in pairs(named_values) do
      uservariables.content['europass'][k] = v

      if     k == 'name'        then context.setvariables({'europass'},{'name=' .. '{' .. v  .. '}'})
      elseif k == 'address'     then context.setvariables({'europass'},{'address=' .. '{' .. v  .. '}'})
      elseif k == 'telephone'   then context.setvariables({'europass'},{'telephone=' .. '{' .. v  .. '}'})
      elseif k == 'work'        then context.setvariables({'europass'},{'work=' .. '{' .. v  .. '}'})
      elseif k == 'mobile'      then context.setvariables({'europass'},{'mobile=' .. '{' .. v  .. '}'})
      elseif k == 'email'       then context.setvariables({'europass'},{'email=' .. '{' .. v  .. '}'})
      elseif k == 'im'          then context.setvariables({'europass'},{'im=' .. '{' .. v  .. '}'})
      elseif k == 'sex'         then context.setvariables({'europass'},{'sex=' .. '{' .. v  .. '}'})
      elseif k == 'birth'       then context.setvariables({'europass'},{'birth=' .. '{' .. v  .. '}'})
      elseif k == 'nationality' then context.setvariables({'europass'},{'nationality=' .. '{' .. v  .. '}'})
      end
    end

end
