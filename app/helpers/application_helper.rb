module ApplicationHelper

  def title(content)
    content_for :title, content
  end

  def description(content)
    content_for :meta, "<meta name=\"description\" content=\"#{content}\">".html_safe
  end

  def css(path, media = :all, rel = :stylesheet, type = 'text/css')
    content_for :css, stylesheet_link_tag(path, rel: rel, type: type, media: media)
  end

  def javascript(path, type = 'application/javascript')
    content_for :javascript, javascript_include_tag(path, type: type)
  end

end
