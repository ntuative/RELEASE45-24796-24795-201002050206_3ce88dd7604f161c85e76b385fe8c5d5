package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_534:Array;
      
      private var var_1158:int;
      
      private var var_1413:Array;
      
      private var var_535:Array;
      
      private var var_1659:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1659 = _loc2_.isWrappingEnabled;
         var_1158 = _loc2_.wrappingPrice;
         var_1413 = _loc2_.stuffTypes;
         var_535 = _loc2_.boxTypes;
         var_534 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_534;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1413;
      }
      
      public function get price() : int
      {
         return var_1158;
      }
      
      public function get boxTypes() : Array
      {
         return var_535;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1659;
      }
   }
}
