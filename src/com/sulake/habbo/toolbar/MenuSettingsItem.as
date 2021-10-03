package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2148:Array;
      
      private var var_1967:String;
      
      private var var_2147:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1967 = param1;
         var_2148 = param2;
         var_2147 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1967;
      }
      
      public function get yieldList() : Array
      {
         return var_2148;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_2147;
      }
   }
}
