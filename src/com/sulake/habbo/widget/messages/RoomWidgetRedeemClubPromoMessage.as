package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRedeemClubPromoMessage extends RoomWidgetMessage
   {
      
      public static const const_704:String = "rwrcp_redeem_club_promo";
       
      
      private var var_2028:String;
      
      private var var_2029:Boolean;
      
      public function RoomWidgetRedeemClubPromoMessage(param1:String, param2:String, param3:Boolean)
      {
         super(param1);
         var_2028 = param2;
         var_2029 = param3;
      }
      
      public function get code() : String
      {
         return var_2028;
      }
      
      public function get isTrial() : Boolean
      {
         return var_2029;
      }
   }
}
