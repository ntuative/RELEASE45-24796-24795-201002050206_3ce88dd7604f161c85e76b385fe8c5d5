package com.sulake.habbo.navigator.mainview
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularTagData;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.IViewCtrl;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   
   public class PopularTagsListCtrl implements IViewCtrl
   {
       
      
      private var var_2328:int;
      
      private var _navigator:HabboNavigator;
      
      private var var_17:IWindowContainer;
      
      private var var_42:IItemListWindow;
      
      private var var_984:TagRenderer;
      
      public function PopularTagsListCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_984 = new TagRenderer(_navigator);
      }
      
      public function get content() : IWindowContainer
      {
         return var_17;
      }
      
      private function refreshTagName(param1:IWindowContainer, param2:PopularTagData) : void
      {
         var _loc4_:ITextWindow = ITextWindow(param1.findChildByName("txt"));
         if(param2 == null)
         {
            return;
         }
         _loc4_.visible = true;
         _loc4_.text = param2.tagName;
      }
      
      public function set content(param1:IWindowContainer) : void
      {
         var_17 = param1;
         var_42 = IItemListWindow(var_17.findChildByName("item_list"));
      }
      
      public function refresh() : void
      {
         var _loc4_:* = null;
         var _loc1_:Array = _navigator.data.popularTags.tags;
         var _loc2_:IWindowContainer = IWindowContainer(var_42.getListItemAt(0));
         if(_loc2_ == null)
         {
            _loc2_ = IWindowContainer(_navigator.getXmlWindow("grs_popular_tag_row"));
            var_42.addListItem(_loc2_);
         }
         Util.hideChildren(_loc2_);
         var _loc3_:int = 0;
         while(_loc3_ < _navigator.data.popularTags.tags.length)
         {
            _loc4_ = _navigator.data.popularTags.tags[_loc3_];
            var_984.refreshTag(_loc2_,_loc3_,_loc4_.tagName);
            _loc3_++;
         }
         Util.layoutChildrenInArea(_loc2_,_loc2_.width,18,3);
         _loc2_.height = Util.getLowestPoint(_loc2_);
         var_17.findChildByName("no_tags_found").visible = _loc1_.length < 1;
      }
   }
}
