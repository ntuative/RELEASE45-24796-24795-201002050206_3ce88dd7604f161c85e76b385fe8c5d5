package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1523:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1444:String = "ROE_MOUSE_ENTER";
      
      public static const const_368:String = "ROE_MOUSE_MOVE";
      
      public static const const_1442:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_173:String = "ROE_MOUSE_CLICK";
      
      public static const const_428:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1939:Boolean;
      
      private var var_1943:Boolean;
      
      private var var_1946:Boolean;
      
      private var var_1941:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1946 = param4;
         var_1941 = param5;
         var_1939 = param6;
         var_1943 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1943;
      }
      
      public function get altKey() : Boolean
      {
         return var_1946;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1941;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1939;
      }
   }
}
