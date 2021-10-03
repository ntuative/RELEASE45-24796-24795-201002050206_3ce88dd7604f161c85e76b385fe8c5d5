package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2032:String;
      
      private var var_1224:String;
      
      private var var_2031:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2031 = param1;
         var_1224 = param2;
         var_2032 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2031,var_1224,var_2032];
      }
      
      public function dispose() : void
      {
      }
   }
}
