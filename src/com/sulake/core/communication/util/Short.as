package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_709:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_709 = new ByteArray();
         var_709.writeShort(param1);
         var_709.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_709.position = 0;
         if(false)
         {
            _loc1_ = var_709.readShort();
            var_709.position = 0;
         }
         return _loc1_;
      }
   }
}
