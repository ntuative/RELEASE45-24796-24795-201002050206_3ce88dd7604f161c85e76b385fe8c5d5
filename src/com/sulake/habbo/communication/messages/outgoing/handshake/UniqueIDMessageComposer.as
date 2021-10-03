package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class UniqueIDMessageComposer implements IMessageComposer
   {
       
      
      private var var_829:String;
      
      public function UniqueIDMessageComposer(param1:String)
      {
         super();
         var_829 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_829];
      }
      
      public function dispose() : void
      {
      }
   }
}
