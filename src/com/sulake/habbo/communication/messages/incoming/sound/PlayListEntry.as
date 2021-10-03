package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2180:int;
      
      private var var_2182:int = 0;
      
      private var var_2178:String;
      
      private var var_2181:int;
      
      private var var_2179:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_2180 = param1;
         var_2181 = param2;
         var_2179 = param3;
         var_2178 = param4;
      }
      
      public function get length() : int
      {
         return var_2181;
      }
      
      public function get name() : String
      {
         return var_2179;
      }
      
      public function get creator() : String
      {
         return var_2178;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2182;
      }
      
      public function get id() : int
      {
         return var_2180;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2182 = param1;
      }
   }
}
