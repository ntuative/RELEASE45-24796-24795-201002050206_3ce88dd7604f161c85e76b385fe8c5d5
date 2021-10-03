package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_397:FZip;
      
      private var var_1245:Array;
      
      private var var_2046:uint = 0;
      
      private var var_822:int = 0;
      
      private var var_2346:Array;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1245 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log(param1.text);
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,0));
      }
      
      public function get resources() : Array
      {
         return var_1245;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         var _loc3_:String = getQualifiedClassName(var_13.content);
         var_1245.push(var_13.contentLoaderInfo.applicationDomain.getDefinition(_loc3_));
         ++var_822;
         if(var_1245.length == var_2046)
         {
            var_13.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
            var_13.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0));
         }
         else
         {
            var_13.loadBytes(var_397.getFileAt(var_822).content);
         }
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         var_300 = param1;
         if(var_397)
         {
            var_397.close();
         }
         var_397 = new FZip();
         var_397.addEventListener(Event.COMPLETE,onComplete);
         var_397.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_397.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_397.load(var_300);
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0));
      }
      
      private function onComplete(param1:Event) : void
      {
         var_822 = 0;
         var_2046 = var_397.getFileCount();
         removeEventListeners();
         var_13.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
         var_13.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_13.loadBytes(var_397.getFileAt(var_822).content);
      }
   }
}
