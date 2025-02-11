local _local_1_ = require("oxographene.colorutils")
local blend_hex = _local_1_["blend-hex"]
if vim.g.colors_name then
  vim.cmd.hi("clear")
else
end
vim.g["colors_name"] = "oxographene"
vim.o["termguicolors"] = true
local base00 = "#161616"
local base06 = "#ffffff"
local base09 = "#7a7a7a"
local oxographene = (((vim.o.background == "dark") and {base00 = base00, base01 = blend_hex(base00, base06, 0.085), base02 = blend_hex(base00, base06, 0.18), base03 = blend_hex(base00, base06, 0.3), base04 = blend_hex(base00, base06, 0.82), base05 = blend_hex(base00, base06, 0.95), base06 = base06, base07 = "#07af9e", base08 = "#349cbb", base09 = base09, base10 = "#ee5396", base11 = "#33b1ff", base12 = "#ff7eb6", base13 = "#42be65", base14 = "#997ee2", base15 = "#82cfff", blend = "#131313", none = "NONE"}) or {base00 = base06, base01 = blend_hex(base00, base06, 0.95), base02 = blend_hex(base00, base06, 0.82), base03 = base00, base04 = "#37474F", base05 = "#90A4AE", base06 = "#525252", base07 = "#08bdba", base08 = "#ff7eb6", base09 = "#ee5396", base10 = "#FF6F00", base11 = "#0f62fe", base12 = "#673AB7", base13 = "#42be65", base14 = "#be95ff", base15 = "#FFAB91", blend = "#FAFAFA", none = "NONE"})
do end (vim.g)["terminal_color_0"] = oxographene.base01
vim.g["terminal_color_1"] = oxographene.base11
vim.g["terminal_color_2"] = oxographene.base14
vim.g["terminal_color_3"] = oxographene.base13
vim.g["terminal_color_4"] = oxographene.base09
vim.g["terminal_color_5"] = oxographene.base15
vim.g["terminal_color_6"] = oxographene.base08
vim.g["terminal_color_7"] = oxographene.base05
vim.g["terminal_color_8"] = oxographene.base03
vim.g["terminal_color_9"] = oxographene.base11
vim.g["terminal_color_10"] = oxographene.base14
vim.g["terminal_color_11"] = oxographene.base13
vim.g["terminal_color_12"] = oxographene.base09
vim.g["terminal_color_13"] = oxographene.base15
vim.g["terminal_color_14"] = oxographene.base07
vim.g["terminal_color_15"] = oxographene.base06
vim.api.nvim_set_hl(0, "ColorColumn", {fg = oxographene.none, bg = oxographene.base01})
vim.api.nvim_set_hl(0, "Cursor", {fg = oxographene.base00, bg = oxographene.base04})
vim.api.nvim_set_hl(0, "CursorLine", {fg = oxographene.none, bg = oxographene.base01})
vim.api.nvim_set_hl(0, "CursorColumn", {fg = oxographene.none, bg = oxographene.base01})
vim.api.nvim_set_hl(0, "CursorLineNr", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "QuickFixLine", {fg = oxographene.none, bg = oxographene.base01})
vim.api.nvim_set_hl(0, "Error", {fg = oxographene.base04, bg = oxographene.base11})
vim.api.nvim_set_hl(0, "LineNr", {fg = oxographene.base03, bg = oxographene.base00})
vim.api.nvim_set_hl(0, "NonText", {fg = oxographene.base02, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Normal", {fg = oxographene.base04, bg = oxographene.base00})
vim.api.nvim_set_hl(0, "Pmenu", {fg = oxographene.base04, bg = oxographene.base01})
vim.api.nvim_set_hl(0, "PmenuSbar", {fg = oxographene.base04, bg = oxographene.base01})
vim.api.nvim_set_hl(0, "PmenuSel", {fg = oxographene.base08, bg = oxographene.base02})
vim.api.nvim_set_hl(0, "PmenuThumb", {fg = oxographene.base08, bg = oxographene.base02})
vim.api.nvim_set_hl(0, "SpecialKey", {fg = oxographene.base03, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Visual", {fg = oxographene.none, bg = oxographene.base02})
vim.api.nvim_set_hl(0, "VisualNOS", {fg = oxographene.none, bg = oxographene.base02})
vim.api.nvim_set_hl(0, "TooLong", {fg = oxographene.none, bg = oxographene.base02})
vim.api.nvim_set_hl(0, "Debug", {fg = oxographene.base13, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Macro", {fg = oxographene.base07, bg = oxographene.none})
vim.api.nvim_set_hl(0, "MatchParen", {fg = oxographene.none, bg = oxographene.base02, underline = true})
vim.api.nvim_set_hl(0, "Bold", {fg = oxographene.none, bg = oxographene.none, bold = true})
vim.api.nvim_set_hl(0, "Italic", {fg = oxographene.none, bg = oxographene.none, italic = true})
vim.api.nvim_set_hl(0, "Underlined", {fg = oxographene.none, bg = oxographene.none, underline = true})
vim.api.nvim_set_hl(0, "DiagnosticWarn", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "DiagnosticError", {fg = oxographene.base10, bg = oxographene.none})
vim.api.nvim_set_hl(0, "DiagnosticInfo", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "DiagnosticHint", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {fg = oxographene.base08, bg = oxographene.none, undercurl = true})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {fg = oxographene.base10, bg = oxographene.none, undercurl = true})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {fg = oxographene.base04, bg = oxographene.none, undercurl = true})
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {fg = oxographene.base04, bg = oxographene.none, undercurl = true})
vim.api.nvim_set_hl(0, "LspReferenceText", {fg = oxographene.none, bg = oxographene.base03})
vim.api.nvim_set_hl(0, "LspReferenceread", {fg = oxographene.none, bg = oxographene.base03})
vim.api.nvim_set_hl(0, "LspReferenceWrite", {fg = oxographene.none, bg = oxographene.base03})
vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Folded", {fg = oxographene.base02, bg = oxographene.base01})
vim.api.nvim_set_hl(0, "FoldColumn", {fg = oxographene.base01, bg = oxographene.base00})
vim.api.nvim_set_hl(0, "SignColumn", {fg = oxographene.base01, bg = oxographene.base00})
vim.api.nvim_set_hl(0, "Directory", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "EndOfBuffer", {fg = oxographene.base01, bg = oxographene.none})
vim.api.nvim_set_hl(0, "ErrorMsg", {fg = oxographene.base10, bg = oxographene.none})
vim.api.nvim_set_hl(0, "ModeMsg", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "MoreMsg", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Question", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Substitute", {fg = oxographene.base01, bg = oxographene.base08})
vim.api.nvim_set_hl(0, "WarningMsg", {fg = oxographene.base13, bg = oxographene.none})
vim.api.nvim_set_hl(0, "WildMenu", {fg = oxographene.base08, bg = oxographene.base01})
vim.api.nvim_set_hl(0, "helpHyperTextJump", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "helpSpecial", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "helpHeadline", {fg = oxographene.base10, bg = oxographene.none})
vim.api.nvim_set_hl(0, "helpHeader", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "DiffAdded", {fg = oxographene.base07, bg = oxographene.none})
vim.api.nvim_set_hl(0, "DiffChanged", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "DiffRemoved", {fg = oxographene.base10, bg = oxographene.none})
vim.api.nvim_set_hl(0, "DiffAdd", {bg = "#122f2f", fg = oxographene.none})
vim.api.nvim_set_hl(0, "DiffChange", {bg = "#222a39", fg = oxographene.none})
vim.api.nvim_set_hl(0, "DiffText", {bg = "#2f3f5c", fg = oxographene.none})
vim.api.nvim_set_hl(0, "DiffDelete", {bg = "#361c28", fg = oxographene.none})
vim.api.nvim_set_hl(0, "IncSearch", {fg = oxographene.base06, bg = oxographene.base10})
vim.api.nvim_set_hl(0, "Search", {fg = oxographene.base01, bg = oxographene.base08})
vim.api.nvim_set_hl(0, "TabLine", {link = "StatusLineNC"})
vim.api.nvim_set_hl(0, "TabLineFill", {link = "TabLine"})
vim.api.nvim_set_hl(0, "TabLineSel", {link = "StatusLine"})
vim.api.nvim_set_hl(0, "Title", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "VertSplit", {fg = oxographene.base01, bg = oxographene.base00})
vim.api.nvim_set_hl(0, "Boolean", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Character", {fg = oxographene.base14, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Comment", {fg = oxographene.base03, bg = oxographene.none, italic = true})
vim.api.nvim_set_hl(0, "Conceal", {fg = oxographene.none, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Conditional", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Constant", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Decorator", {fg = oxographene.base12, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Define", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Delimeter", {fg = oxographene.base06, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Exception", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Float", {link = "Number"})
vim.api.nvim_set_hl(0, "Function", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Identifier", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Include", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Keyword", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Label", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Number", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Operator", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "PreProc", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Repeat", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Special", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "SpecialChar", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "SpecialComment", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Statement", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "StorageClass", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "String", {fg = oxographene.base14, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Structure", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Tag", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Todo", {fg = oxographene.base13, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Type", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "Typedef", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "markdownBlockquote", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "markdownBold", {link = "Bold"})
vim.api.nvim_set_hl(0, "markdownItalic", {link = "Italic"})
vim.api.nvim_set_hl(0, "markdownBoldItalic", {fg = oxographene.none, bg = oxographene.none, bold = true, italic = true})
vim.api.nvim_set_hl(0, "markdownRule", {link = "Comment"})
vim.api.nvim_set_hl(0, "markdownH1", {fg = oxographene.base10, bg = oxographene.none})
vim.api.nvim_set_hl(0, "markdownH2", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH3", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH4", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH5", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownH6", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownHeadingRule", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "markdownUrl", {fg = oxographene.base14, bg = oxographene.none, underline = true})
vim.api.nvim_set_hl(0, "markdownCode", {link = "String"})
vim.api.nvim_set_hl(0, "markdownCodeBlock", {link = "markdownCode"})
vim.api.nvim_set_hl(0, "markdownCodeDelimiter", {link = "markdownCode"})
vim.api.nvim_set_hl(0, "markdownUrl", {link = "String"})
vim.api.nvim_set_hl(0, "markdownListMarker", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "markdownOrderedListMarker", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "asciidocAttributeEntry", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "asciidocAttributeList", {link = "asciidocAttributeEntry"})
vim.api.nvim_set_hl(0, "asciidocAttributeRef", {link = "asciidocAttributeEntry"})
vim.api.nvim_set_hl(0, "asciidocHLabel", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "asciidocOneLineTitle", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "asciidocQuotedMonospaced", {link = "markdownBlockquote"})
vim.api.nvim_set_hl(0, "asciidocURL", {link = "markdownUrl"})
vim.api.nvim_set_hl(0, "@comment", {link = "Comment"})
vim.api.nvim_set_hl(0, "@error", {fg = oxographene.base11, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@operator", {link = "Operator"})
vim.api.nvim_set_hl(0, "@puncuation.delimiter", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@punctuation.bracket", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@punctuation.special", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@string", {link = "String"})
vim.api.nvim_set_hl(0, "@string.regex", {fg = oxographene.base07, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@string.escape", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@character", {link = "Character"})
vim.api.nvim_set_hl(0, "@boolean", {link = "Boolean"})
vim.api.nvim_set_hl(0, "@number", {link = "Number"})
vim.api.nvim_set_hl(0, "@float", {link = "Float"})
vim.api.nvim_set_hl(0, "@function", {fg = oxographene.base12, bg = oxographene.none, bold = true})
vim.api.nvim_set_hl(0, "@function.builtin", {fg = oxographene.base12, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@function.macro", {fg = oxographene.base07, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@method", {fg = oxographene.base07, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@constructor", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@parameter", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@keyword", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@keyword.function", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@keyword.operator", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@conditional", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@repeat", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@label", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@include", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@exception", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@type", {link = "Type"})
vim.api.nvim_set_hl(0, "@type.builtin", {link = "Type"})
vim.api.nvim_set_hl(0, "@attribute", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@field", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@property", {fg = oxographene.base10, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@variable", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@variable.builtin", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@constant", {fg = oxographene.base14, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@constant.builtin", {fg = oxographene.base07, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@constant.macro", {fg = oxographene.base07, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@namespace", {fg = oxographene.base07, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@symbol", {fg = oxographene.base15, bg = oxographene.none, bold = true})
vim.api.nvim_set_hl(0, "@text", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@text.strong", {fg = oxographene.none, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@text.emphasis", {fg = oxographene.base10, bg = oxographene.none, bold = true})
vim.api.nvim_set_hl(0, "@text.underline", {fg = oxographene.base10, bg = oxographene.none, underline = true})
vim.api.nvim_set_hl(0, "@text.strike", {fg = oxographene.base10, bg = oxographene.none, strikethrough = true})
vim.api.nvim_set_hl(0, "@text.title", {fg = oxographene.base10, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@text.literal", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@text.uri", {fg = oxographene.base14, bg = oxographene.none, underline = true})
vim.api.nvim_set_hl(0, "@tag", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@tag.attribute", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@tag.delimiter", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "@reference", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NvimInternalError", {fg = oxographene.base00, bg = oxographene.base08})
vim.api.nvim_set_hl(0, "NormalFloat", {fg = oxographene.base05, bg = oxographene.blend})
vim.api.nvim_set_hl(0, "FloatBorder", {fg = oxographene.blend, bg = oxographene.blend})
vim.api.nvim_set_hl(0, "NormalNC", {fg = oxographene.base05, bg = oxographene.base00})
vim.api.nvim_set_hl(0, "TermCursor", {fg = oxographene.base00, bg = oxographene.base04})
vim.api.nvim_set_hl(0, "TermCursorNC", {fg = oxographene.base00, bg = oxographene.base04})
vim.api.nvim_set_hl(0, "StatusLine", {fg = oxographene.base04, bg = oxographene.base00})
vim.api.nvim_set_hl(0, "StatusLineNC", {fg = oxographene.base04, bg = oxographene.base01})
vim.api.nvim_set_hl(0, "StatusReplace", {fg = oxographene.base00, bg = oxographene.base08})
vim.api.nvim_set_hl(0, "StatusInsert", {fg = oxographene.base00, bg = oxographene.base12})
vim.api.nvim_set_hl(0, "StatusVisual", {fg = oxographene.base00, bg = oxographene.base14})
vim.api.nvim_set_hl(0, "StatusTerminal", {fg = oxographene.base00, bg = oxographene.base11})
vim.api.nvim_set_hl(0, "StatusNormal", {fg = oxographene.base00, bg = oxographene.base15})
vim.api.nvim_set_hl(0, "StatusCommand", {fg = oxographene.base00, bg = oxographene.base13})
vim.api.nvim_set_hl(0, "StatusLineDiagnosticWarn", {fg = oxographene.base14, bg = oxographene.base00, bold = true})
vim.api.nvim_set_hl(0, "StatusLineDiagnosticError", {fg = oxographene.base08, bg = oxographene.base00, bold = true})
vim.api.nvim_set_hl(0, "TelescopeBorder", {fg = oxographene.blend, bg = oxographene.blend})
vim.api.nvim_set_hl(0, "TelescopePromptBorder", {fg = oxographene.base02, bg = oxographene.base02})
vim.api.nvim_set_hl(0, "TelescopePromptNormal", {fg = oxographene.base05, bg = oxographene.base02})
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", {fg = oxographene.base08, bg = oxographene.base02})
vim.api.nvim_set_hl(0, "TelescopeNormal", {fg = oxographene.none, bg = oxographene.blend})
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", {fg = oxographene.base02, bg = oxographene.base12})
vim.api.nvim_set_hl(0, "TelescopePromptTitle", {fg = oxographene.base02, bg = oxographene.base11})
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {fg = oxographene.blend, bg = oxographene.blend})
vim.api.nvim_set_hl(0, "TelescopeSelection", {fg = oxographene.none, bg = oxographene.base02})
vim.api.nvim_set_hl(0, "TelescopePreviewLine", {fg = oxographene.none, bg = oxographene.base01})
vim.api.nvim_set_hl(0, "TelescopeMatching", {fg = oxographene.base08, bg = oxographene.none, bold = true, italic = true})
vim.api.nvim_set_hl(0, "NotifyERRORBorder", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyWARNBorder", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyINFOBorder", {fg = oxographene.base05, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", {fg = oxographene.base13, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyTRACEBorder", {fg = oxographene.base13, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyERRORIcon", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyWARNIcon", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyINFOIcon", {fg = oxographene.base05, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyDEBUGIcon", {fg = oxographene.base13, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyTRACEIcon", {fg = oxographene.base13, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyERRORTitle", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyWARNTitle", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyINFOTitle", {fg = oxographene.base05, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", {fg = oxographene.base13, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NotifyTRACETitle", {fg = oxographene.base13, bg = oxographene.none})
vim.api.nvim_set_hl(0, "CmpItemAbbr", {fg = "#adadad", bg = oxographene.none})
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", {fg = oxographene.base05, bg = oxographene.none, bold = true})
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", {fg = oxographene.base04, bg = oxographene.none, bold = true})
vim.api.nvim_set_hl(0, "CmpItemMenu", {fg = oxographene.base04, bg = oxographene.none, italic = true})
vim.api.nvim_set_hl(0, "CmpItemKindInterface", {fg = oxographene.base01, bg = oxographene.base08})
vim.api.nvim_set_hl(0, "CmpItemKindColor", {fg = oxographene.base01, bg = oxographene.base08})
vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", {fg = oxographene.base01, bg = oxographene.base08})
vim.api.nvim_set_hl(0, "CmpItemKindText", {fg = oxographene.base01, bg = oxographene.base09})
vim.api.nvim_set_hl(0, "CmpItemKindEnum", {fg = oxographene.base01, bg = oxographene.base09})
vim.api.nvim_set_hl(0, "CmpItemKindKeyword", {fg = oxographene.base01, bg = oxographene.base09})
vim.api.nvim_set_hl(0, "CmpItemKindConstant", {fg = oxographene.base01, bg = oxographene.base10})
vim.api.nvim_set_hl(0, "CmpItemKindConstructor", {fg = oxographene.base01, bg = oxographene.base10})
vim.api.nvim_set_hl(0, "CmpItemKindReference", {fg = oxographene.base01, bg = oxographene.base10})
vim.api.nvim_set_hl(0, "CmpItemKindFunction", {fg = oxographene.base01, bg = oxographene.base11})
vim.api.nvim_set_hl(0, "CmpItemKindStruct", {fg = oxographene.base01, bg = oxographene.base11})
vim.api.nvim_set_hl(0, "CmpItemKindClass", {fg = oxographene.base01, bg = oxographene.base11})
vim.api.nvim_set_hl(0, "CmpItemKindModule", {fg = oxographene.base01, bg = oxographene.base11})
vim.api.nvim_set_hl(0, "CmpItemKindOperator", {fg = oxographene.base01, bg = oxographene.base11})
vim.api.nvim_set_hl(0, "CmpItemKindField", {fg = oxographene.base01, bg = oxographene.base12})
vim.api.nvim_set_hl(0, "CmpItemKindProperty", {fg = oxographene.base01, bg = oxographene.base12})
vim.api.nvim_set_hl(0, "CmpItemKindEvent", {fg = oxographene.base01, bg = oxographene.base12})
vim.api.nvim_set_hl(0, "CmpItemKindUnit", {fg = oxographene.base01, bg = oxographene.base13})
vim.api.nvim_set_hl(0, "CmpItemKindSnippet", {fg = oxographene.base01, bg = oxographene.base13})
vim.api.nvim_set_hl(0, "CmpItemKindFolder", {fg = oxographene.base01, bg = oxographene.base13})
vim.api.nvim_set_hl(0, "CmpItemKindVariable", {fg = oxographene.base01, bg = oxographene.base14})
vim.api.nvim_set_hl(0, "CmpItemKindFile", {fg = oxographene.base01, bg = oxographene.base14})
vim.api.nvim_set_hl(0, "CmpItemKindMethod", {fg = oxographene.base01, bg = oxographene.base15})
vim.api.nvim_set_hl(0, "CmpItemKindValue", {fg = oxographene.base01, bg = oxographene.base15})
vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", {fg = oxographene.base01, bg = oxographene.base15})
vim.api.nvim_set_hl(0, "NvimTreeImageFile", {fg = oxographene.base12, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", {fg = oxographene.base12, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", {fg = oxographene.base00, bg = oxographene.base00})
vim.api.nvim_set_hl(0, "NvimTreeFolderName", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", {fg = oxographene.base02, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", {fg = oxographene.base15, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NvimTreeNormal", {fg = oxographene.base04, bg = oxographene.base00})
vim.api.nvim_set_hl(0, "NeogitBranch", {fg = oxographene.base10, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NeogitRemote", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "NeogitHunkHeader", {fg = oxographene.base04, bg = oxographene.base02})
vim.api.nvim_set_hl(0, "NeogitHunkHeaderHighlight", {fg = oxographene.base04, bg = oxographene.base03})
vim.api.nvim_set_hl(0, "HydraRed", {fg = oxographene.base12, bg = oxographene.none})
vim.api.nvim_set_hl(0, "HydraBlue", {fg = oxographene.base09, bg = oxographene.none})
vim.api.nvim_set_hl(0, "HydraAmaranth", {fg = oxographene.base10, bg = oxographene.none})
vim.api.nvim_set_hl(0, "HydraTeal", {fg = oxographene.base08, bg = oxographene.none})
vim.api.nvim_set_hl(0, "HydraHint", {fg = oxographene.none, bg = oxographene.blend})
vim.api.nvim_set_hl(0, "alpha1", {fg = oxographene.base03, bg = oxographene.none})
vim.api.nvim_set_hl(0, "alpha2", {fg = oxographene.base04, bg = oxographene.none})
vim.api.nvim_set_hl(0, "alpha3", {fg = oxographene.base03, bg = oxographene.none})
vim.api.nvim_set_hl(0, "CodeBlock", {fg = oxographene.none, bg = oxographene.base01})
vim.api.nvim_set_hl(0, "BufferLineDiagnostic", {fg = oxographene.base10, bg = oxographene.none, bold = true})
vim.api.nvim_set_hl(0, "BufferLineDiagnosticVisible", {fg = oxographene.base10, bg = oxographene.none, bold = true})
vim.api.nvim_set_hl(0, "htmlH1", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "mkdRule", {link = "markdownRule"})
vim.api.nvim_set_hl(0, "mkdListItem", {link = "markdownListMarker"})
vim.api.nvim_set_hl(0, "mkdListItemCheckbox", {link = "markdownListMarker"})
vim.api.nvim_set_hl(0, "VimwikiHeader1", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader2", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader3", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader4", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader5", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeader6", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiHeaderChar", {link = "markdownH1"})
vim.api.nvim_set_hl(0, "VimwikiList", {link = "markdownListMarker"})
vim.api.nvim_set_hl(0, "VimwikiLink", {link = "markdownUrl"})
vim.api.nvim_set_hl(0, "VimwikiCode", {link = "markdownCode"})
return {oxographene = oxographene}