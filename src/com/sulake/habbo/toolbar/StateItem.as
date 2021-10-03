package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1071:Boolean;
      
      private var var_1970:String;
      
      private var _frames:XMLList;
      
      private var var_1019:String = "-1";
      
      private var var_712:String;
      
      private var var_166:int = 120;
      
      private var var_1212:String = "-1";
      
      private var var_1213:String;
      
      private var var_1971:Boolean;
      
      private var var_1463:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1071 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1971 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_166 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1213 = param1.@namebase;
         }
         else
         {
            var_1213 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1019 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1212 = param1.@nextState;
         }
         else
         {
            var_1212 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1463 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1970 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_712 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1019 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1971;
      }
      
      public function get defaultState() : String
      {
         return var_1463;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1463 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1970;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_166;
      }
      
      public function get loop() : Boolean
      {
         return var_1071;
      }
      
      public function get nextState() : String
      {
         return var_1212;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_712;
      }
      
      public function get stateOver() : String
      {
         return var_1019;
      }
      
      public function get nameBase() : String
      {
         return var_1213;
      }
   }
}
