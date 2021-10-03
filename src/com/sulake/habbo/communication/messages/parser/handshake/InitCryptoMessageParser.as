package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class InitCryptoMessageParser implements IMessageParser
   {
       
      
      protected var var_924:String;
      
      protected var var_2327:Boolean;
      
      protected var var_2245:Boolean;
      
      public function InitCryptoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get isClientEncrypted() : Boolean
      {
         return var_2327;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_924 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var_2245 = _loc2_ > 0 ? true : false;
         return true;
      }
      
      public function get token() : String
      {
         return var_924;
      }
      
      public function get isServerEncrypted() : Boolean
      {
         return var_2245;
      }
   }
}
