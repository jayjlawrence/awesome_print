autoload :CGI, 'cgi'

module AwesomePrint
  module Colorize

    # Pick the color and apply it to the given string as necessary.
    #------------------------------------------------------------------------------
    def colorize(str, type)
      str = CGI.escapeHTML(str) if options[:html]
      if options[:plain] || !options[:color][type] || !inspector.colorize?
        str
      else
        str.send(String::AP_METHOD_PREFIX+options[:color][type].to_s, options[:html])
      end
    end
  end
end
