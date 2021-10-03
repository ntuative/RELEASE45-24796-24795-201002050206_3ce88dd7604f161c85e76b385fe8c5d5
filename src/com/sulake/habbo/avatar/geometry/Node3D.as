package com.sulake.habbo.avatar.geometry
{
   public class Node3D
   {
       
      
      private var var_1095:Vector3D;
      
      private var var_528:Vector3D;
      
      public function Node3D(param1:Number, param2:Number, param3:Number)
      {
         var_1095 = new Vector3D();
         super();
         var_528 = new Vector3D(param1,param2,param3);
      }
      
      public function get transformedLocation() : Vector3D
      {
         return var_1095;
      }
      
      public function get location() : Vector3D
      {
         return var_528;
      }
      
      public function applyTransform(param1:Matrix4x4) : void
      {
         var_1095 = param1.vectorMultiplication(var_528);
      }
   }
}
