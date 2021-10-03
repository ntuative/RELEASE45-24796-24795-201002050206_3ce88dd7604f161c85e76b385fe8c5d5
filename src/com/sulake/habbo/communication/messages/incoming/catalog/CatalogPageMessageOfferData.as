package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_753:Array;
      
      private var var_733:int;
      
      private var var_1081:String;
      
      private var _offerId:int;
      
      private var var_732:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1081 = param1.readString();
         var_733 = param1.readInteger();
         var_732 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_753 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_753.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_753;
      }
      
      public function get priceInCredits() : int
      {
         return var_733;
      }
      
      public function get localizationId() : String
      {
         return var_1081;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_732;
      }
   }
}
