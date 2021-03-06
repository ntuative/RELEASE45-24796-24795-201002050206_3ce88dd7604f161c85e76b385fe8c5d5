package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_1413:Array;
      
      private var var_1914:Boolean;
      
      private var var_534:Array;
      
      private var var_1913:int;
      
      private var var_535:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         var_1413 = [];
         var_535 = [];
         var_534 = [];
         var_1914 = param1.readBoolean();
         var_1913 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_1413.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_535.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_534.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_534;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1413;
      }
      
      public function get wrappingPrice() : int
      {
         return var_1913;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boxTypes() : Array
      {
         return var_535;
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return var_1914;
      }
   }
}
