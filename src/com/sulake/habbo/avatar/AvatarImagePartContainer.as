package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1996:int;
      
      private var var_1994:String;
      
      private var var_1484:IActionDefinition;
      
      private var var_1993:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1992:String;
      
      private var var_1997:String;
      
      private var var_1812:Boolean;
      
      private var var_1995:ColorTransform;
      
      private var var_1738:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1994 = param1;
         var_1992 = param2;
         var_1996 = param3;
         _color = param4;
         _frames = param5;
         var_1484 = param6;
         var_1812 = param7;
         var_1738 = param8;
         var_1997 = param9;
         var_1993 = param10;
         var_1995 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1812;
      }
      
      public function get partType() : String
      {
         return var_1992;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1738;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1993;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1996;
      }
      
      public function get flippedPartType() : String
      {
         return var_1997;
      }
      
      public function get bodyPartId() : String
      {
         return var_1994;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1484;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1995;
      }
   }
}
