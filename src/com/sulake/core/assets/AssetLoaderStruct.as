package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_609:IAssetLoader;
      
      private var var_1179:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1179 = param1;
         var_609 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_609;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_609 != null)
            {
               if(true)
               {
                  var_609.dispose();
                  var_609 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1179;
      }
   }
}
