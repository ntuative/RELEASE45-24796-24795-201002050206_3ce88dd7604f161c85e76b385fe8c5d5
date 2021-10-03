package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_634;
         param1["bitmap"] = const_667;
         param1["border"] = const_630;
         param1["border_notify"] = const_1135;
         param1["button"] = const_429;
         param1["button_thick"] = const_660;
         param1["button_icon"] = const_1202;
         param1["button_group_left"] = const_665;
         param1["button_group_center"] = const_600;
         param1["button_group_right"] = const_594;
         param1["canvas"] = const_552;
         param1["checkbox"] = const_676;
         param1["closebutton"] = const_926;
         param1["container"] = const_277;
         param1["container_button"] = const_588;
         param1["display_object_wrapper"] = const_560;
         param1["dropmenu"] = const_360;
         param1["dropmenu_item"] = const_359;
         param1["frame"] = const_267;
         param1["frame_notify"] = const_1165;
         param1["header"] = const_652;
         param1["icon"] = const_895;
         param1["itemgrid"] = const_789;
         param1["itemgrid_horizontal"] = const_431;
         param1["itemgrid_vertical"] = const_533;
         param1["itemlist"] = const_828;
         param1["itemlist_horizontal"] = const_307;
         param1["itemlist_vertical"] = const_311;
         param1["maximizebox"] = const_1124;
         param1["menu"] = const_1363;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_969;
         param1["minimizebox"] = const_1276;
         param1["notify"] = const_1212;
         param1["null"] = const_596;
         param1["password"] = const_653;
         param1["radiobutton"] = const_551;
         param1["region"] = const_434;
         param1["restorebox"] = const_1323;
         param1["scaler"] = const_881;
         param1["scaler_horizontal"] = const_1351;
         param1["scaler_vertical"] = const_1349;
         param1["scrollbar_horizontal"] = const_337;
         param1["scrollbar_vertical"] = const_502;
         param1["scrollbar_slider_button_up"] = const_946;
         param1["scrollbar_slider_button_down"] = const_885;
         param1["scrollbar_slider_button_left"] = const_869;
         param1["scrollbar_slider_button_right"] = const_875;
         param1["scrollbar_slider_bar_horizontal"] = const_779;
         param1["scrollbar_slider_bar_vertical"] = const_788;
         param1["scrollbar_slider_track_horizontal"] = const_938;
         param1["scrollbar_slider_track_vertical"] = const_814;
         param1["scrollable_itemlist"] = const_1308;
         param1["scrollable_itemlist_vertical"] = const_422;
         param1["scrollable_itemlist_horizontal"] = const_911;
         param1["selector"] = const_557;
         param1["selector_list"] = const_532;
         param1["submenu"] = const_969;
         param1["tab_button"] = const_550;
         param1["tab_container_button"] = const_793;
         param1["tab_context"] = const_407;
         param1["tab_content"] = const_866;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_632;
         param1["input"] = const_654;
         param1["toolbar"] = const_1153;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
