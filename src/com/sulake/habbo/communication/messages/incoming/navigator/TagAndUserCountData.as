package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TagAndUserCountData
   {
       
      
      private var var_1590:int;
      
      private var var_1587:String;
      
      public function TagAndUserCountData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1587 = param1.readString();
         this.var_1590 = param1.readInteger();
      }
      
      public function get userCount() : int
      {
         return this.var_1590;
      }
      
      public function get tag() : String
      {
         return this.var_1587;
      }
   }
}
