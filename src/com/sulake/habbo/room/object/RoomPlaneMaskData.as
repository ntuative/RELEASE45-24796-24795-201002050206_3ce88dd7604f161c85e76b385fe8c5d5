package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1875:Number = 0;
      
      private var var_1872:Number = 0;
      
      private var var_1873:Number = 0;
      
      private var var_1874:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1872 = param1;
         var_1873 = param2;
         var_1875 = param3;
         var_1874 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1872;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1875;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1873;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1874;
      }
   }
}
