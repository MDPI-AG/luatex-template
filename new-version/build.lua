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

typesetexe = "lualatex"
typesetfiles = {"*.dtx","template-*.tex"} 

-- duplicates are files that are both in the support/Definitions folder and in installfiles
-- we remove them from the typesetdir and testdir

local mdpiduplicates = 
 {
  "acoustics-logo.pdf", 
  "mdpi-pdftex.cls", 
  "logo-updates.pdf", 
  "logo-mdpi.pdf", 
  "logo-orcid.pdf", 
  "journalnames.tex", 
  "mdpi_apacite.sty",   
  "mdpi.bst",   
  "mdpi_apacite.bst",   
  "mdpi_chicago.bst"
 } 

local function mdpiremoveduplicates (dir)
 for _,file in ipairs(mdpiduplicates) do
    rm(dir,file) 
 end
end
function docinit_hook() 
  cp("mdpi-luatex.cls", unpackdir, typesetdir)
  cp("mdpi-luatex.cls", unpackdir, typesetdir.."/Definitions")
  mdpiremoveduplicates(typesetdir)
  return  0
end

tdslocations = {
"tex/latex/mdpi/Definitions/*.sty",
"tex/latex/mdpi/Definitions/*.cls",
"tex/latex/mdpi/Definitions/journalnames.tex",
"tex/latex/mdpi/Definitions/acoustics-logo.pdf",
"tex/latex/mdpi/Definitions/logo-updates.pdf",
"tex/latex/mdpi/Definitions/logo-mdpi.pdf",
"tex/latex/mdpi/Definitions/logo-orcid.pdf",
"bibtex/bst/mdpi/Definitions/mdpi.bst",
"bibtex/bst/mdpi/Definitions/mdpi_apacite.bst",
"bibtex/bst/mdpi/Definitions/mdpi_chicago.bst",
}

installfiles = {
                "**/*.sty",
                "**/*.cls",   
                "acoustics-logo.pdf",
                "logo-updates.pdf",
                "logo-mdpi.pdf",
                "acoustics-logo.eps",
                "logo-updates.eps",
                "logo-mdpi.eps",                
                "logo-orcid.pdf",
                "journalnames.tex"
               }

sourcefiles = {
                "*.dtx", 
                "*.ins",
                "*.sty",
                "support/Definitions/mdpi_apacite.sty",               
                "support/Definitions/mdpi-pdftex.cls",               
                "support/Definitions/*.pdf",               
                "support/Definitions/*.bst",
                "support/Definitions/journalnames.tex"             
              }

checksuppfiles   = {"Definitions"}
typesetsuppfiles = {"Definitions"}

function checkinit_hook()   
  cp("mdpi-luatex.cls",testdir,testdir.."/Definitions") -- so that using Definitions/mdpi-luatex works too
  mdpiremoveduplicates (testdir) 
  return 0 
end



