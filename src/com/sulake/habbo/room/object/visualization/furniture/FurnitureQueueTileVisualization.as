package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1007:int = 1;
      
      private static const const_1028:int = 3;
      
      private static const const_1006:int = 2;
      
      private static const const_1005:int = 15;
       
      
      private var var_716:int;
      
      private var var_227:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_227 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1006)
         {
            var_227 = new Array();
            var_227.push(const_1007);
            var_716 = const_1005;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_716 > 0)
         {
            --var_716;
         }
         if(var_716 == 0)
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
