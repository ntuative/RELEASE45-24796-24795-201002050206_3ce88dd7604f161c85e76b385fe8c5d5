package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerPreviewMessage extends RoomWidgetMessage
   {
      
      public static const const_705:String = "RWDPM_PREVIEW_DIMMER_PRESET";
       
      
      private var var_963:int;
      
      private var _color:uint;
      
      private var var_1655:Boolean;
      
      public function RoomWidgetDimmerPreviewMessage(param1:uint, param2:int, param3:Boolean)
      {
         super(const_705);
         _color = param1;
         var_963 = param2;
         var_1655 = param3;
      }
      
      public function get brightness() : int
      {
         return var_963;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get bgOnly() : Boolean
      {
         return var_1655;
      }
   }
}
