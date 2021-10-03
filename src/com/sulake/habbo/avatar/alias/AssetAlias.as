package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_916:Boolean;
      
      private var _name:String;
      
      private var var_1682:String;
      
      private var var_917:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1682 = String(param1.@link);
         var_917 = Boolean(parseInt(param1.@fliph));
         var_916 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_917;
      }
      
      public function get flipV() : Boolean
      {
         return var_916;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1682;
      }
   }
}
