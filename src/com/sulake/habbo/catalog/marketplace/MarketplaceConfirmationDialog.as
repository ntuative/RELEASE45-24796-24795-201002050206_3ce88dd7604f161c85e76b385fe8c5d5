package com.sulake.habbo.catalog.marketplace
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ILocalization;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.ImageResult;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class MarketplaceConfirmationDialog implements IGetImageListener
   {
       
      
      private var var_74:IHabboCatalog;
      
      private var var_648:MarketPlaceLogic;
      
      private var _window:IFrameWindow;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_69:MarketPlaceOfferData;
      
      public function MarketplaceConfirmationDialog(param1:MarketPlaceLogic, param2:IHabboCatalog, param3:IRoomEngine)
      {
         super();
         var_648 = param1;
         var_74 = param2;
         _roomEngine = param3;
      }
      
      private function hide() : void
      {
         if(_window)
         {
            _window.dispose();
            _window = null;
         }
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         if(var_69 && var_69.imageCallback == param1)
         {
            var_69.image = param2;
            setImage();
         }
      }
      
      private function eventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(!param1 || !param2)
         {
            return;
         }
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "buy_button":
               var_74.buyMarketPlaceOffer(var_69.offerId);
               hide();
               break;
            case "header_button_close":
            case "cancel_button":
               hide();
         }
      }
      
      public function showConfirmation(param1:int, param2:MarketPlaceOfferData) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(!param2)
         {
            return;
         }
         var_69 = param2;
         if(!var_648 || !var_74 || true)
         {
            return;
         }
         if(_window)
         {
            _window.dispose();
         }
         _window = createWindow("marketplace_purchase_confirmation") as IFrameWindow;
         _window.procedure = eventHandler;
         _window.center();
         var _loc3_:ITextWindow = _window.findChildByName("header_text") as ITextWindow;
         if(_loc3_)
         {
            if(param1 == var_648.const_1438)
            {
               _loc3_.text = "${catalog.marketplace.confirm_header}";
            }
            if(param1 == var_648.const_1495)
            {
               _loc3_.text = "${catalog.marketplace.confirm_higher_header}";
            }
         }
         _loc3_ = _window.findChildByName("item_name") as ITextWindow;
         if(_loc3_)
         {
            _loc3_.text = "${roomItem.name.undefined}";
         }
         _loc3_ = _window.findChildByName("item_price") as ITextWindow;
         if(_loc3_)
         {
            _loc4_ = var_74.localization.getKey("catalog.marketplace.confirm_price");
            _loc4_ = _loc4_.replace("%price%",var_69.price);
            _loc3_.text = _loc4_;
         }
         _loc3_ = _window.findChildByName("item_average_price") as ITextWindow;
         if(_loc3_)
         {
            _loc5_ = var_74.localization.getLocalization("catalog.marketplace.offer_details.average_price");
            if(_loc5_)
            {
               _loc4_ = _loc5_.method_6;
               _loc4_ = _loc4_.replace("%days%",var_648.averagePricePeriod.toString());
               _loc6_ = false ? " - " : var_69.averagePrice.toString();
               _loc4_ = _loc4_.replace("%average%",_loc6_);
               _loc3_.text = _loc4_;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         _loc3_ = _window.findChildByName("offer_count") as ITextWindow;
         if(_loc3_)
         {
            _loc5_ = var_74.localization.getLocalization("catalog.marketplace.offer_details.offer_count");
            if(_loc5_)
            {
               _loc4_ = _loc5_.method_6;
               _loc4_ = _loc4_.replace("%count%",var_69.offerCount);
               _loc3_.text = _loc4_;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         setImage();
      }
      
      private function setImage() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!var_69 || !_window || !_roomEngine)
         {
            return;
         }
         if(true)
         {
            if(false)
            {
               _loc1_ = _roomEngine.getFurnitureIcon(var_69.furniId,this);
            }
            else if(false)
            {
               _loc1_ = _roomEngine.getWallItemIcon(var_69.furniId,this);
            }
            if(_loc1_ && _loc1_.data)
            {
               var_69.image = _loc1_.data as BitmapData;
               var_69.imageCallback = _loc1_.id;
            }
         }
         if(false)
         {
            _loc2_ = _window.findChildByName("item_image") as IBitmapWrapperWindow;
            if(_loc2_)
            {
               if(_loc2_.bitmap)
               {
                  _loc2_.bitmap.dispose();
                  _loc2_.bitmap = null;
               }
               _loc2_.bitmap = new BitmapData(_loc2_.width,_loc2_.height,true,0);
               _loc2_.bitmap.draw(var_69.image,new Matrix(1,0,0,1,(_loc2_.width - var_69.image.width) / 2,(_loc2_.height - var_69.image.height) / 2));
            }
         }
      }
      
      private function createWindow(param1:String) : IWindow
      {
         if(!var_74 || true || true)
         {
            return null;
         }
         var _loc2_:XmlAsset = var_74.assets.getAssetByName(param1) as XmlAsset;
         if(!_loc2_ || !_loc2_.content)
         {
            return null;
         }
         var _loc3_:XML = _loc2_.content as XML;
         if(!_loc3_)
         {
            return null;
         }
         return var_74.windowManager.buildFromXML(_loc3_);
      }
      
      public function dispose() : void
      {
         var_648 = null;
         var_74 = null;
         _roomEngine = null;
         if(_window)
         {
            _window.dispose();
            _window = null;
         }
         var_69 = null;
      }
   }
}
