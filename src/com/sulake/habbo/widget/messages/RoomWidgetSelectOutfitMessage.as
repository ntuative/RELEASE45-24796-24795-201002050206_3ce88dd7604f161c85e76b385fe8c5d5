package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_975:String = "select_outfit";
       
      
      private var var_2118:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_975);
         var_2118 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2118;
      }
   }
}
