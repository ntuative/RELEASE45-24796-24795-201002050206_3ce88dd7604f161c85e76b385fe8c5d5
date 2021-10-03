package com.sulake.room.renderer.utils
{
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   
   public class SortableSprite
   {
       
      
      private var var_76:Number = 0;
      
      private var var_1784:IRoomObjectSprite = null;
      
      private var _name:String = "";
      
      private var var_75:int = 0;
      
      private var _y:int = 0;
      
      public function SortableSprite()
      {
         super();
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set y(param1:int) : void
      {
         _y = param1;
      }
      
      public function set z(param1:Number) : void
      {
         var_76 = param1;
      }
      
      public function get sprite() : IRoomObjectSprite
      {
         return var_1784;
      }
      
      public function get z() : Number
      {
         return var_76;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set x(param1:int) : void
      {
         var_75 = param1;
      }
      
      public function set sprite(param1:IRoomObjectSprite) : void
      {
         var_1784 = param1;
      }
      
      public function get x() : int
      {
         return var_75;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
   }
}
