@description_term_line_color ||= "#ff9900"

match("**", DescriptionTerm) do
  name = "description-term"

  space = @space / 2.0

  margin_with(:bottom => space * 3)
  delete_post_draw_proc_by_name(name)
  add_post_draw_proc(name) do |term, canvas, x, y, w, h, simulation|
    unless simulation
      canvas.draw_line(x, y + space, x + term.width, y + space,
                       @description_term_line_color)
    end
    [x, y, w, h]
  end
end
