package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1226:int;
      
      private var var_915:String;
      
      private var var_656:Array;
      
      private var var_943:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_656.slice();
      }
      
      public function flush() : Boolean
      {
         var_915 = "";
         var_943 = [];
         var_656 = [];
         var_1226 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1226;
      }
      
      public function get question() : String
      {
         return var_915;
      }
      
      public function get choices() : Array
      {
         return var_943.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_915 = param1.readString();
         var_943 = [];
         var_656 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_943.push(param1.readString());
            var_656.push(param1.readInteger());
            _loc3_++;
         }
         var_1226 = param1.readInteger();
         return true;
      }
   }
}
