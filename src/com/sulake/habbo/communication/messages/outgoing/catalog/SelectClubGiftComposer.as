package com.sulake.habbo.communication.messages.outgoing.catalog
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SelectClubGiftComposer implements IMessageComposer
   {
       
      
      private var var_1092:String;
      
      public function SelectClubGiftComposer(param1:String)
      {
         super();
         var_1092 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1092];
      }
      
      public function dispose() : void
      {
         var_1092 = null;
      }
   }
}
