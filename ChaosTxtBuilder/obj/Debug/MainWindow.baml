   M S B A M L   `   `   `  ����P  L混乱文本生成器, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ChaosTxtBuilderChaosTxtBuilder  5   	        ChaosTxtBuilder.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:ChaosTxtBuilder     5   	     � Title$$  混乱文本生成器 - v0.0.1��5   	   $	��460��6"   $	��820��6/   $y�Visible=�6<    � 
ResizeMode$ CanMinimize=�6Q    J� 	AllowDrop .  � WindowStyle$ ThreeDBorderWindow=�6{   $��14(�6�   .��5	      � .+�5
   
   �� -   5         ��Name$	 tb1��5      $��25,10,374,111q�5
       �� AcceptsReturn . " �� VerticalScrollBarVisibility$ Visible=�5      $��16(�64   $��这里输入文本��6B    �� TextWrapping$
 Wrap=�6P   �� 5   
   -   5        $	��tb2��5      $��470,10,24,111q�5       �� 
IsReadOnly . $
 Wrap=�5       . $ Visible=�5      $��16(�63   .��6A   5      �� 5   
   -   5        $��label1��5   9   $��25,339,454,32q�6   $��16(�6+   混乱等级: 5 / 105      �� 5   
   -   5        	 ��Name$	 slider1��5      
 �� IsSnapToTickEnabled
 . $��25,379,169,18q�6   $��Visible=�65    � Value$ 5Q�6j    � SmallChange$ 1Q�6t   5      �� 5   
   $��650,351,24,9q�6   .+�5      �� -   5        .��5   +   Go!5      �� 5       -   5        $��1q�5       $��0,11,0,0q�6!   .��6K   Copy5"      5#      5$      5%      