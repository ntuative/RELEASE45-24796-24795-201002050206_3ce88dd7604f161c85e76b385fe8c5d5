package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_928:String = "inventory_badges";
      
      public static const const_1319:String = "inventory_clothes";
      
      public static const const_1268:String = "inventory_furniture";
      
      public static const const_485:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_780:String = "inventory_effects";
       
      
      private var var_1743:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_485);
         var_1743 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1743;
      }
   }
}
