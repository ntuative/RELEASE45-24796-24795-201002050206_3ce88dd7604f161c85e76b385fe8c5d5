package com.sulake.habbo.communication.demo
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.habbo.communication.IHabboWebLogin;
   import com.sulake.habbo.communication.enum.HabboWeb;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class SSOTicket extends EventDispatcher
   {
      
      public static const const_244:String = "failure";
      
      public static const const_298:String = "success";
       
      
      private var _assets:IAssetLibrary;
      
      private var var_1224:String;
      
      private var var_2014:String;
      
      private var var_1478:String;
      
      private var var_1225:IHabboWebLogin;
      
      private var var_13:URLLoader;
      
      private var var_2342:String;
      
      public function SSOTicket(param1:IAssetLibrary, param2:IHabboWebLogin, param3:String)
      {
         super();
         _assets = param1;
         var_1225 = param2;
         var_1224 = "http://" + param3 + "/client";
         var_1225.init();
         var_1225.addEventListener(HabboWeb.const_206,requestClientURL);
      }
      
      public function get shockwaveClientUrl() : String
      {
         return var_2014;
      }
      
      private function requestClientURL(param1:Event = null) : void
      {
         var _loc2_:String = var_1224;
         if(_assets.hasAsset(_loc2_))
         {
            Logger.log("[CoreLocalizationManager] reload localization for url: " + var_1224);
         }
         var _loc3_:URLRequest = new URLRequest(var_1224);
         if(_assets.hasAsset(_loc2_))
         {
            _assets.removeAsset(_assets.getAssetByName(_loc2_));
         }
         var _loc4_:AssetLoaderStruct = _assets.loadAssetFromFile(_loc2_,_loc3_,"text/plain");
         _loc4_.addEventListener(AssetLoaderEvent.const_15,clientURLComplete);
      }
      
      public function get ticket() : String
      {
         return var_1478;
      }
      
      private function clientURLComplete(param1:Event = null) : void
      {
         var event:Event = param1;
         var loaderStruct:AssetLoaderStruct = event.target as AssetLoaderStruct;
         if(loaderStruct == null)
         {
            return;
         }
         var data:String = loaderStruct.assetLoader.content as String;
         if(data.indexOf("account/reauthenticate\"") > -1)
         {
            var_1225.requestReAuthenticate();
         }
         else
         {
            try
            {
               var_1478 = /\"sso.ticket\" : \"(.*?)\"/.exec(data)[1];
               var_2014 = /\"flash.client.url\" : \"(.*?)\"/.exec(data)[1];
               if(false)
               {
                  dispatchEvent(new Event(const_298));
               }
               else
               {
                  dispatchEvent(new Event(const_244));
               }
            }
            catch(e:Error)
            {
               trace(e);
               dispatchEvent(new Event(const_244));
            }
         }
      }
   }
}
