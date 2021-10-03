package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetAddedToInventoryParser implements IMessageParser
   {
       
      
      private var var_903:PetData;
      
      private var var_2166:Boolean;
      
      public function PetAddedToInventoryParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_903 = null;
         return true;
      }
      
      public function get purchased() : Boolean
      {
         return var_2166;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_903 = new PetData(param1);
         var_2166 = param1.readBoolean();
         return true;
      }
      
      public function get pet() : PetData
      {
         return var_903;
      }
   }
}
