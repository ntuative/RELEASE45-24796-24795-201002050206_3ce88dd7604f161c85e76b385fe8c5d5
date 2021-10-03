package com.sulake.core.assets
{
   import flash.media.Sound;
   import flash.utils.ByteArray;
   
   public class SoundAsset implements IAsset
   {
       
      
      private var var_17:Sound = null;
      
      private var _disposed:Boolean = false;
      
      private var var_1111:AssetTypeDeclaration;
      
      private var var_882:String;
      
      public function SoundAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1111 = param1;
         var_882 = param2;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1111;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get url() : String
      {
         return var_882;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is Sound)
         {
            if(var_17)
            {
               var_17.close();
            }
            var_17 = param1 as Sound;
            return;
         }
         if(param1 is ByteArray)
         {
         }
         if(param1 is Class)
         {
            if(var_17)
            {
               var_17.close();
            }
            var_17 = new param1() as Sound;
            return;
         }
         if(param1 is SoundAsset)
         {
            if(var_17)
            {
               var_17.close();
            }
            var_17 = SoundAsset(param1).var_17;
            return;
         }
      }
      
      public function get content() : Object
      {
         return var_17 as Object;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is SoundAsset)
         {
            var_17 = SoundAsset(param1).var_17;
         }
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_17 = null;
            var_1111 = null;
            var_882 = null;
         }
      }
   }
}
