-- Include this `in_mathzone` function at the start of a snippets file...
local in_mathzone = function()
-- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end
-- Then pass the table `{condition = in_mathzone}` to any snippet you want to
-- expand only in math contexts.
--
--
return {
-- Add an 'm' subscript when typing 'mm' after a letter. 
s({trig = "([^%a])mm", wordTrig = false, regTrig = true},
  fmta(
    "<>$<>$",
    {
      f( function(_, snip) return snip.captures[1] end ),
      d(1, get_visual),
    }
  ),
{condition = in_mathzone}
),

-- Add a 0 subscript when typing 00 after a letter. 
s({trig = '([%a%)%]%}])00', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("0")
    }
  ),{condition = in_mathzone}

),

-- Add a 0 superscript when typing ;00 after a letter. 
s({trig = '([%a%)%]%}]);00', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>^{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("0")
    }
  ),{condition = in_mathzone}

),

-- Add a 1 subscript when typing 11 after a letter. 
s({trig = '([%a%)%]%}])11', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("1")
    }
  ),{condition = in_mathzone}

),

-- Add a 1 superscript when typing ;11 after a letter. 
s({trig = '([%a%)%]%}]);11', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>^{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("1")
    }
  ),{condition = in_mathzone}

),

-- Add a 2 subscript when typing 22 after a letter. 
s({trig = '([%a%)%]%}])22', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("2")
    }
  ),{condition = in_mathzone}

),

-- Add a 2 superscript when typing ;22 after a letter. 
s({trig = '([%a%)%]%}]);22', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>^{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("2")
    }
  ),{condition = in_mathzone}

),

-- Add a 3 subscript when typing 33 after a letter. 
s({trig = '([%a%)%]%}])33', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("3")
    }
  ),{condition = in_mathzone}

),

-- Add a 3 superscript when typing ;33 after a letter. 
s({trig = '([%a%)%]%}]);33', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>^{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("3")
    }
  ),{condition = in_mathzone}

),

-- Add a x subscript when typing xx after a letter. 
s({trig = '([%a%)%]%}])xx', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("x")
    }
  ),{condition = in_mathzone}

),

-- Add a y subscript when typing yy after a letter. 
s({trig = '([%a%)%]%}])yy', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("y")
    }
  ),{condition = in_mathzone}

),

-- Add a z subscript when typing zz after a letter. 
s({trig = '([%a%)%]%}])zz', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("z")
    }
  ),{condition = in_mathzone}

),

-- Add an m subscript when typing mm after a letter. 
s({trig = '([%a%)%]%}])mm', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("m")
    }
  ),{condition = in_mathzone}

),

-- Add an n subscript when typing nn after a letter. 
s({trig = '([%a%)%]%}])nn', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>_{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("n")
    }
  ),{condition = in_mathzone}

),

-- Add a * superscript (conjugate) when typing cj after a letter. 
s({trig = '([%a%)%]%}])cj', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>^{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("*")
    }
  ),{condition = in_mathzone}

),

-- Add a dagger superscript when typing dg after a letter. 
s({trig = '([%a%)%]%}])dg', regTrig = true, wordTrig = false, snippetType="autosnippet"},
  fmta(
    "<>^{<>}",
    {
      f( function(_, snip) return snip.captures[1] end ),
      t("\\dagger")
    }
  ),{condition = in_mathzone}

),

-- Temporary snippiets for adding sub and superscripts for a few numbers until we figure out how to properly use regex. 
s({trig=";0",snippetType= "autosnippet",dscr= "Adds ^0",wordTrig = false},
    {
      t("^{0}"),
  },{condition = in_mathzone}),

s({trig=";1",snippetType= "autosnippet",dscr= "Adds ^1",wordTrig = false},
    {
      t("^{1}"),
  },{condition = in_mathzone}),

s({trig=";2",snippetType= "autosnippet",dscr= "Adds ^2",wordTrig = false},
    {
      t("^{2}"),
  },{condition = in_mathzone}),

s({trig=";3",snippetType= "autosnippet",dscr= "Adds ^3",wordTrig = false},
    {
      t("^{3}"),
  },{condition = in_mathzone}),

s({trig=":0",snippetType= "autosnippet",dscr= "Adds _0",wordTrig = false},
    {
      t("_{0}"),
  },{condition = in_mathzone}),

s({trig=":1",snippetType= "autosnippet",dscr= "Adds _1",wordTrig = false},
    {
      t("_{1}"),
  },{condition = in_mathzone}),

s({trig=":2",snippetType= "autosnippet",dscr= "Adds _2",wordTrig = false},
    {
      t("_{2}"),
  },{condition = in_mathzone}),

s({trig=":3",snippetType= "autosnippet",dscr= "Adds _3",wordTrig = false},
    {
      t("_{3}"),
  },{condition = in_mathzone}),

s({trig=";-1",snippetType= "autosnippet",dscr= "Adds ^{-1}",wordTrig = false},
    {
      t("^{-1}"),
  },{condition = in_mathzone}),

s({trig=".min",snippetType= "autosnippet",dscr= "Adds a 'min' subscript.",wordTrig = false},
    {
      t("_{\\text{min}}"),
  },{condition = in_mathzone}),

s({trig=".max",snippetType= "autosnippet",dscr= "Adds 'max' subscript.",wordTrig = false},
    {
      t("_{\\text{max}}"),
  },{condition = in_mathzone}),

s({trig=".eff",snippetType= "autosnippet",priority = 1001, dscr= "Adds an 'eff' subscript.",wordTrig = false},
    {
      t("_{\\text{eff}}"),
  },{condition = in_mathzone}),

}
