package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_196:String = "e";
      
      public static const const_60:String = "i";
      
      public static const const_59:String = "s";
       
      
      private var var_982:String;
      
      private var var_1221:String;
      
      private var var_1218:int;
      
      private var var_1668:int;
      
      private var var_981:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1221 = param1.readString();
         var_1668 = param1.readInteger();
         var_982 = param1.readString();
         var_981 = param1.readInteger();
         var_1218 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_981;
      }
      
      public function get productType() : String
      {
         return var_1221;
      }
      
      public function get expiration() : int
      {
         return var_1218;
      }
      
      public function get furniClassId() : int
      {
         return var_1668;
      }
      
      public function get extraParam() : String
      {
         return var_982;
      }
   }
}
