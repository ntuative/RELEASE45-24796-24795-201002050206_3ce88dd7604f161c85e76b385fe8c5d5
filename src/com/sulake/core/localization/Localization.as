package com.sulake.core.localization
{
   import flash.utils.Dictionary;
   
   public class Localization implements ILocalization
   {
       
      
      private var var_570:String;
      
      private var var_1196:Dictionary;
      
      private var var_899:Boolean = false;
      
      private var var_651:Array;
      
      private var var_167:String;
      
      public function Localization(param1:String, param2:String = null)
      {
         super();
         var_651 = new Array();
         var_1196 = new Dictionary();
         var_570 = param1;
         var_167 = param2;
      }
      
      public function removeListener(param1:ILocalizable) : void
      {
         var _loc2_:int = var_651.indexOf(param1);
         if(_loc2_ >= 0)
         {
            var_651 = var_651.splice(_loc2_,1);
         }
      }
      
      public function get method_6() : String
      {
         return var_167;
      }
      
      public function get isInitialized() : Boolean
      {
         return var_167 != null;
      }
      
      public function registerParameter(param1:String, param2:String, param3:String = "%") : void
      {
         param1 = param3 + param1 + param3;
         var_1196[param1] = param2;
         updateListeners();
      }
      
      public function registerListener(param1:ILocalizable) : void
      {
         var_651.push(param1);
         param1.localization = value;
      }
      
      public function get value() : String
      {
         return fillParameterValues();
      }
      
      private function fillParameterValues() : String
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc1_:String = var_167;
         for(_loc2_ in var_1196)
         {
            _loc3_ = "null";
            _loc4_ = new RegExp(_loc2_,"gim");
            if(_loc1_ != null)
            {
               _loc1_ = _loc1_.replace(_loc4_,_loc3_);
            }
         }
         return _loc1_;
      }
      
      public function setValue(param1:String) : void
      {
         var_167 = param1;
         updateListeners();
      }
      
      public function updateListeners() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_651)
         {
            _loc1_.localization = value;
         }
      }
      
      public function get key() : String
      {
         return var_570;
      }
   }
}
