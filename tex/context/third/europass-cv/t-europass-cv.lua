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
