package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1442:String;
      
      private var var_1545:String;
      
      private var var_990:String;
      
      private var var_399:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1442 = String(param1.@align);
         var_990 = String(param1.@base);
         var_1545 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_399 = Number(_loc2_);
            if(var_399 > 1)
            {
               var_399 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1442;
      }
      
      public function get ink() : String
      {
         return var_1545;
      }
      
      public function get base() : String
      {
         return var_990;
      }
      
      public function get isBlended() : Boolean
      {
         return var_399 != 1;
      }
      
      public function get blend() : Number
      {
         return var_399;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
