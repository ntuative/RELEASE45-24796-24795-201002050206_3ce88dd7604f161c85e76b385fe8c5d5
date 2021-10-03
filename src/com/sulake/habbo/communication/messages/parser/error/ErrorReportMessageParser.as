package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1235:int;
      
      private var var_1104:int;
      
      private var var_1236:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1235;
      }
      
      public function flush() : Boolean
      {
         var_1104 = 0;
         var_1235 = 0;
         var_1236 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1104;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1235 = param1.readInteger();
         var_1104 = param1.readInteger();
         var_1236 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1236;
      }
   }
}
