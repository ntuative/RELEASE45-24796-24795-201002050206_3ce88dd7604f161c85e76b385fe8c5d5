package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_104:String = "RWPUE_VOTE_RESULT";
      
      public static const const_86:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1226:int;
      
      private var var_915:String;
      
      private var var_656:Array;
      
      private var var_943:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_915 = param2;
         var_943 = param3;
         var_656 = param4;
         if(var_656 == null)
         {
            var_656 = [];
         }
         var_1226 = param5;
      }
      
      public function get votes() : Array
      {
         return var_656.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1226;
      }
      
      public function get question() : String
      {
         return var_915;
      }
      
      public function get choices() : Array
      {
         return var_943.slice();
      }
   }
}
