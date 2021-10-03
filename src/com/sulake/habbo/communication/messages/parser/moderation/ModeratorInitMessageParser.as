package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1628:Boolean;
      
      private var var_1347:Array;
      
      private var var_1625:Boolean;
      
      private var var_1623:Boolean;
      
      private var var_1630:Boolean;
      
      private var var_144:Array;
      
      private var var_1624:Boolean;
      
      private var var_1626:Boolean;
      
      private var var_1346:Array;
      
      private var var_1629:Boolean;
      
      private var var_1627:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1627;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1628;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1625;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1624;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1626;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1347;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_144 = [];
         var_1347 = [];
         _roomMessageTemplates = [];
         var_1346 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_144.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1347.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1346.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1624 = param1.readBoolean();
         var_1630 = param1.readBoolean();
         var_1625 = param1.readBoolean();
         var_1623 = param1.readBoolean();
         var_1627 = param1.readBoolean();
         var_1626 = param1.readBoolean();
         var_1628 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1629 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1623;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1346;
      }
      
      public function get issues() : Array
      {
         return var_144;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1629;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1630;
      }
   }
}
