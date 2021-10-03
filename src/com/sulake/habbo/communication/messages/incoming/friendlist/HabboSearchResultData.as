package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2263:Boolean;
      
      private var var_2262:int;
      
      private var var_2261:Boolean;
      
      private var var_1345:String;
      
      private var var_1153:String;
      
      private var var_1667:int;
      
      private var var_1608:String;
      
      private var var_2264:String;
      
      private var var_1609:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1667 = param1.readInteger();
         this.var_1345 = param1.readString();
         this.var_1608 = param1.readString();
         this.var_2263 = param1.readBoolean();
         this.var_2261 = param1.readBoolean();
         param1.readString();
         this.var_2262 = param1.readInteger();
         this.var_1609 = param1.readString();
         this.var_2264 = param1.readString();
         this.var_1153 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1153;
      }
      
      public function get avatarName() : String
      {
         return this.var_1345;
      }
      
      public function get avatarId() : int
      {
         return this.var_1667;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2263;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2264;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1609;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2261;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1608;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2262;
      }
   }
}
