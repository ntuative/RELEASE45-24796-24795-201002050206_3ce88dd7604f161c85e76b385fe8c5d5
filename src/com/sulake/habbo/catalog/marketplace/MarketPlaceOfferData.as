package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1834:int;
      
      private var var_1158:int;
      
      private var var_1833:int;
      
      private var var_1835:int = -1;
      
      private var var_349:int;
      
      private var var_1771:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1159:int;
      
      private var var_1772:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1772 = param2;
         var_1771 = param3;
         var_1158 = param4;
         var_349 = param5;
         var_1833 = param6;
         var_1159 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1834 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1834;
      }
      
      public function get price() : int
      {
         return var_1158;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1835;
      }
      
      public function get offerCount() : int
      {
         return var_1159;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1771;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1835 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1158 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1159 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_349;
      }
      
      public function get averagePrice() : int
      {
         return var_1833;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1772;
      }
   }
}
