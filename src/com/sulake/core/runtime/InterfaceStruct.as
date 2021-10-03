package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_405:uint;
      
      private var var_1016:IUnknown;
      
      private var var_1279:String;
      
      private var var_1015:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1015 = param1;
         var_1279 = getQualifiedClassName(var_1015);
         var_1016 = param2;
         var_405 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1015;
      }
      
      public function get disposed() : Boolean
      {
         return var_1016 == null;
      }
      
      public function get references() : uint
      {
         return var_405;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_405) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1016;
      }
      
      public function get iis() : String
      {
         return var_1279;
      }
      
      public function reserve() : uint
      {
         return ++var_405;
      }
      
      public function dispose() : void
      {
         var_1015 = null;
         var_1279 = null;
         var_1016 = null;
         var_405 = 0;
      }
   }
}
