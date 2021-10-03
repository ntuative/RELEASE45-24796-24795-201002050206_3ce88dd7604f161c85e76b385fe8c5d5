package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_324:Number = 0.5;
      
      private static const const_730:int = 3;
      
      private static const const_1044:Number = 1;
       
      
      private var var_1787:Boolean = false;
      
      private var var_1793:Boolean = false;
      
      private var var_940:int = 0;
      
      private var var_246:Vector3d = null;
      
      private var var_1790:int = 0;
      
      private var var_1788:int = 0;
      
      private var var_1792:Boolean = false;
      
      private var var_1785:int = -2;
      
      private var var_1791:Boolean = false;
      
      private var var_1789:int = 0;
      
      private var var_1786:int = -1;
      
      private var var_369:Vector3d = null;
      
      private var var_1794:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1790;
      }
      
      public function get targetId() : int
      {
         return var_1786;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1789 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1790 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1787 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1786 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1793 = param1;
      }
      
      public function dispose() : void
      {
         var_369 = null;
         var_246 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_369 == null)
         {
            var_369 = new Vector3d();
         }
         var_369.assign(param1);
         var_940 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1785;
      }
      
      public function get screenHt() : int
      {
         return var_1794;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1788 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_246;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1794 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1789;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1787;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1793;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_369 != null && var_246 != null)
         {
            ++var_940;
            _loc2_ = Vector3d.dif(var_369,var_246);
            if(_loc2_.length <= const_324)
            {
               var_246 = var_369;
               var_369 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_324 * (const_730 + 1))
               {
                  _loc2_.mul(const_324);
               }
               else if(var_940 <= const_730)
               {
                  _loc2_.mul(const_324);
               }
               else
               {
                  _loc2_.mul(const_1044);
               }
               var_246 = Vector3d.sum(var_246,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1792 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1788;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1791 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1785 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_246 != null)
         {
            return;
         }
         var_246 = new Vector3d();
         var_246.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1792;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1791;
      }
   }
}
