
module Spree::PathHelper
  # defines dynamic path for sort by box
  def path_to(*args, &block)
    if block_given?
      options = args.first || {}
      html_options = args[1]
      concat(link_to(capture(&block), options, html_options))
    else
      name = args.first
      options = args[1] || {}
      html_options = args[2]

      url = case options
      when String
        options
      when :back
        @controller.request.env["HTTP_REFERER"] || 'javascript:history.back()'
      else
        self.url_for(options)
      end

      if html_options
        html_options = html_options.stringify_keys
        href = html_options['href']
        convert_options_to_javascript!(html_options, url)
        tag_options = tag_options(html_options)
      else
        tag_options = nil
      end
      url
    end
  end

end
