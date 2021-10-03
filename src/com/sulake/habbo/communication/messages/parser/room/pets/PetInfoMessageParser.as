package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1826:int;
      
      private var var_538:String;
      
      private var var_1653:int;
      
      private var var_1896:int;
      
      private var var_1832:int;
      
      private var var_2128:int;
      
      private var _nutrition:int;
      
      private var var_1288:int;
      
      private var var_2130:int;
      
      private var var_2129:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1830:int;
      
      private var var_2127:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1653;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2128;
      }
      
      public function flush() : Boolean
      {
         var_1288 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2130;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2129;
      }
      
      public function get maxNutrition() : int
      {
         return var_2127;
      }
      
      public function get figure() : String
      {
         return var_538;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1896;
      }
      
      public function get petId() : int
      {
         return var_1288;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1288 = param1.readInteger();
         _name = param1.readString();
         var_1653 = param1.readInteger();
         var_2130 = param1.readInteger();
         var_1832 = param1.readInteger();
         var_2129 = param1.readInteger();
         _energy = param1.readInteger();
         var_2128 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2127 = param1.readInteger();
         var_538 = param1.readString();
         var_1896 = param1.readInteger();
         var_1830 = param1.readInteger();
         var_1826 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1832;
      }
      
      public function get ownerId() : int
      {
         return var_1830;
      }
      
      public function get age() : int
      {
         return var_1826;
      }
   }
}
