package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1845:int;
      
      private var var_1425:int;
      
      private var var_1847:int;
      
      private var var_1846:int;
      
      private var var_1848:int;
      
      private var var_1424:int;
      
      private var var_1809:int;
      
      private var var_1659:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1845;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1425;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1809;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1846;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1848;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1424;
      }
      
      public function get commission() : int
      {
         return var_1847;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1659 = param1.readBoolean();
         var_1847 = param1.readInteger();
         var_1425 = param1.readInteger();
         var_1424 = param1.readInteger();
         var_1846 = param1.readInteger();
         var_1845 = param1.readInteger();
         var_1848 = param1.readInteger();
         var_1809 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1659;
      }
   }
}
