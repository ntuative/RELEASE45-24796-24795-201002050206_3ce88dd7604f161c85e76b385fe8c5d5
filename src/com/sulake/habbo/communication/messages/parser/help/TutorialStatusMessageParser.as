package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_910:Boolean;
      
      private var var_908:Boolean;
      
      private var var_909:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_910;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_908;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_909 = param1.readBoolean();
         var_908 = param1.readBoolean();
         var_910 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_909;
      }
      
      public function flush() : Boolean
      {
         var_909 = false;
         var_908 = false;
         var_910 = false;
         return true;
      }
   }
}
