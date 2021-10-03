package com.sulake.core.assets.loaders
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class BitmapFileLoader extends AssetLoaderEventBroker implements IAssetLoader
   {
       
      
      protected var var_13:Loader;
      
      protected var var_882:String;
      
      protected var _type:String;
      
      protected var var_1054:LoaderContext;
      
      public function BitmapFileLoader(param1:String, param2:URLRequest = null)
      {
         super();
         var_882 = param2 == null ? "" : param2.url;
         _type = param1;
         var_13 = new Loader();
         var_1054 = new LoaderContext();
         var_1054.checkPolicyFile = true;
         var_13.contentLoaderInfo.addEventListener(Event.COMPLETE,loadEventHandler);
         var_13.contentLoaderInfo.addEventListener(Event.UNLOAD,loadEventHandler);
         var_13.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
         var_13.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,loadEventHandler);
         var_13.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
         var_13.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
         if(param2 != null && param2.url != null)
         {
            var_13.load(param2,var_1054);
         }
      }
      
      public function get bytesTotal() : uint
      {
         return var_13.contentLoaderInfo.bytesTotal;
      }
      
      public function load(param1:URLRequest) : void
      {
         var_882 = param1.url;
         var_13.load(param1,var_1054);
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            super.dispose();
            var_13.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadEventHandler);
            var_13.contentLoaderInfo.removeEventListener(Event.UNLOAD,loadEventHandler);
            var_13.contentLoaderInfo.removeEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
            var_13.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,loadEventHandler);
            var_13.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
            var_13.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
            try
            {
               var_13.close();
            }
            catch(e:*)
            {
            }
            var_13.unload();
            var_13 = null;
            _type = null;
            var_882 = null;
         }
      }
      
      public function get mimeType() : String
      {
         return _type;
      }
      
      public function get url() : String
      {
         return var_882;
      }
      
      public function get bytesLoaded() : uint
      {
         return var_13.contentLoaderInfo.bytesLoaded;
      }
      
      public function get content() : Object
      {
         return var_13.content;
      }
      
      public function get loaderContext() : LoaderContext
      {
         return var_1054;
      }
   }
}
