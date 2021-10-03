package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1399:int = -1;
      
      private var var_1129:Boolean;
      
      private var var_1130:String;
      
      private var var_1742:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1742 = String(param1["set-type"]);
         var_1130 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1129 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1399 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1130;
      }
      
      public function get staticId() : int
      {
         return var_1399;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1399 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1129;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1129 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1130 = param1;
      }
      
      public function get setType() : String
      {
         return var_1742;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
