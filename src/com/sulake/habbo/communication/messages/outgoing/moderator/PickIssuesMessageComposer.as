package com.sulake.habbo.communication.messages.outgoing.moderator
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class PickIssuesMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_24:Array;
      
      public function PickIssuesMessageComposer(param1:Array)
      {
         var_24 = new Array();
         super();
         this.var_24.push(param1.length);
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.var_24.push(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         return this.var_24;
      }
      
      public function dispose() : void
      {
         this.var_24 = null;
      }
   }
}
