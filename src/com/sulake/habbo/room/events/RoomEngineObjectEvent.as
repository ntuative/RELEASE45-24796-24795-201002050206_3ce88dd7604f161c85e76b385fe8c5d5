package com.sulake.habbo.room.events
{
   public class RoomEngineObjectEvent extends RoomEngineEvent
   {
      
      public static const const_225:String = "REOB_OBJECT_ADDED";
      
      public static const const_373:String = "REOE_ROOM_AD_FURNI_CLICK";
      
      public static const const_75:String = "REOR_REMOVE_DIMMER";
      
      public static const const_93:String = "REOE_WIDGET_REQUEST_CREDITFURNI";
      
      public static const const_182:String = "REOB_OBJECT_PLACED";
      
      public static const const_96:String = "REOE_WIDGET_REQUEST_STICKIE";
      
      public static const const_466:String = "REOE_ROOM_AD_FURNI_DOUBLE_CLICK";
      
      public static const const_113:String = "REOE_WIDGET_REQUEST_DIMMER";
      
      public static const const_682:String = "REOE_OBJECT_REMOVED";
      
      public static const const_112:String = "REOE_WIDGET_REQUEST_PLACEHOLDER";
      
      public static const const_110:String = "REOE_WIDGET_REQUEST_ECOTRONBOX";
      
      public static const const_382:String = "REOE_ROOM_AD_TOOLTIP_SHOW";
      
      public static const const_504:String = "REOE_OBJECT_SELECTED";
      
      public static const const_404:String = "REOE_OBJECT_DESELECTED";
      
      public static const const_363:String = "REOE_ROOM_AD_TOOLTIP_HIDE";
      
      public static const ROOM_OBJECT_WIDGET_REQUEST_PRESENT:String = "REOE_WIDGET_REQUEST_PRESENT";
      
      public static const const_525:String = "REOB_OBJECT_REQUEST_MOVE";
      
      public static const const_91:String = "REOE_WIDGET_REQUEST_TROPHY";
       
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var var_141:int;
      
      private var _category:int;
      
      public function RoomEngineObjectEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param3,param6,param7);
         var_141 = param4;
         _category = param5;
      }
      
      public function get objectId() : int
      {
         return var_141;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
