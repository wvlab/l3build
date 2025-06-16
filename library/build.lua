--- @meta

--#region

-- The name of the module
--- @type string
module = ""

-- The name of the bundle in which the module belongs
--- @type string
bundle = ""

-- Name of the CTAN package matching this module
--- @type string
ctanpkg = bundle == "" and module or bundle

--#endregion
--#region

-- The list of all modules in a bundle (when not auto-detecting)
--- @type string[]
modules = {}

-- Directories to be excluded from automatic module detection
--- @type string[]
exclmodules = {}

--#endregion
--#region

-- Top level directory for the module/bundle
--- @type string
maindir = "."

-- Directory containing documentation files
--- @type string
docfiledir = "."

-- Directory containing source files
--- @type string
sourcefiledir = "."

-- Directory containing general support files
--- @type string
supportdir = maindir .. "/support"

-- Directory containing test files
--- @type string
testfiledir = "./testfiles"

-- Directory containing test-specific support files
--- @type string
testsuppdir = testfiledir .. "/support"

-- Directory containing support files in tree form
--- @type string
texmfdir = maindir .. "/texmf"

-- Directory containing plain text files
--- @type string
textfiledir = "."

--#endregion
--#region

-- Directory for building and testing
--- @type string
builddir = maindir .. "/build"

-- Directory for generating distribution structure
--- @type string
distribdir = builddir .. "/distrib"

-- Directory for extracted files in "sandboxed" TEX runs
--- @type string
localdir = builddir .. "/local"

-- Directory for PDF files when using PDF-based tests
--- @type string
resultdir = builddir .. "/result"

-- Directory for running tests
--- @type string
testdir = builddir .. "/test"

-- Directory for building documentation
--- @type string
typesetdir = builddir .. "/doc"

-- Directory for unpacking sources
--- @type string
unpackdir = builddir .. "/unpacked"

-- Directory for organising files for CTAN
--- @type string
ctandir = distribdir .. "/ctan"

-- Directory for organised files into TDS structure
--- @type string
tdsdir = distribdir .. "/tds"

-- Root directory of the TDS structure for the bundle/module to be installed into
--- @type string
tdsroot = "latex"

--#endregion
--#region

-- Secondary files to be saved as part of running tests
--- @type string[]
auxfiles = { "*.aux", "*.lof", "*.lot", "*.toc" }

-- BibTEX database files
--- @type string[]
bibfiles = { "*.bib" }

-- Files to be added in binary mode to zip files
--- @type string[]
binaryfiles = { "*.pdf", "*.zip" }

-- BibTEX style files
--- @type string[]
bstfiles = { "*.bst" }

--  Extra files unpacked purely for tests
--- @type string[]
checkfiles = {}

--  Files needed for performing regression tests
--- @type string[]
checksuppfiles = {}

--  Files to delete when cleaning
--- @type string[]
cleanfiles = { "*.log", "*.pdf", "*.zip" }

--  Files which show how to use a module.
--- @type string[]
demofiles = {}

--  Files which are part of the documentation but should not be typeset
--- @type string[]
docfiles = {}

--  Secondary files to be cleared before each test is run
--- @type string[]
dynamicfiles = {}

--  Files to ignore entirely
--- @type string[]
excludefiles = { "*~", "build.lua", "config-*.lua" }

--  Files to install to the tex area of the texmf tree
--- @type string[]
installfiles = { "*.sty", "*.cls" }

--  MakeIndex files to be included in a TDS-style zip
--- @type string[]
makeindexfiles = { "*.ist" }

--  Files to install to the scripts area of the texmf tree
--- @type string[]
scriptfiles = {}

--  Files to install to the doc/man area of the texmf tree
--- @type string[]
scriptmanfiles = {}

--  Files to copy for unpacking
--- @type string[]
sourcefiles = { "*.dtx", "*.ins", "*-????-??-??.sty" }

--  Files for automatic tagging
--- @type string[]
tagfiles = { "*.dtx" }

--  Plain text files to send to CTAN as-is
--- @type string[]
textfiles = { "*.md", "*.txt" }

--  Files to typeset before the documentation for inclusion in main documentation files.
--- @type string[]
typesetdemofiles = {}

--  Files to typeset for documentation
--- @type string[]
typesetfiles = { "*.dtx" }

--  Files needed to support typesetting when "sandboxed"
--- @type string[]
typesetsuppfiles = {}

--  Files to copy to unpacking when typesetting
--- @type string[]
typesetsourcefiles = {}

--  Files to run to perform unpacking
--- @type string[]
unpackfiles = { "*.ins" }

--  Files needed to support unpacking when "sandboxed"
--- @type string[]
unpacksuppfiles = {}

--#endregion
--#region

--  Test names to include when checking
--- @type string[]
includetests = { "*" }

--  Test names to exclude when checking
--- @type string[]
excludetests = {}

--#endregion
--#region

-- List of dependencies for running checks
--- @type string[]
checkdeps = {}

-- List of dependencies for typesetting docs
--- @type string[]
typesetdeps = {}

-- List of dependencies for unpacking
--- @type string[]
unpackdeps = {}

--#region
--#endregion

-- Engines to check with check by default
--- @type string[]
checkengines = { "pdftex", "xetex", "luatex" }

-- Engine to generate .tlg file from
--- @type string
stdengine = checkengines[1] or "pdftex"

-- Format to use for tests.
--- @type string
checkformat = "latex"

--- @class SpecialFormat
--- @field binary string
--- @field format string
--- @field options string

-- Non-standard engine/format combinations
-- This is a table with one entry per checkformat. Each entry is itself a
-- table, and these contain a list of engines and settings for binary, format
-- and options. For example, the set up for ConTEXt in l3build 2023-07-17:
-- ```lua
-- specialformats.context = {
--   luametatex = {binary = "context", format = ""},
--   luatex = {binary = "context", format = "", options = "--luatex"},
--   pdftex = {binary = "texexec", format = ""},
--   xetex = {binary = "texexec", format = "", options = "--xetex"}
-- }
--- ```
--- @type table<string, table<string, SpecialFormat>>
specialformats = {}

-- Custom test variants
--- @type table
test_types = {}

-- Which kinds of tests to evaluate
--- @type string[]
test_order = { "log", "pdf" }

--#endregion
--#region

--  Configurations to use for tests.
--- @type string[]
checkconfigs = {}

--#endregion
--#region

-- Executable for compiling doc(s).
--- @type string
typesetexe = "pdflatex"

-- Executable for running unpack.
--- @type string
unpackexe = "pdftex"

-- Biber executable
--- @type string
biberexe = "biber"

-- BibTEX executable
--- @type string
bibtexexe = "bibtex8"

-- MakeIndex executable
--- @type string
makeindexexe = "makeindex"

-- Curl executable for upload
--- @type string
curlexe = "curl"

--#endregion
--#region

-- Options passed to engine when running checks
--- @type string
checkopts = "-interaction=nonstopmode"

-- Options passed to engine when typesetting
--- @type string
typesetopts = "-interaction=nonstopmode"

-- Options passed to engine when unpacking
--- @type string
unpackopts = ""

-- Biber options
--- @type string
biberopts = ""

-- BibTEX options
--- @type string
bibtexopts = "-W"

-- MakeIndex options
--- @type string
makeindexopts = ""

--#endregion
--#region

-- Switch to search the system texmf for during checking
--- @type boolean
checksearch = true

-- Switch to search the system texmf for during typesetting
--- @type boolean
typesetsearch = true

-- Switch to search the system texmf for during unpacking
--- @type boolean
unpacksearch = true

--#endregion
--#region

-- MakeIndex style file for glossary/changes creation
--- @type string
glossarystyle = "gglo.ist"

-- MakeIndex style for index creation
--- @type string
indexstyle = "gind.ist"

-- Non-standard typesetting combinations
-- To allow non-standard typesetting combinations, for example per-file choice
-- of engines, the table specialtypesetting may be used. This is a table with
-- one entry per file. Each entry is itself a table, and these contain a list
-- of engines and settings for cmd and func. For example, to choose to use
-- LuaTEX for one file when typesetexe is pdftex:
-- ```lua
-- specialtypesetting = specialtypesetting or {}
-- specialtypesetting["foo.tex"] = {cmd = "luatex -interaction=nonstopmode"}
-- ```
-- or to select an entirely different typesetting function:
-- ```lua
-- specialtypesetting = specialtypesetting or {}
-- specialtypesetting["foo.tex"] = {func = typeset_foo}
-- ```
--- @type table?
specialtypesetting = {}

--#endregion
--#region

forcecheckepoch = true
forcedocepoch = true

--#endregion
--#region

asciiengines = { "pdftex" }

checkruns = 1

forcecheckruns = false

ctanreadme = "README.md"

ctanzip = ctanpkg .. "-ctan"

epoch = 1463734800

flatten = true

flattentds = true

maxprintline = 9999

packtdszip = false

ps2pdfopts = ""

typesetcmds = ""

typesetruns = 3

recordstatus = false

manifestfile = "MANIFEST.md"

--#region
--#endregion

--- ???
tdslocations = {}

--- @type table
tdsdirs = {}

--#region
--#endregion

-- Most of the fields correspond directly to CTAN API
--- @class UploadConfig
--- @field announcement string Announcement text
--- @field author string Author name (semicolon-separated for multiple)
--- @field ctanPath string CTAN path
--- @field email string Email address of uploader
--- @field license string | string[] Package license(s), see https://ctan.org/license
--- @field pkg string Package name
--- @field summary string One-line summary
--- @field uploader string Name of uploader
--- @field version string Package version
--- @field bugtracker (string | string[])? URL(s) of bug tracker
--- @field description string? Short description/abstract
--- @field development (string | string[])? URL(s) of development channels
--- @field home (string | string[])? URL(s) of home page
--- @field note string? Internal note to CTAN
--- @field repository (string | string[])? URL(s) of source repositories
--- @field support (string | string[])? URL(s) of support channels
--- @field topic (string | string[])? Topic(s), see https://ctan.org/topics/highscore
--- @field update boolean? true for an update, false for a new package
--- @field announcement_file string? Announcement text file
--- @field note_file string? Note text file
--- @field curlopt_file string? The filename containing the options passed to curl
uploadconfig = {
    pkg = ctanpkg
}

--#region
--#endregion

-- Extension of backup files
--- @type string
bakext = ".bak"

-- Extension of DVI files
--- @type string
dviext = ".dvi"

-- Extension of log-based test files
--- @type string
lvtext = ".lvt"

-- Extension of test file output
--- @type string
tlgext = ".tlg"

-- Extension of PDF-based test output
--- @type string
tpfext = ".tpf"

-- Extension of auto-generating test file output
--- @type string
lveext = ".lve"

-- Extension of checking output, before processing it into a .tlg
--- @type string
logext = ".log"

-- Extension of PDF-based test files
--- @type string
pvtext = ".pvt"

-- Extension of PDF file for checking and saving
--- @type string
pdfext = ".pdf"

-- Extension of PostScript files
--- @type string
psext = ".ps"

--#endregion
--#region

-- The options table holds the values passed to l3build at the command line.
-- Each possible <entry> given below corresponds to --<entry> given at the
-- command line, except the target entry which is self explanatory and the
-- names entry which corresponds to <name(s)> for check, doc, save and tag
-- targets
--
-- **It is not recommended to affect its entries.**
--- @class L3buildOptions
--- @field config string[]? Array of configuration strings
--- @field date string? Date string
--- @field dirty boolean? Dirty flag
--- @field dry-run boolean? Dry run flag
--- @field email string? Email address
--- @field engine string[]? Array of engine strings
--- @field epoch string? Epoch string
--- @field file string? File path
--- @field first boolean? First flag
--- @field full boolean? Full flag
--- @field halt-on-error boolean? Halt on error flag
--- @field help boolean? Help flag
--- @field message string? Message string
--- @field names string[]? Array of name strings
--- @field quiet boolean? Quiet flag
--- @field rerun boolean? Rerun flag
--- @field shuffle boolean? Shuffle flag
--- @field stdengine boolean? Standard engine flag
--- @field target string Target string
--- @field texmfhome string? TEXMFHOME path
options = {}

--#endregion

-- TODO: add functions
