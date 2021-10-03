package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1437:Array;
      
      private var var_1833:int;
      
      private var var_1893:int;
      
      private var var_1890:int;
      
      private var var_1892:int;
      
      private var _dayOffsets:Array;
      
      private var var_1891:int;
      
      private var var_1436:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1437;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1437 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1893;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1436 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1833 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1890;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1892;
      }
      
      public function get offerCount() : int
      {
         return var_1891;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1891 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1436;
      }
      
      public function get averagePrice() : int
      {
         return var_1833;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1892 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1890 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1893 = param1;
      }
   }
}
