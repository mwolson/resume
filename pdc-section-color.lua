-- Colorize elements with class "section-color" when targeting ConTeXt
-- Wrap blocks with \startcolor/\stopcolor and inline spans with \colored.

local function has_class(el, class)
  if not el.classes then return false end
  for _, c in ipairs(el.classes) do
    if c == class then return true end
  end
  return false
end

local function color_div(el)
  if FORMAT ~= 'context' then return nil end
  if has_class(el, 'section-color') then
    local blocks = { pandoc.RawBlock('context', '\\startcolor[sectioncolor]') }
    for _, b in ipairs(el.content) do
      table.insert(blocks, b)
    end
    table.insert(blocks, pandoc.RawBlock('context', '\\stopcolor'))
    return blocks
  end
  return nil
end

local function color_span(el)
  if FORMAT ~= 'context' then return nil end
  if has_class(el, 'section-color') then
    local inlines = { pandoc.RawInline('context', '\\colored[sectioncolor]{') }
    for _, i in ipairs(el.content) do
      table.insert(inlines, i)
    end
    table.insert(inlines, pandoc.RawInline('context', '}'))
    return inlines
  end
  return nil
end

return {
  { Div = color_div, Span = color_span }
}
