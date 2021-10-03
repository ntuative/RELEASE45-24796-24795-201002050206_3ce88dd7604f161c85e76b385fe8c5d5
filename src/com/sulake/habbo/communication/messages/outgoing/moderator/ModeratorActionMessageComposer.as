package com.sulake.habbo.communication.messages.outgoing.moderator
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class ModeratorActionMessageComposer implements IMessageComposer, IDisposable
   {
      
      public static const const_1137:int = 1;
      
      public static const const_1198:int = 4;
      
      public static const const_1557:int = 2;
      
      public static const const_1327:int = 1;
      
      public static const const_1253:int = 0;
      
      public static const const_1467:int = 0;
      
      public static const const_1159:int = 3;
       
      
      private var var_24:Array;
      
      public function ModeratorActionMessageComposer(param1:int, param2:int, param3:String, param4:String, param5:String, param6:int = 0)
      {
         var_24 = new Array();
         super();
         this.var_24.push(param1);
         this.var_24.push(param2);
         this.var_24.push(param3);
         this.var_24.push(param4);
         this.var_24.push(param5);
         this.var_24.push(param6);
         this.var_24.push(false);
         this.var_24.push(false);
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
