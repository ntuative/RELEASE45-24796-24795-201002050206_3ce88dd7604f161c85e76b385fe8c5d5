package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_109;
         param1["bound_to_parent_rect"] = const_64;
         param1["child_window"] = const_772;
         param1["embedded_controller"] = const_299;
         param1["resize_to_accommodate_children"] = const_41;
         param1["input_event_processor"] = const_32;
         param1["internal_event_handling"] = const_678;
         param1["mouse_dragging_target"] = const_185;
         param1["mouse_dragging_trigger"] = const_274;
         param1["mouse_scaling_target"] = const_249;
         param1["mouse_scaling_trigger"] = const_395;
         param1["horizontal_mouse_scaling_trigger"] = const_171;
         param1["vertical_mouse_scaling_trigger"] = const_174;
         param1["observe_parent_input_events"] = const_900;
         param1["optimize_region_to_layout_size"] = const_386;
         param1["parent_window"] = const_811;
         param1["relative_horizontal_scale_center"] = const_156;
         param1["relative_horizontal_scale_fixed"] = const_108;
         param1["relative_horizontal_scale_move"] = const_270;
         param1["relative_horizontal_scale_strech"] = const_214;
         param1["relative_scale_center"] = const_941;
         param1["relative_scale_fixed"] = const_616;
         param1["relative_scale_move"] = const_992;
         param1["relative_scale_strech"] = const_964;
         param1["relative_vertical_scale_center"] = const_139;
         param1["relative_vertical_scale_fixed"] = const_111;
         param1["relative_vertical_scale_move"] = const_276;
         param1["relative_vertical_scale_strech"] = const_246;
         param1["on_resize_align_left"] = const_587;
         param1["on_resize_align_right"] = const_379;
         param1["on_resize_align_center"] = const_433;
         param1["on_resize_align_top"] = const_685;
         param1["on_resize_align_bottom"] = const_432;
         param1["on_resize_align_middle"] = const_423;
         param1["on_accommodate_align_left"] = const_991;
         param1["on_accommodate_align_right"] = const_351;
         param1["on_accommodate_align_center"] = const_580;
         param1["on_accommodate_align_top"] = const_916;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_518;
         param1["route_input_events_to_parent"] = const_380;
         param1["use_parent_graphic_context"] = const_14;
         param1["draggable_with_mouse"] = const_867;
         param1["scalable_with_mouse"] = const_939;
         param1["reflect_horizontal_resize_to_parent"] = const_453;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_253;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
