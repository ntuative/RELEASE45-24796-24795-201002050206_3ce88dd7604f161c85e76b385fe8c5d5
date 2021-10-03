package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1525:int = 2;
      
      public static const const_302:int = 4;
      
      public static const const_1240:int = 1;
      
      public static const const_1346:int = 3;
       
      
      private var var_967:int = 0;
      
      private var var_795:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_967;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_967 = param1.readInteger();
         if(var_967 == 3)
         {
            var_795 = param1.readString();
         }
         else
         {
            var_795 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_967 = 0;
         var_795 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_795;
      }
   }
}
