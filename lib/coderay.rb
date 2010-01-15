# module Webby::Helpers::CodeRayHelper
#   def coderay( *args, &block )
#     opts = args.last.instance_of?(Hash) ? args.pop : {}
# 
#     text = capture_erb(&block)
#     return if text.empty?
# 
#     defaults = ::Webby.site.coderay
#     lang = opts.getopt(:lang, defaults.lang).to_sym
# 
#     cr_opts = {}
#     %w(line_numbers       to_sym
#        line_number_start  to_i
#        bold_every         to_i
#        tab_width          to_i).each_slice(2) do |key,convert|
#       key = key.to_sym
#       val = opts.getopt(key, defaults[key])
#       next if val.nil?
#       cr_opts[key] = val.send(convert)
#     end
# 
#     #cr.swap(CodeRay.scan(text, lang).html(opts).div)
#     out = %Q{<div class="CodeRay">\n<code>}
#     out << ::CodeRay.scan(text, lang).html(cr_opts).gsub(/\n/,"<br/>")
#     out << %Q{</code>\n</div>}
# 
#     # put some guards around the output (specifically for textile)
#     out = _guard(out)
# 
#     concat_erb(out, block.binding)
#     return
#   end
# end