package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_99:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1303:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_99);
         var_1303 = param1;
      }
      
      public function get vote() : int
      {
         return var_1303;
      }
   }
}
