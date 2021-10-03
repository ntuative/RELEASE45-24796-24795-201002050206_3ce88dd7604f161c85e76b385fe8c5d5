package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStoreSettingsMessage extends RoomWidgetMessage
   {
      
      public static const const_603:String = "RWSSM_STORE_SOUND";
      
      public static const const_701:String = "RWSSM_PREVIEW_SOUND";
      
      public static const const_1204:String = "RWSSM_STORE_SETTINGS";
       
      
      private var var_626:Number;
      
      public function RoomWidgetStoreSettingsMessage(param1:String)
      {
         super(param1);
      }
      
      public function set volume(param1:Number) : void
      {
         var_626 = param1;
      }
      
      public function get volume() : Number
      {
         return var_626;
      }
   }
}
