package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1089:int = 31;
      
      private static const const_1028:int = 32;
      
      private static const const_748:int = 10;
      
      private static const const_479:int = 20;
       
      
      private var var_520:Boolean = false;
      
      private var var_227:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_227 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_520 = true;
            var_227 = new Array();
            var_227.push(const_1089);
            var_227.push(const_1028);
            return;
         }
         if(param1 > 0 && param1 <= const_748)
         {
            if(var_520)
            {
               var_520 = false;
               var_227 = new Array();
               var_227.push(const_748 + param1);
               var_227.push(const_479 + param1);
               var_227.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(false)
            {
               super.setAnimation(var_227.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
