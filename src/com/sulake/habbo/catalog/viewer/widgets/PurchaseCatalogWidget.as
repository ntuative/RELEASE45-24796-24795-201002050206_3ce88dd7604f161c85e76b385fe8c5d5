package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_2090:XML;
      
      private var var_1507:ITextWindow;
      
      private var var_1509:ITextWindow;
      
      private var var_2086:XML;
      
      private var var_835:IWindowContainer;
      
      private var var_2291:ITextWindow;
      
      private var var_2088:String = "";
      
      private var var_2351:IButtonWindow;
      
      private var var_2087:XML;
      
      private var var_1508:ITextWindow;
      
      private var var_2089:XML;
      
      private var var_834:IButtonWindow;
      
      private var var_69:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_336:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2086) as IWindowContainer;
               break;
            case Offer.const_343:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2089) as IWindowContainer;
               break;
            case Offer.const_358:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2090) as IWindowContainer;
               break;
            case Offer.const_608:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_2087) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_835 != null)
            {
               _window.removeChild(var_835);
               var_835.dispose();
            }
            var_835 = _loc2_;
            _window.addChild(_loc2_);
            var_835.x = 0;
            var_835.y = 0;
         }
         var_1508 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1509 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1507 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2291 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_834 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_834 != null)
         {
            var_834.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_834.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_69 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_69,page,var_2088);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_2086 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_2089 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_2090 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_2087 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_897,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_2088 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_69 = param1.offer;
         attachStub(var_69.priceType);
         if(var_1508 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_69.priceInCredits));
            var_1508.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1509 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_69.priceInPixels));
            var_1509.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1507 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_69.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_69.priceInPixels));
            var_1507.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_834 != null)
         {
            var_834.enable();
         }
      }
   }
}
