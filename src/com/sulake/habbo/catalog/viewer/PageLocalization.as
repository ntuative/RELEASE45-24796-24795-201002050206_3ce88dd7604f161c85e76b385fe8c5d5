package com.sulake.habbo.catalog.viewer
{
   import flash.utils.Dictionary;
   
   public class PageLocalization implements IPageLocalization
   {
      
      private static const const_166:Dictionary = new Dictionary();
      
      private static const const_734:Object = {"frontpage3":[7,8]};
      
      private static const const_1064:Array = ["ctlg_header_text","ctlg_description","ctlg_special_txt","ctlg_text_1","ctlg_text_2"];
      
      private static const const_735:Object = {"frontpage3":[["ctlg_txt1","ctlg_txt2"],["ctlg_txt3"]]};
      
      private static const LAYOUTS_IMAGE_FIELDS:Object = {"frontpage3":["ctlg_header_img","ctlg_special_img","frontpage_promotion"]};
      
      private static const LAYOUTS_TEXT_FIELDS:Object = {
         "camera1":["ctlg_header_text","ctlg_text_1"],
         "club1":["ctlg_text_1","ctlg_text_2","ctlg_text_3","ctlg_text_4","ctlg_text_5"],
         "club2":["ctlg_text_1","ctlg_text_2","ctlg_text_3","ctlg_text_4"],
         "presents":["ctlg_header_text","ctlg_text1"],
         "collectibles":["ctlg_header_text","ctlg_collectibles_link"],
         "purse":["ctlg_header_text","ctlg_special_txt"],
         "pets":["ctlg_header_text","ctlg_text_1","ctlg_text_2","ctlg_text_3"],
         "pets2":["ctlg_header_text","ctlg_text_1","ctlg_text_2","ctlg_text_3"],
         "info_credits":["ctlg_text_1","ctlg_text_2","ctlg_text_3","ctlg_text_4","ctlg_text_5","ctlg_text_6","ctlg_text_7","ctlg_text_8"],
         "info_pixels":["ctlg_text_1","ctlg_text_2","ctlg_text_3","ctlg_text_4","ctlg_text_5","ctlg_text_6","ctlg_text_7","ctlg_text_8"],
         "frontpage3":["ctlg_txt1","ctlg_txt2","ctlg_txt3","ctlg_txt4","ctlg_txt5","ctlg_txt6","","","","ctlg_txt7"]
      };
      
      private static const const_1063:Array = ["ctlg_header_img","ctlg_teaserimg_1","ctlg_special_img","ctlg_teaserimg_2","ctlg_teaserimg_3"];
      
      {
         const_166["frontpage3"] = ["ctlg_txt3","ctlg_txt7"];
         const_166["info_pixels"] = ["ctlg_text_5","ctlg_text_7"];
         const_166["info_credits"] = ["ctlg_text_5","ctlg_text_7"];
         const_166["collectibles"] = ["ctlg_collectibles_link"];
         const_166["club1"] = ["ctlg_text_5"];
      }
      
      private var var_793:Array;
      
      private var var_548:Array;
      
      public function PageLocalization(param1:Array, param2:Array)
      {
         super();
         var_793 = param1;
         var_548 = param2;
      }
      
      public function getLinks(param1:String) : Array
      {
         return const_166[param1];
      }
      
      public function getImageElementName(param1:int, param2:String) : String
      {
         var _loc3_:Array = LAYOUTS_IMAGE_FIELDS[param2];
         if(_loc3_ == null)
         {
            _loc3_ = const_1063;
         }
         if(param1 < _loc3_.length)
         {
            return _loc3_[param1];
         }
         return "";
      }
      
      public function getColorSources(param1:String) : Array
      {
         return const_734[param1];
      }
      
      public function getTextElementName(param1:int, param2:String) : String
      {
         var _loc3_:Array = LAYOUTS_TEXT_FIELDS[param2];
         if(_loc3_ == null)
         {
            _loc3_ = const_1064;
         }
         if(param1 < _loc3_.length)
         {
            return _loc3_[param1];
         }
         return "";
      }
      
      public function getColorTargets(param1:String) : Array
      {
         return const_735[param1];
      }
      
      public function dispose() : void
      {
         var_793 = null;
         var_548 = null;
      }
      
      public function getTextElementContent(param1:int) : String
      {
         if(param1 < var_548.length)
         {
            return var_548[param1];
         }
         return "";
      }
      
      public function get textCount() : int
      {
         return var_548.length;
      }
      
      public function hasColors(param1:String) : Boolean
      {
         return false && false;
      }
      
      public function getImageElementContent(param1:int) : String
      {
         if(param1 < var_793.length)
         {
            return var_793[param1];
         }
         return "";
      }
      
      public function get imageCount() : int
      {
         return var_793.length;
      }
      
      public function getColorUintFromText(param1:int) : uint
      {
         var _loc2_:* = null;
         if(param1 < var_548.length)
         {
            _loc2_ = String(var_548[param1]).replace("#","0x");
            return uint(Number(_loc2_));
         }
         return 0;
      }
      
      public function hasLinks(param1:String) : Boolean
      {
         return false;
      }
   }
}
