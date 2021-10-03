package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_903:PetData;
      
      private var var_1353:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1353 = param1.readBoolean();
         var_903 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1353 + ", " + var_903.id + ", " + var_903.name + ", " + pet.figure + ", " + var_903.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1353;
      }
      
      public function get pet() : PetData
      {
         return var_903;
      }
   }
}
