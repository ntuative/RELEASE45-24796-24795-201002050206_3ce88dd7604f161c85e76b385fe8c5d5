package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_1170:int = 0;
       
      
      private var var_62:Vector3d;
      
      private var _updateID:int;
      
      private var _type:String = "";
      
      private var _visualization:IRoomObjectVisualization;
      
      private var _model:RoomObjectModel;
      
      private var var_392:IRoomObjectEventHandler;
      
      private var var_1469:Vector3d;
      
      private var _instanceId:int = 0;
      
      private var _id:int;
      
      private var var_1470:Vector3d;
      
      private var var_215:Vector3d;
      
      private var var_461:Array;
      
      public function RoomObject(param1:int, param2:int)
      {
         super();
         _id = param1;
         var_62 = new Vector3d();
         var_215 = new Vector3d();
         var_1469 = new Vector3d();
         var_1470 = new Vector3d();
         var_461 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            var_461[_loc3_] = 0;
            _loc3_--;
         }
         _model = new RoomObjectModel();
         _visualization = null;
         var_392 = null;
         _updateID = 0;
         _instanceId = var_1170++;
      }
      
      public function getInstanceId() : int
      {
         return _instanceId;
      }
      
      public function getId() : int
      {
         return _id;
      }
      
      public function getUpdateID() : int
      {
         return _updateID;
      }
      
      public function dispose() : void
      {
         var_62 = null;
         var_215 = null;
         if(_model != null)
         {
            _model.dispose();
            _model = null;
         }
         var_461 = null;
         setVisualization(null);
         setEventHandler(null);
      }
      
      public function getType() : String
      {
         return _type;
      }
      
      public function getLocation() : IVector3d
      {
         var_1469.assign(var_62);
         return var_1469;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_62.x != param1.x || var_62.y != param1.y || var_62.z != param1.z)
         {
            var_62.x = param1.x;
            var_62.y = param1.y;
            var_62.z = param1.z;
            ++_updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_215.x != param1.x || var_215.y != param1.y || var_215.z != param1.z)
         {
            var_215.x = (param1.x % 360 + 360) % 360;
            var_215.y = (param1.y % 360 + 360) % 360;
            var_215.z = (param1.z % 360 + 360) % 360;
            ++_updateID;
         }
      }
      
      public function setType(param1:String) : void
      {
         _type = param1;
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return var_392;
      }
      
      public function getDirection() : IVector3d
      {
         var_1470.assign(var_215);
         return var_1470;
      }
      
      public function setState(param1:int, param2:int) : Boolean
      {
         if(param2 >= 0 && param2 < var_461.length)
         {
            if(var_461[param2] != param1)
            {
               var_461[param2] = param1;
               ++_updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == var_392)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = var_392;
         if(_loc2_ != null)
         {
            var_392 = null;
            _loc2_.object = null;
         }
         var_392 = param1;
         if(var_392 != null)
         {
            var_392.object = this;
         }
      }
      
      public function getState(param1:int) : int
      {
         if(param1 >= 0 && param1 < var_461.length)
         {
            return var_461[param1];
         }
         return -1;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != _visualization)
         {
            if(_visualization != null)
            {
               _visualization.dispose();
            }
            _visualization = param1;
            if(_visualization != null)
            {
               _visualization.object = this;
            }
         }
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return _visualization;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return _model;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return _model;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return getEventHandler();
      }
   }
}
