package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1326:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1143:int;
      
      private var var_946:String;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_946 = param2;
         var_1143 = param3;
      }
      
      public function get classId() : int
      {
         return var_1143;
      }
      
      public function get itemType() : String
      {
         return var_946;
      }
   }
}
