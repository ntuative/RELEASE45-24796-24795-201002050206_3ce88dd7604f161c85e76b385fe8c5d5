package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_953:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1075:Boolean = true;
      
      private var var_1204:int = 0;
      
      private var var_738:int = 0;
      
      private var var_1096:int = 0;
      
      private var var_739:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1202:int = 15;
      
      private var var_160:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1205:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1096 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1075)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_738,var_739);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1204;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_738 == 0 && var_739 == 0;
      }
      
      private function resetLog() : void
      {
         var_738 = 0;
         var_739 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1075)
         {
            return;
         }
         if(getTimer() - var_1096 > var_1205 * 1000 && var_1204 < var_1202)
         {
            var_1096 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_160 = param1;
         var_1205 = int(var_160.getKey("lagwarninglog.interval","60"));
         var_1202 = int(var_160.getKey("lagwarninglog.reportlimit","15"));
         var_1075 = Boolean(int(var_160.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_739 += 1;
            case const_953:
               var_738 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
