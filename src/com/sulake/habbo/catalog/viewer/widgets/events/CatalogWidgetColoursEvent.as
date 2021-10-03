package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1084:Array;
      
      private var var_1729:String;
      
      private var var_1727:String;
      
      private var var_1728:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1084 = param1;
         var_1729 = param2;
         var_1727 = param3;
         var_1728 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1084;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_1729;
      }
      
      public function get colourAssetName() : String
      {
         return var_1727;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_1728;
      }
   }
}
