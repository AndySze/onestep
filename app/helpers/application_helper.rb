module ApplicationHelper
  def poster_link(course)
    if course.has_poster?
      course.poster_url
    else
      "http://media.happycasts.net/hpcasts/screenshots/default.png"
    end
  end
  def markdown(text)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end
end
