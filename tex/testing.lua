-- Include this `in_mathzone` function at the start of a snippets file...
local in_mathzone = function()
-- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
-- Then pass the table `{condition = in_mathzone}` to any snippet you want to
-- expand only in math contexts.

return {
-- Examples of Greek letter snippets, autotriggered for efficiency
s({trig=":exp", snippetType="autosnippet"},
  {
    t("Experiment Success."),
  }
),
s({trig = "([^%a])mm", wordTrig = false, regTrig = true},
  fmta(
    "<>$<>$",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual),
    }
  )
),

-- Add a 0 subscript when typing 00 after a letter. 
s({trig = '([%a%)%]%}])00', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("0")
    }
  )
),

-- Add a 1 subscript when typing 11 after a letter. 
s({trig = '([%a%)%]%}])11', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("1")
    }
  )
),

-- Add a 2 subscript when typing 22 after a letter. 
s({trig = '([%a%)%]%}])22', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("2")
    }
  )
),

-- Add a 3 subscript when typing 33 after a letter. 
s({trig = '([%a%)%]%}])33', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("3")
    }
  )
),

}
