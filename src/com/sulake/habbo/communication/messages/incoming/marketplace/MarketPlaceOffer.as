package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1158:int;
      
      private var var_1835:int = -1;
      
      private var var_349:int;
      
      private var var_1833:int;
      
      private var var_1771:int;
      
      private var _offerId:int;
      
      private var var_1159:int;
      
      private var var_1772:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1772 = param2;
         var_1771 = param3;
         var_1158 = param4;
         var_349 = param5;
         var_1835 = param6;
         var_1833 = param7;
         var_1159 = param8;
      }
      
      public function get status() : int
      {
         return var_349;
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
      
      public function get averagePrice() : int
      {
         return var_1833;
      }
      
      public function get furniId() : int
      {
         return var_1772;
      }
   }
}
