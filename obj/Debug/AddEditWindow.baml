   M S B A M L   `   `   `  ����G  Cкурсач, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:курсачкурсач  5   	   b ^PresentationFramework.Aero2, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes 5           курсач.AddEditWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   5xcdg*http://schemas.xceed.com/wpf/xaml/datagrid  5   	   &localclr-namespace:курсач  5   	   Ixctk19http://schemas.microsoft.com/netfx/2009/xaml/presentation    5	   	   8xctk2(http://schemas.microsoft.com/xps/2005/06    5
   	   [themeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2    5        � Title$  AddEditWindow��5   	   $	��450��6   $	��800��6,    � 	Resources 5         FocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  TextBox.Static.Background �� Color  ComboBoxEditableTextBox �� 
TargetType �� 
TargetType	 ��Name  ComboBox.Static.Background
 �� EndPoint �� 
StartPoint � Color � Offset  ComboBox.Static.Border  ComboBox.Static.Glyph ' #ComboBox.Static.Editable.Background # ComboBox.Static.Editable.Border . *ComboBox.Static.Editable.Button.Background *	 &ComboBox.Static.Editable.Button.Border !
 ComboBox.MouseOver.Background  ComboBox.MouseOver.Border  ComboBox.MouseOver.Glyph * &ComboBox.MouseOver.Editable.Background & "ComboBox.MouseOver.Editable.Border 1 -ComboBox.MouseOver.Editable.Button.Background - )ComboBox.MouseOver.Editable.Button.Border  ComboBox.Pressed.Background  ComboBox.Pressed.Border  ComboBox.Pressed.Glyph ( $ComboBox.Pressed.Editable.Background $  ComboBox.Pressed.Editable.Border / +ComboBox.Pressed.Editable.Button.Background + 'ComboBox.Pressed.Editable.Button.Border   ComboBox.Disabled.Background  ComboBox.Disabled.Border  ComboBox.Disabled.Glyph ) %ComboBox.Disabled.Editable.Background % !ComboBox.Disabled.Editable.Border 0 ,ComboBox.Disabled.Editable.Button.Background , (ComboBox.Disabled.Editable.Button.Border  ComboBoxToggleButton ��Name F�Name �� Triggers ^� 
Conditions �� Binding �� RelativeSource �� AncestorType �� Value �� Mode �� 
TargetName P� Property P� Value   ComboBoxEditableTemplate �Name � ColumnDefinitions �Name � AllowsTransparency5  /Microsoft.Windows.Themes.SystemDropShadowChrome  Name   Color  �� MaxDropDownHeight! �� ElementName" �� ClearTypeHint# ��Name$ ��Name% ��Name-  'System.Windows.Input.KeyboardNavigation&   DirectionalNavigation' d�Name( d� 	IsChecked) �� Mode* ��Name+ �� 
IsReadOnly, P� 
SourceName- ]� 
Conditions. �� Property ! ComboBoxTemplate/ ��Name#0 �� SelectionBoxItemStringFormat1 �� ContentStringFormat2 �� SelectionBoxItemTemplate3 �� SelectionBoxItem4 J� IsHitTestVisible " ComboBoxStyle15 �� Triggers # FocusVisual1 $ Button.Static.Background % Button.Static.Border & Button.MouseOver.Background ' Button.MouseOver.Border ( Button.Pressed.Background ) Button.Pressed.Border * Button.Disabled.Background + Button.Disabled.Border , Button.Disabled.Foreground - ButtonStyle1��%=5  &	        &	 �     &	 �     &	 �    &	 �    &	 �    &	 �    &	 �    &	     &		 :    &	
 _    &	 �    &	     &	 A    &	 d    &	 �    &	 #    &	 F    &	 �    &	     &	 (    &	 K    &	 n    &	 
    &	 -    &	 P    &	 s    &	 �    &	 �    &	 �    &	 	    &	 &	    7  7  7  7  7  7 	 7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  &	  ~    7  7  7  &	! �     7  &	" x)    7   7  7  7 ! 7   &	# ,    &	$ �,    &	% �,    &	& -    &	' &-    &	( I-    &	) l-    &	* �-    &	+ �-    &	, �-    &	- �-    7 # 7 $ 7 % 7 ' 7 ) 7 * 7 + 7 , �� 5   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $	 1 2R�6/   #��� ��6E    . $��1��6�   5      5      5      �� 5   
   $ 	#FFFFFFFF��6<   �� 5   
   " ��60   .�5      ��  �@�OverridesDefaultStyle . 66   �� 5       �@J�	AllowDrop . 6*   �� 5       � ��$ 0��6)   �� 5       � ��$ 0��6*   �� 5       �@�FocusVisualStyle 61   Z� �� 5       �@��PanningMode$ VerticalFirst=�69   �� 5        �@��IsFlicksEnabled .  67   �� 5!       � �� 5"      �� 5#      " ��6&   .R�5$      �� $	 PART_ContentHost��6'   
������ |�.  $��Hidden=�6l   $��Hidden=�6�   5%      5'      5(      �� 5)   
   $	
 0,1&�6A   $	 0,0&�6P   .��5*      � $ 	#FFF0F0F0��6   $	 0.0Q�6-   � 5+      $ 	#FFE5E5E5��6   $	 1.0Q�6-   5,      �� 5-   
   $ 	#FFACACAC��69   �� 5.   
   $ 	#FF606060��68   �� 5/   
   $ 	#FFFFFFFF��6F   �� 50   
   $ 	#FFABADB3��6B   �� 51   
   $ Transparent��6M   �� 52   
   $ Transparent��6I   �� 53   
   $	
 0,1&�6D   $	 0,0&�6S   .��54      � $ 	#02111BFC��6   $	 0.0Q�6-   � 55      $ 	#02111BFC��6   $	 1.0Q�6-   56      �� 57   
   $ 	#FF7EB4EA��6<   �� 58   
   $ 	#FF000000��6;   �� 59   
   $ 	#FFFFFFFF��6I   �� 5:   
   $ 	#FF7EB4EA��6E   �� 5;   
   $	
 0,1&�6T   $	 0,0&�6c   .��5<      � $ 	#02111BFC��6   $	 0.0Q�6-   � 5=      $ 	#02111BFC��6   $	 1.0Q�6-   5>      �� 5?   
   $ 	#FF7EB4EA��6L   �� 5@   
   $	
 0,1&�6B   $	 0,0&�6Q   .��5A      � $ 	#FFDAECFC��6   $	 0.0Q�6-   � 5B      $ 	#FFC4E0FC��6   $	 1.0Q�6-   5C      �� 5D   
   $ 	#FF569DE5��6:   �� 5E   
   $ 	#FF000000��69   �� 5F   
   $ 	#FFFFFFFF��6G   �� 5G   
   $ 	#FF569DE5��6C   �� 5H   
   $	
 0,1&�6R   $	 0,0&�6a   .��5I      � $ 	#FFDAEBFC��6   $	 0.0Q�6-   � 5J      $ 	#FFC4E0FC��6   $	 1.0Q�6-   5K      �� 5L   
   $ 	#FF569DE5��6J   �� 5M   
   $ 	#FFF0F0F0��6?   �� 5N   
   $ 	#FFD9D9D9��6;   �� 5O   
   $ 	#FFBFBFBF��6:   �� 5P   
   $ 	#FFFFFFFF��6H   �� 5Q   
   $ 	#FFBFBFBF��6D   �� 5R   
   $ Transparent��6O   �� 5S   
   $ Transparent��6K   �� 5T   
   " d�6-   .�5U      ��  �@�OverridesDefaultStyle . 66   �� 5V       � �� .  6*   �� 5W       � |� .  6*   �� 5X       �@��	ClickMode$ Press=�6*   �� 5Y       � �� 5Z      �� 5[      " d�6&   .R�5\      �� $ templateRoot��6!   ���#30292f8��  #��z��6�    . ._�5]      �� $ splitBorder��6%   
������ $��1q�6T   $��Right=�6h   $��0q�6�    . #��� r�6�   ._�5^   "   F� $ arrow��6'   F����        ���( ��( јaQ     јaQ P����̰( � �    P����        8�� $��Center=�6�   $��0q�6�   $��Center=�6�   5_      5`       5a      ^� 5b       5c   "   �� 5d   &    60   �� *
IsEditable+ �� " �� true6�   �� 5e   &    60   �� *IsMouseOver+ �� $
 Self=�	 false6{   �� 5f   &    60   �� *	IsPressed+ �� $
 Self=�	 false6y   �� 5g   &    60   �� *	IsEnabled+ �� $
 Self=� true6y   .0�5i   "   �� $ templateRoot��6?   8   � ��6Y   �� 5j   "   $ templateRoot��6@   8   � ��6Z   �� 5k   "   $ splitBorder��6?   8   � ��6X   �� 5l   "   $ splitBorder��6@   8   � ��6Y   5m      P� 5n       �@J�IsMouseOver . . �5o   "   �� $ arrow��69   8   � ��6L   5p      ^� 5q       5r   "   �� 5s   &    60   �� *IsMouseOver+ �� $
 Self=� true6{   �� 5t   &    60   �� *
IsEditable+ �� " ��	 false6�   .0�5v   "   �� $ templateRoot��6?    � �� �#30292f6Y   �� 5w   "   $ templateRoot��6@   8   � ��6Z   5x      ^� 5y       5z   "   �� 5{   &    60   �� *IsMouseOver+ �� $
 Self=� true6{   �� 5|   &    60   �� *
IsEditable+ �� " �� true6�   .0�5~   "   �� $ templateRoot��6?    � �� �#30292f6Y   �� 5   "   $ templateRoot��6@   8   � ��6Z   �� 5�   "   $ splitBorder��6?    � �� �#30292f6X   �� 5�   "   $ splitBorder��6@   8 	  � ��6Y   5�      P� 5�       � �� . . �5�   "   �� $ arrow��69   8 
  � ��6L   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsPressed+ �� $
 Self=� true6y   �� 5�   &    60   �� *
IsEditable+ �� " ��	 false6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsPressed+ �� $
 Self=� true6y   �� 5�   &    60   �� *
IsEditable+ �� " �� true6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   �� 5�   "   $ splitBorder��6?   8   � ��6X   �� 5�   "   $ splitBorder��6@   8   � ��6Y   5�      P� 5�       � {� .  . �5�   "   �� $ arrow��69   8   � ��6L   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsEnabled+ �� $
 Self=�	 false6y   �� 5�   &    60   �� *
IsEditable+ �� " ��	 false6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsEnabled+ �� $
 Self=�	 false6y   �� 5�   &    60   �� *
IsEditable+ �� " �� true6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   �� 5�   "   $ splitBorder��6?   8   � ��6X   �� 5�   "   $ splitBorder��6@   8   � ��6Y   5�      5�      5�      5�      �� 5�   
   " ��6;   .R�5�      � $ templateRoot��6    .  5�      �� 5�      $��* �6'   �� 5�      #��� r�6'   $��0 �6z   .+�5�      � $ 
PART_Popup��6    . $��2��6F   $��Bottom=�6�   #��� .�6�   ��6Z   �� *IsDropDownOpen+ �� $ TemplatedParent=�.��5�        $ shadow��63   $ Transparent��6C   #��z  6�   ��6W   �� *ActualWidth+$! templateRoot��._�5�      �� $ dropDownBorder��6!   #��� ��69   #��� ��6   $��1q�6�   ._�5�      �� $	 DropDownScrollViewer��6+   .��5�   "   � $
 grid��6'   $" Enabled=�65   .+�5�   &   �� $# canvas��6-   $
��Left=�6=   $��0��6X   $	��Top=�6c   $��0��6{   .+�5�   *   �� $$ 
opaqueRect��64   ��6H   �� *
Background+$! dropDownBorder����6�   �� *ActualHeight+$! dropDownBorder����6�   �� *ActualWidth+$! dropDownBorder��5�   '   �� 5�   &   $% ItemsPresenter��65   $& 	Contained=�6M   # z 6�   5�   #   5�      5�      5�      5�      d� 5�      $' toggleButton��6   #��z��65   #��z��6_   #��z��6�   $��2��6�   8��  ( 6�   �� *IsDropDownOpen+$) TwoWay=� �� $ TemplatedParent=�6;  �� 5�      $ border��6   8�� #��z��6a   ._�5�      �� $* PART_EditableTextBox��6   #��z��6<   #��z��6�   8�� #��z��62  + 6�   �� *
IsReadOnly+ �� $ TemplatedParent=�62  5�      5�       5�      P� 5�       � {� .  . �5�      �� $ border��60    �@J�Opacity$
 0.56Q�6D   5�      P� 5�       �@J�IsKeyboardFocusWithin . . �5�      ��  � ��
 �   �63   5�      P� 5�      $, 
PART_Popup��63    �@�HasDropShadow . . �5�      �� $ shadow��6/    � ��$ 0,0,5,5q�6C   �� 5�      $ shadow��6.    �@ Color$ 	#71000000��6B   5�      P� 5�       �@��HasItems .  . �5�      �� $ dropDownBorder��6/    � ��$ 95��6K   5�      ]� 5�      - 5�      �� 5�      . �@��
IsGrouping . 6:   �� 5�      ". �@%�IsVirtualizingWhenGrouping .  6\   ./�5�      ��  � �� .  6F   5�      P� 5�      $, DropDownScrollViewer��6C    � �� .  . �5�      �� $ 
opaqueRect��63    6K   �� *VerticalOffset+$! DropDownScrollViewer�� �@��Top�� 5�      $ 
opaqueRect��64    6L   �� *HorizontalOffset+$! DropDownScrollViewer�� �@��Left5�      5�      �� 5�   
   " ��63   .R�5�      � $ templateRoot��6    .  5�      �� 5�      $��* �6'   �� 5�      #��� r�6'   $��0 �6z   .+�5�      � $ 
PART_Popup��6    . $��2��6F   $��1q�6�   $��Bottom=�6�   #��� .�6�   ��6Z   �� *IsDropDownOpen+$) TwoWay=� �� $ TemplatedParent=�.��5�        $ shadow��63   $ Transparent��6C   #��z  6�   ��6W   �� *ActualWidth+$! templateRoot��._�5�      �� $ dropDownBorder��6!   #��� ��69   #��� ��6   $��1q�6�   ._�5�      �� $	 DropDownScrollViewer��6+   .��5�   "   � $
 grid��6'   $" Enabled=�65   .+�5�   &   �� $# canvas��6-   $
��Left=�6=   $��0��6X   $	��Top=�6c   $��0��6{   .+�5�   *   �� $$ 
opaqueRect��64   ��6H   �� *
Background+$! dropDownBorder����6�   �� *ActualHeight+$! dropDownBorder����6�   �� *ActualWidth+$! dropDownBorder��5�   '   �� 5�   &   $% ItemsPresenter��65   $& 	Contained=�6M   # z 6�   5�   #   5�      5�      5�      5�      d� 5�      $' toggleButton��6   #��z��65   #��z��6_   #��z��6�   $��2��6�   8��  ( 6�   �� *IsDropDownOpen+$) TwoWay=� �� $ TemplatedParent=�6;  �� 5�      $/ contentPresenter��6#   #1 z0 6=   #��z2 6�   #��z3 6�   #��z��6�   #��z��6-  4 .  #��z��6�  # z 6�  #��z��6�  5�       5�      P� 5�      $, 
PART_Popup��63    �@�HasDropShadow . . �5�      �� $ shadow��6/    � ��$ 0,0,5,5q�6C   �� 5      $ shadow��6.    �@ Color$ 	#71000000��6B   5     P� 5      �@��HasItems .  . �5     �� $ dropDownBorder��6/    � ��$ 95��6K   5     ]� 5     - 5     �� 5     . �@��
IsGrouping . 6:   �� 5     ". �@%�IsVirtualizingWhenGrouping .  6\   ./�5
     ��  � �� .  6F   5     P� 5     $, DropDownScrollViewer��6C    � �� .  . �5     �� $ 
opaqueRect��63    6K   �� *VerticalOffset+$! DropDownScrollViewer�� �@��Top�� 5     $ 
opaqueRect��64    6L   �� *HorizontalOffset+$! DropDownScrollViewer�� �@��Left5     5     �� 5  
   " ��6'   .�5     ��  �@�FocusVisualStyle8   61   �� 5      � ��8  6+   �� 5      � ��8  6,   �� 5      � ��# � ��6+   �� 5      � ��$ 1q�60   �� 5      � ��$
 Auto=�6K   �� 5      � ��$
 Auto=�6I   �� 5      � ��$ 6,3,5,3q�6(   �� 5      � �� . 6>   �� 5      �@��PanningMode$
 Both=�69   �� 5      �@��IsFlicksEnabled .  67   �� 5      � ��8  6)   5 5     P� 5       �@��
IsEditable . . �5!     ��  � �� .  62   �� 5"      � ��$ 2q�60   �� 5#      � ��8  61   5$     5&     �� 5'  
   .�5(     ��  � �� 5)     �� 5*     .R�5+     �� $��2q�6$   $	 1 2R�6/   #��� ��6E    . $��1��6�   5,     5.     5/     �� 50  
   $ 	#FFDDDDDD��6;   �� 51  
   $ 	#FF707070��67   �� 52  
   $ 	#FFBEE6FD��6>   �� 53  
   $ 	#FF3C7FB1��6:   �� 54  
   $ 	#FFC4E5F6��6<   �� 55  
   $ 	#FF2C628B��68   �� 56  
   $ 	#FFF4F4F4��6=   �� 57  
   $ 	#FFADB2B5��69   �� 58  
   $ 	#FF838383��6=   �� 59  
   " ��6%   .�5:     ��  �@�FocusVisualStyle8   61   �� 5;      � ��8  6+   �� 5<      � ��8  6,   �� 5=      � ��# � ��6+   �� 5>      � ��$ 1q�60   �� 5?      � ��$ Center=�6;   �� 5@      � ��$ Center=�69   �� 5A      � ��$ 1q�6(   �� 5B      � �� 5C     �� 5D     " ��6&   .R�5E     �� $ border��6!   #��z��61   #��z��6[   #��z��6�    . ._�5F     �� $/ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5G      5H     P� 5I      �@��IsDefaulted . . �5J  "   �� $ border��6@   # � ��6T    � ��5K     P� 5L      �@J�IsMouseOver . . �5M  "   �� $ border��6?    � �� �#3F40456S   �� 5N  "   $ border��6@   8   � ��6T   5O     P� 5P      � �� . . �5Q  "   �� $ border��6?    � �� �#3F40456S   �� 5R  "   $ border��6@   8   � ��6T   5S     P� 5T      � {� .  . �5U  "   �� $ border��6?   8   � ��6S   �� 5V  "   $ border��6@   8   � ��6T   �� 5W  "   $ contentPresenter��6K   8   � ��6i   5X     5Z     5\     5]     5^     .��5`     � ��5a  
   �� 5b     $ #02111b��6   60    5d  
   �� 5e     $	��200 �6   �� 5f     $��* �6   6 � RowDefinitions6 5h  
   �� 5i     $��* �6   �� 5j     $��* �6   �� 5k     $��* �6   �� 5l     $��* �6   �� 5m     $��* �6   �� 5n     $��* �6   .+�5q  
   �� $��1q�6   ���#3f4045$��0��6;   6J   �� 5r  
   $��1q�6   ���#3f4045$��1��6;   6J   �� 5s  
   $��1q�6   ���#3f4045$��2��6;   6J   �� 5t  
   $��1q�6   ���#3f4045$��3��6;   6J   �� 5u  
   $��Center=�6   $��15(�6/   $��Courier New)�6=   ���#fcfcfc$��Hoмep��6k   $��0��6x   �� 5v  
   $��Center=�6   $��15(�6/   $��Courier New)�6=   ���#fcfcfc$��Дaтa��6k   $��1��6w   �� 5w  
   $��Center=�6   $��15(�6/   $��Courier New)�6=   ���#fcfcfc$��Комплект��6k   $��2��6{   �� 5x  
   $��Center=�6   $��15(�6/   $��Courier New)�6=   ���#fcfcfc$��Клиент��6k   $��3��6y   �� 5y  
   $��Center=�6   $��15(�6/   $��Courier New)�6=   ���#fcfcfc$��Статус��6k   $��4��6y   �� 5z  
   $��Courier New)�6   ���#fcfcfc���#30292f$��1��6   $	��300��6�   $
��Left=�6�   ��6U   �� *OrderNumber+$) TwoWay=�6�   &   Xceed.Wpf.Toolkit.DateTimePicker  5{  
   -   5        7  Name$7 DateAndTime��5{  b   $��Courier New)�6   ���#fcfcfc���#30292f$��1��6�   $��1��6�   $	��300��6�   $
��Left=�6�   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]8   Value8 6x   �� *DateAndTime+6�   �� 5|  
   -   5        9 ��Name$9 EquipmentComboBox��5|  �   #��� " 6   $��Courier New)�6<   ���#fcfcfc���#30292f$��1��6�   $��2��6�   : �� DisplayMemberPath$: ItemName��6�   $	��300��6�   $
��Left=�6  ; �� SelectedItem; 6   �� *Item.ItemName+��5}     �� 5~     " ��6   .�5     ��  � �� �#30292f63   �� 5�      � �� �#30292f64   5�     5�     �� 5�  
   -   5        $��ClientTextBox��5�  U   $��Courier New)�6   ���#fcfcfc���#30292f$��1��6j   $��3��6z   $	��300��6�   $
��Left=�6�   �� 5�  
   -   5        $9 Combo_Status��5�  �   #��� " 6   $��Courier New)�6<   ���#fcfcfc���#30292f$��1��6�   $��4��6�   $: 
StatusName��6�   $	��300��6�   $
��Left=�6  ; 6   �� *Status.StatusName+��5�     �� 5�     " ��6   .�5�     ��  � �� �#30292f63   �� 5�      � �� �#30292f64   5�     5�     �� 5�  
   -   5        $��BtnSave��5�  �   #��� - 6   $��Courier New)�68   ���#fcfcfc$��20(�6f   ���#5d737e$��Соxpанить��6�   $��2��6�   $��8��6�   6�   5�     5�     