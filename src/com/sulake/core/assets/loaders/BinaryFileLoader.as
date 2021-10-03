package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   
   public class BinaryFileLoader extends AssetLoaderEventBroker implements IAssetLoader
   {
       
      
      protected var var_13:URLLoader;
      
      protected var var_882:String;
      
      protected var _type:String;
      
      public function BinaryFileLoader(param1:String, param2:URLRequest = null)
      {
         super();
         var_882 = param2 == null ? "" : param2.url;
         _type = param1;
         var_13 = new URLLoader();
         var_13.addEventListener(Event.COMPLETE,loadEventHandler);
         var_13.addEventListener(Event.UNLOAD,loadEventHandler);
         var_13.addEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
         var_13.addEventListener(ProgressEvent.PROGRESS,loadEventHandler);
         var_13.addEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
         var_13.addEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
         if(param2 != null)
         {
            this.load(param2);
         }
      }
      
      public function get bytesTotal() : uint
      {
         return var_13.bytesTotal;
      }
      
      public function load(param1:URLRequest) : void
      {
         var_882 = param1.url;
         var_13.dataFormat = _type == "application/octet-stream" ? "null" : URLLoaderDataFormat.TEXT;
         var_13.load(param1);
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            super.dispose();
            var_13.removeEventListener(Event.COMPLETE,loadEventHandler);
            var_13.removeEventListener(Event.UNLOAD,loadEventHandler);
            var_13.removeEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
            var_13.removeEventListener(ProgressEvent.PROGRESS,loadEventHandler);
            var_13.removeEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
            var_13.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
            var_13.close();
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
         return var_13.bytesLoaded;
      }
      
      public function get content() : Object
      {
         return var_13.data;
      }
   }
}
