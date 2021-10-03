package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1089:int = 31;
      
      private static const const_1028:int = 32;
      
      private static const const_480:int = 30;
      
      private static const const_748:int = 20;
      
      private static const const_479:int = 10;
       
      
      private var var_520:Boolean = false;
      
      private var var_227:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_227 = new Array();
         super();
         super.setAnimation(const_480);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_520 = true;
            var_227 = new Array();
            var_227.push(const_1089);
            var_227.push(const_1028);
            return;
         }
         if(param1 > 0 && param1 <= const_479)
         {
            if(var_520)
            {
               var_520 = false;
               var_227 = new Array();
               if(_direction == 2)
               {
                  var_227.push(const_748 + 5 - param1);
                  var_227.push(const_479 + 5 - param1);
               }
               else
               {
                  var_227.push(const_748 + param1);
                  var_227.push(const_479 + param1);
               }
               var_227.push(const_480);
               return;
            }
            super.setAnimation(const_480);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
