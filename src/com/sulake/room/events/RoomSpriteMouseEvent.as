package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1943:Boolean = false;
      
      private var var_1946:Boolean = false;
      
      private var var_1940:String = "";
      
      private var _type:String = "";
      
      private var var_1939:Boolean = false;
      
      private var var_1942:Number = 0;
      
      private var var_1938:Number = 0;
      
      private var var_1945:Number = 0;
      
      private var var_1947:String = "";
      
      private var var_1944:Number = 0;
      
      private var var_1941:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1947 = param2;
         var_1940 = param3;
         var_1938 = param4;
         var_1945 = param5;
         var_1942 = param6;
         var_1944 = param7;
         var_1941 = param8;
         var_1946 = param9;
         var_1939 = param10;
         var_1943 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1941;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1943;
      }
      
      public function get localX() : Number
      {
         return var_1942;
      }
      
      public function get localY() : Number
      {
         return var_1944;
      }
      
      public function get canvasId() : String
      {
         return var_1947;
      }
      
      public function get altKey() : Boolean
      {
         return var_1946;
      }
      
      public function get spriteTag() : String
      {
         return var_1940;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1938;
      }
      
      public function get screenY() : Number
      {
         return var_1945;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1939;
      }
   }
}
