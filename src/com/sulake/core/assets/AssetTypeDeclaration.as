package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2064:Class;
      
      private var var_2063:Class;
      
      private var var_2062:String;
      
      private var var_1253:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2062 = param1;
         var_2063 = param2;
         var_2064 = param3;
         if(rest == null)
         {
            var_1253 = new Array();
         }
         else
         {
            var_1253 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2064;
      }
      
      public function get assetClass() : Class
      {
         return var_2063;
      }
      
      public function get mimeType() : String
      {
         return var_2062;
      }
      
      public function get fileTypes() : Array
      {
         return var_1253;
      }
   }
}
