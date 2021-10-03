package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_663:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1763:int;
      
      private var var_1764:int;
      
      private var var_2058:Boolean;
      
      private var var_963:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_663);
         var_1764 = param1;
         var_1763 = param2;
         _color = param3;
         var_963 = param4;
         var_2058 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1763;
      }
      
      public function get presetNumber() : int
      {
         return var_1764;
      }
      
      public function get brightness() : int
      {
         return var_963;
      }
      
      public function get apply() : Boolean
      {
         return var_2058;
      }
   }
}
