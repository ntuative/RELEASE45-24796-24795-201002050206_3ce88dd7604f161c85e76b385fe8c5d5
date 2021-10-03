package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_76:Number = 0;
      
      private var var_215:int = 0;
      
      private var var_1744:int = 0;
      
      private var var_2072:Number = 0;
      
      private var var_2071:Number = 0;
      
      private var var_2075:Number = 0;
      
      private var var_2073:Number = 0;
      
      private var var_2074:Boolean = false;
      
      private var var_75:Number = 0;
      
      private var _id:int = 0;
      
      private var var_178:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_178 = [];
         super();
         _id = param1;
         var_75 = param2;
         _y = param3;
         var_76 = param4;
         var_2073 = param5;
         var_215 = param6;
         var_1744 = param7;
         var_2072 = param8;
         var_2071 = param9;
         var_2075 = param10;
         var_2074 = param11;
         var_178 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_76;
      }
      
      public function get dir() : int
      {
         return var_215;
      }
      
      public function get localZ() : Number
      {
         return var_2073;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2074;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1744;
      }
      
      public function get targetX() : Number
      {
         return var_2072;
      }
      
      public function get targetY() : Number
      {
         return var_2071;
      }
      
      public function get targetZ() : Number
      {
         return var_2075;
      }
      
      public function get x() : Number
      {
         return var_75;
      }
      
      public function get actions() : Array
      {
         return var_178.slice();
      }
   }
}
