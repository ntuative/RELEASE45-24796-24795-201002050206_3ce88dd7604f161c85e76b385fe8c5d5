package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectDimmerStateUpdateEvent extends RoomObjectEvent
   {
      
      public static const DIMMER_STATE:String = "RODSUE_DIMMER_STATE";
       
      
      private var var_962:int;
      
      private var _color:uint;
      
      private var var_963:int;
      
      private var var_1836:int;
      
      private var var_29:int;
      
      public function RoomObjectDimmerStateUpdateEvent(param1:int, param2:String, param3:int, param4:int, param5:int, param6:uint, param7:int, param8:Boolean = false, param9:Boolean = false)
      {
         super(DIMMER_STATE,param1,param2,param8,param9);
         var_29 = param3;
         var_1836 = param4;
         var_962 = param5;
         _color = param6;
         var_963 = param7;
      }
      
      public function get brightness() : uint
      {
         return var_963;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_962;
      }
      
      public function get state() : int
      {
         return var_29;
      }
      
      public function get presetId() : int
      {
         return var_1836;
      }
   }
}
