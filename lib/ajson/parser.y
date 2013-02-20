class AJSON::Parser

   start JSONText

rule

JSONString: STRING { result = val[0] }

JSONNumber: NUMBER { result = val[0].to_f }

JSONBooleanLiteral: TRUE { result = true } | FALSE { result = false }

JSONNullLiteral: NULL { result = nil }

JSONText: JSONObject | JSONArray

JSONValue: JSONNullLiteral | JSONBooleanLiteral | JSONString | JSONNumber | JSONObject | JSONArray

JSONObject:
   '{' '}' {
      result = {}
   }
   | '{' JSONMemberList '}' {
      result = val[1].inject({}) do |r, s|
         r.merge!({s[0] => s[1]})
      end
   }

JSONMember: JSONString ':' JSONValue { result = [val[0], val[2]] }

JSONMemberList:
   JSONMember {
      result = [val[0]]
   }
   | JSONMemberList ',' JSONMember {
      val[0].push(val[2])
   }

JSONArray:
   '[' ']' {
      result = []
   }
   | '[' JSONElementList ']' {
      result = val[1]
   }

JSONElementList:
   JSONValue {
      result = [val[0]]
   }
   | JSONElementList ',' JSONValue {
      val[0].push(val[2])
   }

end

---- inner ----

   def parse(tokens)
      @tokens = tokens

      do_parse
   end

   def next_token
      @tokens.shift
   end
