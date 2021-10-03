package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1022:Boolean;
      
      private var var_1246:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1022 = param1.readInteger() > 0;
         var_1246 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1022;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1246;
      }
      
      public function flush() : Boolean
      {
         var_1022 = false;
         var_1246 = false;
         return true;
      }
   }
}
