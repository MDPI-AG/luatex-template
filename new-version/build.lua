-- Build script for mdpi

module   = "mdpi"

-- we test with lualatex-dev
specialformats = specialformats or {}
specialformats["latex"] = specialformats["latex"] or
  {
    luatex     = {binary="luahbtex",format = "lualatex-dev"},
  }

forcecheckruns=true
recordstatus = true
checkruns = 2

checkengines = {"luatex"}
stdengine ="luatex"

docfiledir = "./doc"

typesetexe = "lualatex-dev"

typesetfiles = {"*.dtx","template-*.tex"} 

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
                "support/mdpi.cls",
                "support/*.pdf",               
                "support/*.bst",
                "support/journalnames.tex"
              }
