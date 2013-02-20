module AJSON
   class Scanner
      def initialize source
         @source = source
         @stack = []
      end
      
      def scan
         while !@source.empty?
            case @source
            when /\Atrue/
               consume :TRUE
            when /\Afalse/
               consume :FALSE
            when /\Anull/
               consume :NULL
            when /\A[\(\){}:,\[\]]/
               consume $&
            when /\A-?(?:[0-9]+)(?:\.[0-9]+)?(?:[eE][-+]?[0-9]+)?/
               consume :NUMBER, $&
            when /\A[\"\']/
               @source[0] = ''
               str = scan_string($&)
               consume :STRING, str
               @source[0] = ''
            when /\A\n/
               @source[0] = ''
            when /\A\s+/
               @source.slice!(0, $&.size)
            else
               STDERR.puts "unknown input at '#{@source[0..10]}...'"
               exit 1
            end
         end
         @stack
      end

      def scan_string(delimiter)
         str, char, escaped, i = '', '', false, 0
         until (char = @source[i]) == delimiter && !escaped
            escaped = (char == '\\' && !escaped)
            str << char
            i += 1
            throw "missing end-string delimiter" unless i < @source.length
         end
         str
      end

      def consume id, value = id
         @stack << [id, value]
         @source.slice!(0, value.size)
      end
   end
end
