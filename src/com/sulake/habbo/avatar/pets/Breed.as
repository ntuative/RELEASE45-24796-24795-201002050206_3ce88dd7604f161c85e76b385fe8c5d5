package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _gender:String;
      
      private var _id:int;
      
      private var var_2121:String = "";
      
      private var var_2119:int;
      
      private var var_2120:String;
      
      private var var_1812:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2119 = parseInt(param1.@pattern);
         _gender = String(param1.@gender);
         var_1812 = Boolean(parseInt(param1.@colorable));
         var_2121 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2121;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1812;
      }
      
      public function get gender() : String
      {
         return _gender;
      }
      
      public function get patternId() : int
      {
         return var_2119;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2120;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2120 = param1;
      }
   }
}
