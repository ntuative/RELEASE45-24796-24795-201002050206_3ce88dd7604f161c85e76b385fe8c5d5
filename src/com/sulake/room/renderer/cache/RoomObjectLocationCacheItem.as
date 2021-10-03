package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_1957:int = -1;
      
      private var var_1306:int = -1;
      
      private var var_655:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_655 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_1957;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_1957 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_655.assign(param1);
         var_655.x = Math.round(var_655.x);
         var_655.y = Math.round(var_655.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1306 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_655;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1306;
      }
   }
}
