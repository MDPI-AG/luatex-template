-- Build script for mdpi

module   = "mdpi"

-- with this we can test with lualatex-dev
specialformats = specialformats or {}
specialformats["latex"] = specialformats["latex"] or
  {
--    luatex     = {binary="luahbtex",format = "lualatex-dev"},
  }

forcecheckruns=true
recordstatus = true
checkruns = 2

checkengines = {"luatex"}
stdengine ="luatex"

docfiledir = "./doc"

typesetexe = "lualatex-dev"
typesetfiles = {"*.dtx","template-*.tex"} 

function docinit_hook() return cp("mdpi-luatex.cls", unpackdir, typesetdir) end

installfiles = {
                "**/*.sty",
                "**/*.cls",                
                "acoustics-logo.pdf",
                "logo-updates.pdf",
                "logo-mdpi.pdf",
                "logo-orcid.pdf",
                "journalnames.tex"
               }

sourcefiles = {
                "*.dtx", 
                "*.ins",
                "*.sty",
                "mdpi-pdftex.cls",               
                "support/*.pdf",               
                "support/*.bst",
                "support/journalnames.tex"
              }
