;;                             O X O g r a p h e n e
;;      _..._       _..._       _..._       _..._       _..._       _..._
;;    .'     `.   .'     `.   .'     `.   .'     `.   .'     `.   .'     `.
;;   :         : :         : :         : :         : :         : :         :
;;   :         : :         : :         : :         : :         : :         :
;;   `.       .' `.       .' `.       .' `.       .' `.       .' `.       .'
;;     `-...-'     `-...-'     `-...-'     `-...-'     `-...-'     `-...-'
;;
;;   Colorscheme name:    oxographene themeing system
;;   Description:         Neovim Colorschemes based on base16 in fennel made with (hs)luv <3
;;   Authors              https://github.com/shaunsingh
;;                        https://github.com/geordiep

(local {: blend-hex} (require :oxographene.colorutils))

;; utilities

(macro let! [...]
  (fn let-with-scope! [[scope] name value]
    (let [name (tostring name)
          scope (tostring scope)]
      `(tset ,(match scope
                :b `vim.b
                :w `vim.w
                :t `vim.t
                :g `vim.g) ,name ,value)))

  (match [...]
    [[scope] name value] (let-with-scope! [scope] name value)
    [name value] (let-with-scope! [:g] name value)
    _ (error "expected let! to have at least two arguments: name value")))

(macro set! [option]
  (let [option (tostring option)]
    `(tset vim.o ,option true)))

(macro custom-set-face! [name attributes colors]
  (let [definition (collect [_ attr (ipairs attributes) &into colors]
                     (tostring attr)
                     true)]
    `(vim.api.nvim_set_hl 0 ,name ,definition)))

;; reset variables

(when vim.g.colors_name
  (vim.cmd.hi :clear))

;; set defaults

(let! colors_name :oxographene)
(set! termguicolors)

;; oxographene palette

(local base00 "#161616")
(local base06 "#ffffff")
(local base09 "#78a9ff")

(local oxographene (or (and (= vim.o.background :dark)
                          {: base00
                           :base01 (blend-hex base00 base06 0.085)
                           :base02 (blend-hex base00 base06 0.18)
                           :base03 (blend-hex base00 base06 0.3)
                           :base04 (blend-hex base00 base06 0.82)
                           :base05 (blend-hex base00 base06 0.95)
                           : base06
                           :base07 "#08bdba"
                           :base08 "#3ddbd9"
                           : base09
                           :base10 "#ee5396"
                           :base11 "#33b1ff"
                           :base12 "#ff7eb6"
                           :base13 "#42be65"
                           :base14 "#be95ff"
                           :base15 "#82cfff"
                           :blend "#131313"
                           :none :NONE})
                     {:base00 base06
                      :base01 (blend-hex base00 base06 0.95)
                      :base02 (blend-hex base00 base06 0.82)
                      :base03 base00
                      :base04 "#37474F"
                      :base05 "#90A4AE"
                      :base06 "#525252"
                      :base07 "#08bdba"
                      :base08 "#ff7eb6"
                      :base09 "#ee5396"
                      :base10 "#FF6F00"
                      :base11 "#0f62fe"
                      :base12 "#673AB7"
                      :base13 "#42be65"
                      :base14 "#be95ff"
                      :base15 "#FFAB91"
                      :blend "#FAFAFA"
                      :none :NONE}))

;; terminal

(let! terminal_color_0 oxographene.base01)
(let! terminal_color_1 oxographene.base11)
(let! terminal_color_2 oxographene.base14)
(let! terminal_color_3 oxographene.base13)
(let! terminal_color_4 oxographene.base09)
(let! terminal_color_5 oxographene.base15)
(let! terminal_color_6 oxographene.base08)
(let! terminal_color_7 oxographene.base05)
(let! terminal_color_8 oxographene.base03)
(let! terminal_color_9 oxographene.base11)
(let! terminal_color_10 oxographene.base14)
(let! terminal_color_11 oxographene.base13)
(let! terminal_color_12 oxographene.base09)
(let! terminal_color_13 oxographene.base15)
(let! terminal_color_14 oxographene.base07)
(let! terminal_color_15 oxographene.base06)

;; editor

(custom-set-face! :ColorColumn [] {:fg oxographene.none :bg oxographene.base01})
(custom-set-face! :Cursor [] {:fg oxographene.base00 :bg oxographene.base04})
(custom-set-face! :CursorLine [] {:fg oxographene.none :bg oxographene.base01})
(custom-set-face! :CursorColumn [] {:fg oxographene.none :bg oxographene.base01})
(custom-set-face! :CursorLineNr [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :QuickFixLine [] {:fg oxographene.none :bg oxographene.base01})
(custom-set-face! :Error [] {:fg oxographene.base04 :bg oxographene.base11})
(custom-set-face! :LineNr [] {:fg oxographene.base03 :bg oxographene.base00})
(custom-set-face! :NonText [] {:fg oxographene.base02 :bg oxographene.none})
(custom-set-face! :Normal [] {:fg oxographene.base04 :bg oxographene.base00})
(custom-set-face! :Pmenu [] {:fg oxographene.base04 :bg oxographene.base01})
(custom-set-face! :PmenuSbar [] {:fg oxographene.base04 :bg oxographene.base01})
(custom-set-face! :PmenuSel [] {:fg oxographene.base08 :bg oxographene.base02})
(custom-set-face! :PmenuThumb [] {:fg oxographene.base08 :bg oxographene.base02})
(custom-set-face! :SpecialKey [] {:fg oxographene.base03 :bg oxographene.none})
(custom-set-face! :Visual [] {:fg oxographene.none :bg oxographene.base02})
(custom-set-face! :VisualNOS [] {:fg oxographene.none :bg oxographene.base02})
(custom-set-face! :TooLong [] {:fg oxographene.none :bg oxographene.base02})
(custom-set-face! :Debug [] {:fg oxographene.base13 :bg oxographene.none})
(custom-set-face! :Macro [] {:fg oxographene.base07 :bg oxographene.none})
(custom-set-face! :MatchParen [:underline]
                  {:fg oxographene.none :bg oxographene.base02})
(custom-set-face! :Bold [:bold] {:fg oxographene.none :bg oxographene.none})
(custom-set-face! :Italic [:italic] {:fg oxographene.none :bg oxographene.none})
(custom-set-face! :Underlined [:underline]
                  {:fg oxographene.none :bg oxographene.none})

;; diagnostics

(custom-set-face! :DiagnosticWarn [] {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! :DiagnosticError [] {:fg oxographene.base10 :bg oxographene.none})
(custom-set-face! :DiagnosticInfo [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :DiagnosticHint [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :DiagnosticUnderlineWarn [:undercurl]
                  {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! :DiagnosticUnderlineError [:undercurl]
                  {:fg oxographene.base10 :bg oxographene.none})
(custom-set-face! :DiagnosticUnderlineInfo [:undercurl]
                  {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :DiagnosticUnderlineHint [:undercurl]
                  {:fg oxographene.base04 :bg oxographene.none})

;; lsp

(custom-set-face! :LspReferenceText [] {:fg oxographene.none :bg oxographene.base03})
(custom-set-face! :LspReferenceread [] {:fg oxographene.none :bg oxographene.base03})
(custom-set-face! :LspReferenceWrite [] {:fg oxographene.none :bg oxographene.base03})
(custom-set-face! :LspSignatureActiveParameter [] {:fg oxographene.base08 :bg oxographene.none})

;; gutter

(custom-set-face! :Folded [] {:fg oxographene.base02 :bg oxographene.base01})
(custom-set-face! :FoldColumn [] {:fg oxographene.base01 :bg oxographene.base00})
(custom-set-face! :SignColumn [] {:fg oxographene.base01 :bg oxographene.base00})

;; navigation

(custom-set-face! :Directory [] {:fg oxographene.base08 :bg oxographene.none})

;; prompts

(custom-set-face! :EndOfBuffer [] {:fg oxographene.base01 :bg oxographene.none})
(custom-set-face! :ErrorMsg [] {:fg oxographene.base10 :bg oxographene.none})
(custom-set-face! :ModeMsg [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :MoreMsg [] {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! :Question [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :Substitute [] {:fg oxographene.base01 :bg oxographene.base08})
(custom-set-face! :WarningMsg [] {:fg oxographene.base13 :bg oxographene.none})
(custom-set-face! :WildMenu [] {:fg oxographene.base08 :bg oxographene.base01})

;; vimhelp

(custom-set-face! :helpHyperTextJump []
                  {:fg oxographene.base08 :bg oxographene.none})

(custom-set-face! :helpSpecial [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :helpHeadline [] {:fg oxographene.base10 :bg oxographene.none})
(custom-set-face! :helpHeader [] {:fg oxographene.base15 :bg oxographene.none})

;; diff

(custom-set-face! :DiffAdded [] {:fg oxographene.base07 :bg oxographene.none})
(custom-set-face! :DiffChanged [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :DiffRemoved [] {:fg oxographene.base10 :bg oxographene.none})
(custom-set-face! :DiffAdd [] {:bg "#122f2f" :fg oxographene.none})
(custom-set-face! :DiffChange [] {:bg "#222a39" :fg oxographene.none})
(custom-set-face! :DiffText [] {:bg "#2f3f5c" :fg oxographene.none})
(custom-set-face! :DiffDelete [] {:bg "#361c28" :fg oxographene.none})

;; search

(custom-set-face! :IncSearch [] {:fg oxographene.base06 :bg oxographene.base10})
(custom-set-face! :Search [] {:fg oxographene.base01 :bg oxographene.base08})

;; tabs

(custom-set-face! :TabLine [] {:link "StatusLineNC"})
(custom-set-face! :TabLineFill [] {:link "TabLine"})
(custom-set-face! :TabLineSel [] {:link "StatusLine"})

;; window

(custom-set-face! :Title [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :VertSplit [] {:fg oxographene.base01 :bg oxographene.base00})

;; regular syntax

(custom-set-face! :Boolean [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :Character [] {:fg oxographene.base14 :bg oxographene.none})
(custom-set-face! :Comment [:italic]
                  {:fg oxographene.base03 :bg oxographene.none})
(custom-set-face! :Conceal [] {:fg oxographene.none :bg oxographene.none})
(custom-set-face! :Conditional [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :Constant [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :Decorator [] {:fg oxographene.base12 :bg oxographene.none})
(custom-set-face! :Define [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :Delimeter [] {:fg oxographene.base06 :bg oxographene.none})
(custom-set-face! :Exception [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :Float [] {:link "Number"})
(custom-set-face! :Function [] {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! :Identifier [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :Include [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :Keyword [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :Label [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :Number [] {:fg oxographene.base15 :bg oxographene.none})
(custom-set-face! :Operator [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :PreProc [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :Repeat [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :Special [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :SpecialChar [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :SpecialComment [] {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! :Statement [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :StorageClass [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :String [] {:fg oxographene.base14 :bg oxographene.none})
(custom-set-face! :Structure [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :Tag [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :Todo [] {:fg oxographene.base13 :bg oxographene.none})
(custom-set-face! :Type [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :Typedef [] {:fg oxographene.base09 :bg oxographene.none})

;; markdown

(custom-set-face! :markdownBlockquote []
                  {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! :markdownBold [] {:link "Bold"})
(custom-set-face! :markdownItalic [] {:link "Italic"})
(custom-set-face! :markdownBoldItalic [:bold :italic]
                  {:fg oxographene.none :bg oxographene.none})
(custom-set-face! :markdownRule [] {:link "Comment"})
(custom-set-face! :markdownH1 [] {:fg oxographene.base10 :bg oxographene.none})
(custom-set-face! :markdownH2 [] {:link "markdownH1"})
(custom-set-face! :markdownH3 [] {:link "markdownH1"})
(custom-set-face! :markdownH4 [] {:link "markdownH1"})
(custom-set-face! :markdownH5 [] {:link "markdownH1"})
(custom-set-face! :markdownH6 [] {:link "markdownH1"})
(custom-set-face! :markdownHeadingDelimiter [] {:link "markdownH1"})
(custom-set-face! :markdownHeadingRule [] {:link "markdownH1"})
(custom-set-face! :markdownUrl [:underline]
                  {:fg oxographene.base14 :bg oxographene.none})
(custom-set-face! :markdownCode [] {:link "String"})
(custom-set-face! :markdownCodeBlock [] {:link "markdownCode"})
(custom-set-face! :markdownCodeDelimiter [] {:link "markdownCode"})
(custom-set-face! :markdownUrl [] {:link "String"})
(custom-set-face! :markdownListMarker []
                  {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! :markdownOrderedListMarker []
                  {:fg oxographene.base08 :bg oxographene.none})

;; asciidoc

(custom-set-face! :asciidocAttributeEntry [] {:fg oxographene.base15 :bg oxographene.none})
(custom-set-face! :asciidocAttributeList [] {:link "asciidocAttributeEntry"})
(custom-set-face! :asciidocAttributeRef [] {:link "asciidocAttributeEntry"})
(custom-set-face! :asciidocHLabel [] {:link "markdownH1"})
(custom-set-face! :asciidocOneLineTitle [] {:link "markdownH1"})
(custom-set-face! :asciidocQuotedMonospaced [] {:link "markdownBlockquote"})
(custom-set-face! :asciidocURL [] {:link "markdownUrl"})

;; treesitter
;;; misc

(custom-set-face! "@comment" [] {:link "Comment"})
(custom-set-face! "@error" [] {:fg oxographene.base11 :bg oxographene.none})

;; @none
;; @preproc
;; @define

(custom-set-face! "@operator" [] {:link "Operator"})

;;; punctuation

(custom-set-face! "@puncuation.delimiter" [] {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! "@punctuation.bracket" [] {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! "@punctuation.special" [] {:fg oxographene.base08 :bg oxographene.none})

;;; literals

(custom-set-face! "@string" [] {:link "String"})
(custom-set-face! "@string.regex" [] {:fg oxographene.base07 :bg oxographene.none})
(custom-set-face! "@string.escape" [] {:fg oxographene.base15 :bg oxographene.none})

;; @string.special

(custom-set-face! "@character" [] {:link "Character"})

;; @character.special

(custom-set-face! "@boolean" [] {:link "Boolean"})
(custom-set-face! "@number" [] {:link "Number"})
(custom-set-face! "@float" [] {:link "Float"})

;;; functions

(custom-set-face! "@function" [:bold]
                  {:fg oxographene.base12 :bg oxographene.none})
(custom-set-face! "@function.builtin" [] {:fg oxographene.base12 :bg oxographene.none})

;; @function.call

(custom-set-face! "@function.macro" [] {:fg oxographene.base07 :bg oxographene.none})
(custom-set-face! "@method" [] {:fg oxographene.base07 :bg oxographene.none})

;; @method.call

(custom-set-face! "@constructor" [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! "@parameter" [] {:fg oxographene.base04 :bg oxographene.none})

;;; keywords

(custom-set-face! "@keyword" [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! "@keyword.function" [] {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! "@keyword.operator" [] {:fg oxographene.base08 :bg oxographene.none})

;; @keyword.return

(custom-set-face! "@conditional" [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! "@repeat" [] {:fg oxographene.base09 :bg oxographene.none})

;; @debug

(custom-set-face! "@label" [] {:fg oxographene.base15 :bg oxographene.none})
(custom-set-face! "@include" [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! "@exception" [] {:fg oxographene.base15 :bg oxographene.none})

;;; types

(custom-set-face! "@type" [] {:link "Type"})
(custom-set-face! "@type.builtin" [] {:link "Type"})

;; @type.defintion
;; @type.qualifier
;; @storageclass
;; @storageclass.lifetime

(custom-set-face! "@attribute" [] {:fg oxographene.base15 :bg oxographene.none})
(custom-set-face! "@field" [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! "@property" [] {:fg oxographene.base10 :bg oxographene.none})

;;; identifiers

(custom-set-face! "@variable" [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! "@variable.builtin" [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! "@constant" [] {:fg oxographene.base14 :bg oxographene.none})
(custom-set-face! "@constant.builtin" [] {:fg oxographene.base07 :bg oxographene.none})
(custom-set-face! "@constant.macro" [] {:fg oxographene.base07 :bg oxographene.none})
(custom-set-face! "@namespace" [] {:fg oxographene.base07 :bg oxographene.none})
(custom-set-face! "@symbol" [:bold]
                  {:fg oxographene.base15 :bg oxographene.none})

;;; text

(custom-set-face! "@text" [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! "@text.strong" [] {:fg oxographene.none :bg oxographene.none})
(custom-set-face! "@text.emphasis" [:bold]
                  {:fg oxographene.base10 :bg oxographene.none})
(custom-set-face! "@text.underline" [:underline]
                  {:fg oxographene.base10 :bg oxographene.none})
(custom-set-face! "@text.strike" [:strikethrough]
                  {:fg oxographene.base10 :bg oxographene.none})
(custom-set-face! "@text.title" [] {:fg oxographene.base10 :bg oxographene.none})
(custom-set-face! "@text.literal" [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! "@text.uri" [:underline]
                  {:fg oxographene.base14 :bg oxographene.none})

;; @text.math
;; @text.environment
;; @text.environment.name
;; @text.reference
;; @text.todo
;; @text.note
;; @text.warning
;; @text.danger
;; @text.diff.add
;; @text.diff.delete
;;; tags

(custom-set-face! "@tag" [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! "@tag.attribute" [] {:fg oxographene.base15 :bg oxographene.none})
(custom-set-face! "@tag.delimiter" [] {:fg oxographene.base15 :bg oxographene.none})

;;; Conceal
;; @conceal
;;; Spell
;; @spell
;; @nospell
;;; non-standard
;; @variable.global
;;; locals
;; @definition
;; @definition.constant
;; @definition.function
;; @definition.method
;; @definition.var
;; @definition.parameter
;; @definition.macro
;; @definition.type
;; @definition.field
;; @definition.enum
;; @definition.namespace
;; @definition.import
;; @definition.associated
;; @scope

(custom-set-face! "@reference" [] {:fg oxographene.base04 :bg oxographene.none})

;; neovim

(custom-set-face! :NvimInternalError [] {:fg oxographene.base00 :bg oxographene.base08})
(custom-set-face! :NormalFloat [] {:fg oxographene.base05 :bg oxographene.blend})
(custom-set-face! :FloatBorder [] {:fg oxographene.blend :bg oxographene.blend})
(custom-set-face! :NormalNC [] {:fg oxographene.base05 :bg oxographene.base00})
(custom-set-face! :TermCursor [] {:fg oxographene.base00 :bg oxographene.base04})
(custom-set-face! :TermCursorNC [] {:fg oxographene.base00 :bg oxographene.base04})

;; statusline/winbar

(custom-set-face! :StatusLine [] {:fg oxographene.base04 :bg oxographene.base00})
(custom-set-face! :StatusLineNC [] {:fg oxographene.base04 :bg oxographene.base01})
(custom-set-face! :StatusReplace [] {:fg oxographene.base00 :bg oxographene.base08})
(custom-set-face! :StatusInsert [] {:fg oxographene.base00 :bg oxographene.base12})
(custom-set-face! :StatusVisual [] {:fg oxographene.base00 :bg oxographene.base14})
(custom-set-face! :StatusTerminal [] {:fg oxographene.base00 :bg oxographene.base11})
(custom-set-face! :StatusNormal [] {:fg oxographene.base00 :bg oxographene.base15})
(custom-set-face! :StatusCommand [] {:fg oxographene.base00 :bg oxographene.base13})
(custom-set-face! :StatusLineDiagnosticWarn [:bold]
                  {:fg oxographene.base14 :bg oxographene.base00})
(custom-set-face! :StatusLineDiagnosticError [:bold]
                  {:fg oxographene.base08 :bg oxographene.base00})

;; telescope

(custom-set-face! :TelescopeBorder [] {:fg oxographene.blend :bg oxographene.blend})
(custom-set-face! :TelescopePromptBorder [] {:fg oxographene.base02 :bg oxographene.base02})
(custom-set-face! :TelescopePromptNormal [] {:fg oxographene.base05 :bg oxographene.base02})
(custom-set-face! :TelescopePromptPrefix [] {:fg oxographene.base08 :bg oxographene.base02})
(custom-set-face! :TelescopeNormal [] {:fg oxographene.none :bg oxographene.blend})
(custom-set-face! :TelescopePreviewTitle [] {:fg oxographene.base02 :bg oxographene.base12})
(custom-set-face! :TelescopePromptTitle [] {:fg oxographene.base02 :bg oxographene.base11})
(custom-set-face! :TelescopeResultsTitle [] {:fg oxographene.blend :bg oxographene.blend})
(custom-set-face! :TelescopeSelection [] {:fg oxographene.none :bg oxographene.base02})
(custom-set-face! :TelescopePreviewLine [] {:fg oxographene.none :bg oxographene.base01})
(custom-set-face! :TelescopeMatching [:bold :italic] {:fg oxographene.base08 :bg oxographene.none})

;; notify

(custom-set-face! :NotifyERRORBorder [] {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! :NotifyWARNBorder [] {:fg oxographene.base15 :bg oxographene.none})
(custom-set-face! :NotifyINFOBorder [] {:fg oxographene.base05 :bg oxographene.none})
(custom-set-face! :NotifyDEBUGBorder [] {:fg oxographene.base13 :bg oxographene.none})
(custom-set-face! :NotifyTRACEBorder [] {:fg oxographene.base13 :bg oxographene.none})
(custom-set-face! :NotifyERRORIcon [] {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! :NotifyWARNIcon [] {:fg oxographene.base15 :bg oxographene.none})
(custom-set-face! :NotifyINFOIcon [] {:fg oxographene.base05 :bg oxographene.none})
(custom-set-face! :NotifyDEBUGIcon [] {:fg oxographene.base13 :bg oxographene.none})
(custom-set-face! :NotifyTRACEIcon [] {:fg oxographene.base13 :bg oxographene.none})
(custom-set-face! :NotifyERRORTitle [] {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! :NotifyWARNTitle [] {:fg oxographene.base15 :bg oxographene.none})
(custom-set-face! :NotifyINFOTitle [] {:fg oxographene.base05 :bg oxographene.none})
(custom-set-face! :NotifyDEBUGTitle [] {:fg oxographene.base13 :bg oxographene.none})
(custom-set-face! :NotifyTRACETitle [] {:fg oxographene.base13 :bg oxographene.none})

;; cmp

(custom-set-face! :CmpItemAbbr [] {:fg "#adadad" :bg oxographene.none})
(custom-set-face! :CmpItemAbbrMatch [:bold]
                  {:fg oxographene.base05 :bg oxographene.none})
(custom-set-face! :CmpItemAbbrMatchFuzzy [:bold]
                  {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :CmpItemMenu [:italic]
                  {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :CmpItemKindInterface [] {:fg oxographene.base01 :bg oxographene.base08})
(custom-set-face! :CmpItemKindColor [] {:fg oxographene.base01 :bg oxographene.base08})
(custom-set-face! :CmpItemKindTypeParameter [] {:fg oxographene.base01 :bg oxographene.base08})
(custom-set-face! :CmpItemKindText [] {:fg oxographene.base01 :bg oxographene.base09})
(custom-set-face! :CmpItemKindEnum [] {:fg oxographene.base01 :bg oxographene.base09})
(custom-set-face! :CmpItemKindKeyword [] {:fg oxographene.base01 :bg oxographene.base09})
(custom-set-face! :CmpItemKindConstant [] {:fg oxographene.base01 :bg oxographene.base10})
(custom-set-face! :CmpItemKindConstructor [] {:fg oxographene.base01 :bg oxographene.base10})
(custom-set-face! :CmpItemKindReference [] {:fg oxographene.base01 :bg oxographene.base10})
(custom-set-face! :CmpItemKindFunction [] {:fg oxographene.base01 :bg oxographene.base11})
(custom-set-face! :CmpItemKindStruct [] {:fg oxographene.base01 :bg oxographene.base11})
(custom-set-face! :CmpItemKindClass [] {:fg oxographene.base01 :bg oxographene.base11})
(custom-set-face! :CmpItemKindModule [] {:fg oxographene.base01 :bg oxographene.base11})
(custom-set-face! :CmpItemKindOperator [] {:fg oxographene.base01 :bg oxographene.base11})
(custom-set-face! :CmpItemKindField [] {:fg oxographene.base01 :bg oxographene.base12})
(custom-set-face! :CmpItemKindProperty [] {:fg oxographene.base01 :bg oxographene.base12})
(custom-set-face! :CmpItemKindEvent [] {:fg oxographene.base01 :bg oxographene.base12})
(custom-set-face! :CmpItemKindUnit [] {:fg oxographene.base01 :bg oxographene.base13})
(custom-set-face! :CmpItemKindSnippet [] {:fg oxographene.base01 :bg oxographene.base13})
(custom-set-face! :CmpItemKindFolder [] {:fg oxographene.base01 :bg oxographene.base13})
(custom-set-face! :CmpItemKindVariable [] {:fg oxographene.base01 :bg oxographene.base14})
(custom-set-face! :CmpItemKindFile [] {:fg oxographene.base01 :bg oxographene.base14})
(custom-set-face! :CmpItemKindMethod [] {:fg oxographene.base01 :bg oxographene.base15})
(custom-set-face! :CmpItemKindValue [] {:fg oxographene.base01 :bg oxographene.base15})
(custom-set-face! :CmpItemKindEnumMember [] {:fg oxographene.base01 :bg oxographene.base15})

;; nvimtree

(custom-set-face! :NvimTreeImageFile [] {:fg oxographene.base12 :bg oxographene.none})
(custom-set-face! :NvimTreeFolderIcon [] {:fg oxographene.base12 :bg oxographene.none})
(custom-set-face! :NvimTreeWinSeparator [] {:fg oxographene.base00 :bg oxographene.base00})
(custom-set-face! :NvimTreeFolderName [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :NvimTreeIndentMarker [] {:fg oxographene.base02 :bg oxographene.none})
(custom-set-face! :NvimTreeEmptyFolderName [] {:fg oxographene.base15 :bg oxographene.none})
(custom-set-face! :NvimTreeOpenedFolderName [] {:fg oxographene.base15 :bg oxographene.none})
(custom-set-face! :NvimTreeNormal [] {:fg oxographene.base04 :bg oxographene.base00})

;; neogit

(custom-set-face! :NeogitBranch [] {:fg oxographene.base10 :bg oxographene.none})
(custom-set-face! :NeogitRemote [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :NeogitHunkHeader [] {:fg oxographene.base04 :bg oxographene.base02})
(custom-set-face! :NeogitHunkHeaderHighlight [] {:fg oxographene.base04 :bg oxographene.base03})

;; hydra

(custom-set-face! :HydraRed [] {:fg oxographene.base12 :bg oxographene.none})
(custom-set-face! :HydraBlue [] {:fg oxographene.base09 :bg oxographene.none})
(custom-set-face! :HydraAmaranth [] {:fg oxographene.base10 :bg oxographene.none})
(custom-set-face! :HydraTeal [] {:fg oxographene.base08 :bg oxographene.none})
(custom-set-face! :HydraHint [] {:fg oxographene.none :bg oxographene.blend})

;; alpha

(custom-set-face! :alpha1 [] {:fg oxographene.base03 :bg oxographene.none})
(custom-set-face! :alpha2 [] {:fg oxographene.base04 :bg oxographene.none})
(custom-set-face! :alpha3 [] {:fg oxographene.base03 :bg oxographene.none})

;; headlines.nvim

(custom-set-face! :CodeBlock [] {:fg oxographene.none :bg oxographene.base01})

;; nvim-bufferline

(custom-set-face! :BufferLineDiagnostic [:bold]
                  {:fg oxographene.base10 :bg oxographene.none})

(custom-set-face! :BufferLineDiagnosticVisible [:bold]
                  {:fg oxographene.base10 :bg oxographene.none})

;; preservim/vim-markdown

(custom-set-face! :htmlH1 [] {:link "markdownH1"})
(custom-set-face! :mkdRule [] {:link "markdownRule"})
(custom-set-face! :mkdListItem [] {:link "markdownListMarker"})
(custom-set-face! :mkdListItemCheckbox [] {:link "markdownListMarker"})

;; vimwiki/vimwiki

(custom-set-face! :VimwikiHeader1 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader2 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader3 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader4 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader5 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeader6 [] {:link "markdownH1"})
(custom-set-face! :VimwikiHeaderChar [] {:link "markdownH1"})
(custom-set-face! :VimwikiList [] {:link "markdownListMarker"})
(custom-set-face! :VimwikiLink [] {:link "markdownUrl"})
(custom-set-face! :VimwikiCode [] {:link "markdownCode"})

{ : oxographene }
