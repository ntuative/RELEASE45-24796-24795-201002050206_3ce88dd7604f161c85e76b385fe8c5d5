package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1940:String = "";
      
      private var var_141:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1940 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_141 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1940;
      }
      
      public function get objectId() : String
      {
         return var_141;
      }
   }
}
