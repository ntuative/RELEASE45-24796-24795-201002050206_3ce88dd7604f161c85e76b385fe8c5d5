package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_2056:Number = 1;
      
      private var var_177:Number = 1;
      
      private var var_1593:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1593 = param1;
         var_177 = param2;
         var_2056 = param3;
      }
      
      public function get scale() : Number
      {
         return var_177;
      }
      
      public function get heightScale() : Number
      {
         return var_2056;
      }
   }
}
