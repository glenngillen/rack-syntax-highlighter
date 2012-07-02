require "rack-syntax-highlighter/version"

module Rack
  class SyntaxHighlighter < Plastic
    def change_nokogiri_doc(doc)
      doc.search("//pre/code[@class]").each do |code|
        highlighted = Nokogiri.parse(
          Albino.colorize(code.text.rstrip, code[:class])).
          search("//div/pre").inner_html
        code.replace(%Q{<code class="highlighted">#{highlighted}</code>})
      end
      doc
    end
  end
end
