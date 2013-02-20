#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.9
# from Racc grammer file "".
#

require 'racc/parser.rb'
module AJSON
  class Parser < Racc::Parser

module_eval(<<'...end parser.y/module_eval...', 'parser.y', 60)

   def parse(tokens)
      @tokens = tokens

      do_parse
   end

   def next_token
      @tokens.shift
   end
...end parser.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
     2,     3,     4,     5,     6,    14,    25,    27,    26,    15,
    21,     2,     3,     4,     5,     6,    14,    29,     2,    28,
    15,     2,     3,     4,     5,     6,    14,    16,    24,   nil,
    15,     2,     3,     4,     5,     6,    14,     2,   nil,   nil,
    15,   nil,   nil,    17 ]

racc_action_check = [
    15,    15,    15,    15,    15,    15,    18,    19,    18,    15,
    15,    27,    27,    27,    27,    27,    27,    22,    26,    22,
    27,     0,     0,     0,     0,     0,     0,     1,    16,   nil,
     0,    29,    29,    29,    29,    29,    29,    14,   nil,   nil,
    29,   nil,   nil,    14 ]

racc_action_pointer = [
    19,    27,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    35,    -2,    28,   nil,    -2,    -2,
   nil,   nil,     7,   nil,   nil,   nil,    16,     9,   nil,    29,
   nil,   nil,   nil ]

racc_action_default = [
   -22,   -22,    -1,    -2,    -3,    -4,    -5,    -6,    -7,    -8,
    -9,   -10,   -11,   -12,   -22,   -22,   -22,   -13,   -22,   -22,
   -16,   -18,   -22,   -20,    33,   -14,   -22,   -22,   -19,   -22,
   -17,   -15,   -21 ]

racc_goto_table = [
     7,    20,    19,    18,     1,    22,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    30,    19,    23,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    31,   nil,    32 ]

racc_goto_check = [
     6,    10,     2,     9,     1,    11,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,    10,     2,     6,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,     6,   nil,     6 ]

racc_goto_pointer = [
   nil,     4,   -12,   nil,   nil,   nil,     0,   nil,   nil,   -11,
   -13,   -10 ]

racc_goto_default = [
   nil,   nil,    10,    11,     9,     8,   nil,    12,    13,   nil,
   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 15, :_reduce_1,
  1, 16, :_reduce_2,
  1, 17, :_reduce_3,
  1, 17, :_reduce_4,
  1, 18, :_reduce_5,
  1, 14, :_reduce_none,
  1, 19, :_reduce_none,
  1, 19, :_reduce_none,
  1, 19, :_reduce_none,
  1, 19, :_reduce_none,
  1, 19, :_reduce_none,
  1, 19, :_reduce_none,
  2, 20, :_reduce_13,
  3, 20, :_reduce_14,
  3, 23, :_reduce_15,
  1, 22, :_reduce_16,
  3, 22, :_reduce_17,
  2, 21, :_reduce_18,
  3, 21, :_reduce_19,
  1, 24, :_reduce_20,
  3, 24, :_reduce_21 ]

racc_reduce_n = 22

racc_shift_n = 33

racc_token_table = {
  false => 0,
  :error => 1,
  :STRING => 2,
  :NUMBER => 3,
  :TRUE => 4,
  :FALSE => 5,
  :NULL => 6,
  "{" => 7,
  "}" => 8,
  ":" => 9,
  "," => 10,
  "[" => 11,
  "]" => 12 }

racc_nt_base = 13

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "STRING",
  "NUMBER",
  "TRUE",
  "FALSE",
  "NULL",
  "\"{\"",
  "\"}\"",
  "\":\"",
  "\",\"",
  "\"[\"",
  "\"]\"",
  "$start",
  "JSONText",
  "JSONString",
  "JSONNumber",
  "JSONBooleanLiteral",
  "JSONNullLiteral",
  "JSONValue",
  "JSONObject",
  "JSONArray",
  "JSONMemberList",
  "JSONMember",
  "JSONElementList" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'parser.y', 6)
  def _reduce_1(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 8)
  def _reduce_2(val, _values, result)
     result = val[0].to_i 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 10)
  def _reduce_3(val, _values, result)
     result = true
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 10)
  def _reduce_4(val, _values, result)
     result = false 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 12)
  def _reduce_5(val, _values, result)
     result = nil 
    result
  end
.,.,

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

module_eval(<<'.,.,', 'parser.y', 20)
  def _reduce_13(val, _values, result)
          result = {}
   
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 23)
  def _reduce_14(val, _values, result)
          result = val[1].inject({}) do |r, s|
         r.merge!({s[0] => s[1]})
      end
   
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 28)
  def _reduce_15(val, _values, result)
     result = [val[0], val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 32)
  def _reduce_16(val, _values, result)
          result = [val[0]]
   
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 35)
  def _reduce_17(val, _values, result)
          val[0].push(val[2])
   
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 40)
  def _reduce_18(val, _values, result)
          result = []
   
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 43)
  def _reduce_19(val, _values, result)
          result = val[1]
   
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 48)
  def _reduce_20(val, _values, result)
          result = [val[0]]
   
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 51)
  def _reduce_21(val, _values, result)
          val[0].push(val[2])
   
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module AJSON
