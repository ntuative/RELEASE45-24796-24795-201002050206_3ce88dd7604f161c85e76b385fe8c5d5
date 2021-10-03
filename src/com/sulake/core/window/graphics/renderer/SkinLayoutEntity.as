package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_232:uint = 1;
      
      public static const const_448:uint = 0;
      
      public static const const_850:uint = 8;
      
      public static const const_217:uint = 4;
      
      public static const const_458:uint = 2;
       
      
      private var var_399:uint;
      
      private var var_1982:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1981:uint;
      
      private var var_89:Rectangle;
      
      private var var_590:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_89 = param3;
         _color = param4;
         var_399 = param5;
         var_1982 = param6;
         var_1981 = param7;
         var_590 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1982;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_399;
      }
      
      public function get scaleV() : uint
      {
         return var_1981;
      }
      
      public function get tags() : Array
      {
         return var_590;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_89 = null;
         var_590 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_89;
      }
   }
}
