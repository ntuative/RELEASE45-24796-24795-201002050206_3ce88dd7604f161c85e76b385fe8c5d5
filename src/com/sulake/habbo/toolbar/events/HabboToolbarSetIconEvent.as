package com.sulake.habbo.toolbar.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class HabboToolbarSetIconEvent extends Event
   {
      
      public static const const_927:String = "HTIE_SET_TOOLBAR_ICON_BITMAP";
      
      public static const const_142:String = "HTIE_REMOVE_TOOLBAR_ICON";
      
      public static const const_106:String = "HTIE_SET_TOOLBAR_ICON";
      
      public static const const_149:String = "HTIE_SET_TOOLBAR_ICON_STATE";
       
      
      private var var_1894:String;
      
      private var var_684:String;
      
      private var var_1179:String;
      
      private var _bitmapData:BitmapData;
      
      public function HabboToolbarSetIconEvent(param1:String, param2:String, param3:String = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_684 = param2;
         var_1179 = param3;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         _bitmapData = param1;
      }
      
      public function get iconState() : String
      {
         return var_1894;
      }
      
      public function get iconId() : String
      {
         return var_684;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1179 = param1;
      }
      
      public function set iconState(param1:String) : void
      {
         var_1894 = param1;
      }
      
      public function get bitmapData() : BitmapData
      {
         return _bitmapData;
      }
      
      public function get assetName() : String
      {
         return var_1179;
      }
   }
}
