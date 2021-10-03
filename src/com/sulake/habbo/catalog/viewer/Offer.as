package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_917:String = "price_type_none";
      
      public static const const_376:String = "pricing_model_multi";
      
      public static const const_336:String = "price_type_credits";
      
      public static const const_358:String = "price_type_credits_and_pixels";
      
      public static const const_430:String = "pricing_model_bundle";
      
      public static const const_456:String = "pricing_model_single";
      
      public static const const_608:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1254:String = "pricing_model_unknown";
      
      public static const const_343:String = "price_type_pixels";
       
      
      private var var_733:int;
      
      private var _offerId:int;
      
      private var var_732:int;
      
      private var var_357:String;
      
      private var var_515:String;
      
      private var var_1618:int;
      
      private var var_639:ICatalogPage;
      
      private var var_1081:String;
      
      private var var_356:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1081 = param1.localizationId;
         var_733 = param1.priceInCredits;
         var_732 = param1.priceInPixels;
         var_639 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_357;
      }
      
      public function get page() : ICatalogPage
      {
         return var_639;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1618 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_356;
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
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1081 = "";
         var_733 = 0;
         var_732 = 0;
         var_639 = null;
         if(var_356 != null)
         {
            var_356.dispose();
            var_356 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_515;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1618;
      }
      
      public function get priceInCredits() : int
      {
         return var_733;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_357 = const_456;
            }
            else
            {
               var_357 = const_376;
            }
         }
         else if(param1.length > 1)
         {
            var_357 = const_430;
         }
         else
         {
            var_357 = const_1254;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_357)
         {
            case const_456:
               var_356 = new SingleProductContainer(this,param1);
               break;
            case const_376:
               var_356 = new MultiProductContainer(this,param1);
               break;
            case const_430:
               var_356 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_357);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_733 > 0 && var_732 > 0)
         {
            var_515 = const_358;
         }
         else if(var_733 > 0)
         {
            var_515 = const_336;
         }
         else if(var_732 > 0)
         {
            var_515 = const_343;
         }
         else
         {
            var_515 = const_917;
         }
      }
   }
}
