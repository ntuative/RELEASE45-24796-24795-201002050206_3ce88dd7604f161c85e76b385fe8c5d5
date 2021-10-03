package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1635:Boolean;
      
      private var var_1634:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1635 = Boolean(parseInt(param1.@club));
         var_1634 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1635;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1634;
      }
   }
}
