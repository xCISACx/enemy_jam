GDPC                                                                               <   res://.import/aaaa.png-cc86c30b3719a8d376037765c6cf3c25.stexp      �       a��+�P����G�@   res://.import/enemy.png-f7d9f81714867a24a08e299bb600e611.stex   �%      	      ���p"/��GY`��@   res://.import/enemy64.png-9e2b2e6ffa308662132346358e098f6f.stex �1      b      z�& y�_ #R���D   res://.import/enemyhappy.png-d241cc875605e7ee52683b567bee2613.stex  �5      R      ʙd�y۸<ь�#��<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex :      �      ���WcvM)���7YD   res://.import/paint_tools.png-224b64b7ddb26189a369199f6d686b79.stex  �      D      2q�WN���pa�(b\gL<   res://.import/test.png-2b0b935732229e5bd5e655f2644b2498.stex0�            �l�Tl�i3m
����Q    res://Enemies/aaaa.png.import   p	      �      �"�H�L�{5�d"Ȕ   res://Enemy.gd.remap��              � G>��A_WWng4��   res://Enemy.gdc        �      c��s0�_��`���   res://Enemy.tscn      �      �a�Ãz1�����n�I   res://PaintManager.gd.remap ��      '       �Id�����@欘[�*�   res://PaintManager.gdc  �      �      @�:v�������w*���   res://PaintManager.tscn P      �       K�^�r���pl�0�   res://Player.gd.remap   �      !       ��0�F �qq��dX��   res://Player.gdc       �      F���2���]EnS   res://Player.tscn   �#      �      U�L���9�(��o�   res://enemy.png.import  /      �      Ҫ^��&}L����4��   res://enemy64.png.import03      �      l5�7s��!�~mk/~Y0   res://enemyhappy.png.import @7      �      �o��O��..����   res://icon.png  ��      �      ��� �'�~����q   res://icon.png.import   �;      �      ���g�=@�?m`�6   res://paint_control.gd.remap@�      (       �������u�����   res://paint_control.gdc p>      �      ���R��JH6m�b|.   res://paint_root.tscn   PX      �'      Zn�M��?���a�   res://paint_tools.png.importp�      �      L^+�w��P�D�ª+1   res://project.binary��      	      ����ǌ�b*�����do   res://test.png.import   @�      �      y~W�9v�K{m�Y   res://tools_panel.gd.remap  p�      &       �vW� �oL%��   res://tools_panel.gdc   ��      �      ��Ha��o�ݸ���1            GDST@   @             �   WEBPRIFF�   WEBPVP8L�   /?�pܶ�$1�������7�m�ʞ�%�/IB�D	�@Bz�E `M���5��"�ח0<��$�5 ta�l]P^�v� 5����HFҌ�|�!�h�&�f��#8VL���)`� �\�P�����v�Cs2�h�ATМk��Tn�:_ht�:�$�'���T>��`$�ڛg�^���=؉V�i�腭`Տ   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/aaaa.png-cc86c30b3719a8d376037765c6cf3c25.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Enemies/aaaa.png"
dest_files=[ "res://.import/aaaa.png-cc86c30b3719a8d376037765c6cf3c25.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDSC         (   �      ������������τ�   ������϶   �������϶���   ��������   ������¶   ������򶶶   ��������������¶   ����Ӷ��   ������Ӷ   ����Ҷ��   �����϶�   ���������������Ŷ���   ����׶��   ���Ӷ���   ��������������������Ҷ��   ����������Ķ   ζ��   �������������Ӷ�   �涶   �����������Ѷ���   ����Ӷ��   
            `                                              "      #   	   (   
   )      *      +      ,      -      .      4      5      6      8      9      @      D      H      I      O      U      `      a      b      m      n       t   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   3YY;�  Y;�  �  T�  Y5;�  W�  Y;�  �  Y8P�  Q;�  YY;�	  �  YYYYYYY0�
  PQV�  �  �  -YY0�  P�  QV�  �  PQ�  �  PQ�  Y0�  PQV�  &�  PQV�  �  T�  �	  &�  (�	  �  �  �  �  �  P�  R�  T�  Q�  Y0�  PQV�  &�  T�  PQ�  PQV�  �  �  �  �  T�  �  T�  �  YYYY`          [gd_scene load_steps=4 format=2]

[ext_resource path="res://enemy64.png" type="Texture" id=1]
[ext_resource path="res://Enemy.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 17, 31.5 )

[node name="Enemy" type="KinematicBody2D"]
collision_layer = 2
collision_mask = 4
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 0, -32 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, -31.5 )
shape = SubResource( 1 )

[node name="RayCast2D" type="RayCast2D" parent="."]
position = Vector2( 35, -47 )
enabled = true
collision_mask = 4
           GDSC   8      Z   �     ���ӄ�   �������������������ض���   ��������   ���������������Ķ���   ������������Ҷ��   ����������Ӷ   ����������ƶ   �������Ӷ���   ������������ڶ��   �������������׶�   ����������׶   ����������������������Ӷ   ζ��   ϶��   �����϶�   �������Ŷ���   ����׶��   ����������϶   �����¶�   ����¶��   ����¶��   ���������������������Ҷ�   ������������������������ض��   �����������������Ķ�   ����϶��   �������Ӷ���   �������Ӷ���   ���¶���   ��������Ҷ��   ��������������ض   ���޶���   ���Ӷ���   ���Ӷ���   ����   ����Ӷ��   ����Ӷ��   �����ݶ�   ���ض���   ���򶶶�   �����Ķ�   ���������Ķ�   ������ض   ����Ķ��   �������������������Ķ���   ����   ����Ӷ��   ���ݶ���   ������Ӷ   �����������Ӷ���   ����������������Ӷ��   ����������Ŷ   ������¶   ��������   ������������������Ķ   ���Ӷ���    ���������������������������Ӷ���             res://Enemy.tscn      /root/Level/PaintRoot      =   /root/Level/PaintRoot/ViewportContainer/Viewport/PaintControl      #   /root/Level/PaintRoot/DrawingCamera       /root/Level/Camera2D          
   left_mouse        "         res://Enemies/        Couldn't load the image.      Sprite                           
                        &      /   	   8   
   A      F      I      L      M      N      O      P      Q      R      X      Z      [      b      c      d      h      l      n      o      v             �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   	  7   
  8     9     :     ;      <   &  =   ,  >   -  ?   6  @   =  A   C  B   S  C   T  D   Z  E   a  F   e  G   i  H   o  I   p  J   v  K   w  L   }  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   3YY;�  �  T�  Y;�  Y;�  Y5;�  ?P�  QY5;�  �  P�  QY5;�  �  P�  QY5;�	  �  P�  QY5;�
  �  P�  QY;�  �  Y;�  Y;�  YYYYYYY0�  PQV�  -�  Y0�  P�  QV�  �  �  &�  V�  �  PQ�  -YY0�  P�  QV�  &�  T�  P�  QV�  &�  �  V�  �  �  PQ�  �?  P�
  T�  PQQ�  �  PQ�  (V�  -YY0�  PQV�  ;�  �  T�  PQ�  �  PQT�  T�  P�  Q�  �  T�  �  �  �  ;�  �  �	  �>  P�  Q�  �  �?  P�  Q�  �  ;�  �   T�!  PQ�  ;�"  �#  T�!  PQ�  �  �"  T�$  PQY�  �  T�%  P�  R�   T�&  Q�  �  ;�'  �  T�(  P�  T�)  PQQ�  �  ;�*  �"  T�+  P�'  Q�  &�*  �,  V�  �E  P�
  Q�  �  �  T�-  PQ�  �"  T�.  PQ�  �  ;�/  �0  T�!  PQ�  �/  T�1  P�"  Q�  �  T�/  �"  �  �  T�  P�  QT�/  �/  T�1  P�"  Q�  Y0�  PQV�  �  T�2  P�  Q�  �  �  �  �  �  �	  T�3  �  �  �  �  T�4  PQ�  Y0�5  PQV�  �  T�2  PQ�  �  �
  T�3  �  �  �  �  �  T�6  PQ�  YYYYY0�7  PQV�  �5  PQ�  �  PQY`        [gd_scene load_steps=2 format=2]

[ext_resource path="res://PaintManager.gd" type="Script" id=1]

[node name="PaintManager" type="Node2D"]
pause_mode = 2
process_priority = 10
script = ExtResource( 1 )
      GDSC         *   �      ������������τ�   ����������������   ��������򶶶   ������������   ���������Ҷ�   ������϶   �������϶���   ��������   ����������Ķ   ��������   �����϶�   ���������������Ŷ���   ����׶��   ������¶   ����¶��   ������������������޶   ζ��   ϶��   �������������Ӷ�   ���Ӷ���   �����������������������ƶ���         X       �>        �         ui_right      ui_left                           	                        (      )   	   0   
   7      8      9      ?      A      B      I      Z      [      c      d      e      f      g      h      i      j      k      l      m      w      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   3YY8;�  Y8;�  �  Y8;�  �  Y8P�  Q;�  �  Y8P�  Q;�  �  YY;�  �  T�  Y;�  �  T�	  YYY0�
  PQV�  -�  Y0�  P�  QV�  ;�  �  T�  P�  Q�  T�  P�  Q�  �  &P�  �  QV�  �  �  �  �  �  �  �  �  �  �  �  T�  �  �  �  �  �  T�  �5  P�  T�  R�  R�  Q�  �  T�  �  �  �  �  �  P�  Q�  (V�  �  �  �  T�#  P�  T�  R�  �  Q�  �  �  PQ�  Y0�  PQV�  �  �  P�  R�  QY`       [gd_scene load_steps=4 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://Player.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 31, 31 )

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Camera2D" type="Camera2D" parent="."]
   GDST�  �           �  WEBPRIFF�  WEBPVP8L�  /�ó��M�$ٶ%<Z�Hh
M�q/�&̦$�^�]`ދ�y'�A�D��D�c^#��@��������=�=��`Q.�*�j@0�Ѡ$�&�Zf� |�
s�Tv�����/�`��ɢ9�%��9�)�3�J�1�4oL7-��R2fڴ���i0ʙR�.��M��S�)�.���)@^ `N�%�M�.k�0g�nRh�[ ��`�UX2�0'd�`	Ύ�u���bގ.M��`іL�Y�cJ�e[�Y��� �Ȩ�.SM���Mg���<5���"�ʒ)�.[��U�M�@f$xsF I�,���!A�̍Ʋ9���"8;�@�e�dަ`ǵ��, n+ـ�nG�jvTFreل�U.+2-�Ht �"�E+bG�IV��,�- ���`�k���Ū)��Y.kH�F�%� ,+�M��k��  �[ �U!�w�_�k��ᯙ#�.]�\;^���D4,�B؉&$!є��%"ZR6$n��r�k�ջK��㍉$jw^�!,mJ����4���47��:��e�EMZބ*��`	6�rK(�/X6	�K�������ɲ�h��eq0�Vo�F�3��e�
^?"j�Tk7u�!�����?$$�:�DD�A�XV/��Gi2�6��M&���D�gB0$�f�Y��ր|�X4��wɄD�h���gv�`�a���.\�- �sD���O5QP�]Ы0G��� y�Q�z��<!�U��,,D 	Y9" ���H��+ ��S M�R��T\��d�.x��Q@Ԅ�Z���U!�1 8*B����V:��`3\D�A�q�N���˚&x��*���"DkHHZ- יŲ9�A+�낳�	��
^��ܙ"kH��L�t���96X6�+� �S��(gM.�:�t���J� 6�j�c�%s�J@8@b�5M������"kH��,ծs�%��k�Z ���βB�@�j
�U�)E�p��^D��)?h{��5 ~#=��t ��%��+�r�u����xUc�g� n#�U��E �D.u��B>B��k"�Yzy6�L��]��*���Yԋ@/H*]���Ʋ���K���)���6�p� �A*�#��żB��@ޚ,Б��ʴ#a���PzD�m5�-xX��/*���q��7 �2g1��|��Tx�`�`Q���%}����T}�W�� �U$\�,�&��ԡ���t��i,�S4) �����t)�ރTJo��W���dA���Ee�t� �4�ͩ�A��t�h3�-� ��U ��y=֣ j �'&��\;��,�'S�:�j-!h���1��5	�Y�*��o�3.-ʓy,�p�L浨�]>0X�$o�;��:��������YcI��17����ڈ�
˚�l�gĠE�+;80ժ[��`N��u�ѷ���.E���
��con�g���k�&�\:�w��ϊVe�H��N@R亩�1�:6dE܃L��  %��OC�lq�Nu��DE�r �:�إ�"��f�C�y�"�fA�ˬ"�*�Ĉ�CA�vjZ �NQ���*�l t(�П�: /4 k7p	H��
���P�x�+5 ���]���7�D �*�̀���uS��jL ~�Ղ�`�W��� ���p)P��B�OE�y귍`�P$��~��s@��5�X�[�|�����3�7g�D=���2���[�0o~��ޠ1�i��S�\�˺m���������-�f����0A5�+�`���5���T܇���_ ܡ�A9  �Ǒ�?b�bJ��m��A���T�tr�y�@Ϊa �Ӵӕ��	�m̛������&Z�<<5l�D�G؃�}o�??����g�S���!٦dS�������w�>���w����H���-z�V~��y�9�=�w��7 �}�K����k��A4�߽�}�щ�5��]��D�"!�Z9�i�'�u��xQMq	�5�q�)G�~"���Q=���3��ߠ�(���@�c�L6խH&y�H���Hy�(�7����sm^�H�א�:`� �A�Z���y �� �/���T �%Θ~��A����,��T�����+ ��9�s&�� ��2�0w(~��!Z H�	\����;Հx*|^�8p�Րϝ��W-�y���K��PΘ)�I�K4�dS����&x�.k��)�˲=@�g��t Ξ
$2�,������������{=             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/enemy.png-f7d9f81714867a24a08e299bb600e611.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://enemy.png"
dest_files=[ "res://.import/enemy.png-f7d9f81714867a24a08e299bb600e611.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST@   @             F  WEBPRIFF:  WEBPVP8L-  /?�`ܶ�$����8��H�$9��l��ܧj c ��ppT8���@��5h�	�b�� �@��H0�6�a��#��<W ��h��=�,����$�����Hrh��϶B ���2F8��(�$�� 9���\�w��4O��z"`��5�^�6_�:L0g
>P�5�'�Q�Dŕs��M�\W���U+@5
��nt	 ���d�P�P�<��`�QӸ�����quuq�\��wW�^Ih���H� �ξ6�����C�B�FI��               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/enemy64.png-9e2b2e6ffa308662132346358e098f6f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://enemy64.png"
dest_files=[ "res://.import/enemy64.png-9e2b2e6ffa308662132346358e098f6f.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDST@   @            6  WEBPRIFF*  WEBPVP8L  /?���&��X�}��f88d8X�(�$�t��se��8`�"Ij�M�Od �>kd"�.���|ko�d^���w�k���$G�IUS����fAo���!���~/b1VK��%�J(IO�� Xwk��P�	h-�f��Wj�N�S �)��L�%)G$gp�@�\���p$I�$]�aaw�C��fo��d���n4�/��!�\��9���Ds/XɛVlG{�M��ۻ�RJy� Ժם���)gS���RN9�zrR&�&�K9���R�?�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/enemyhappy.png-d241cc875605e7ee52683b567bee2613.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://enemyhappy.png"
dest_files=[ "res://.import/enemyhappy.png-d241cc875605e7ee52683b567bee2613.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDST@   @             �  WEBPRIFF�  WEBPVP8L�  /?���(�$)�'���/���$I9�
�?�j�5�6�y��-��p"߰�l��IO�e��|"������8��e��n�|>a��
R W�Q@-۴����ExD��R��� �k	"�N��1�9�R�Z��w9 ��	`ɶ�&�!�z�ܤm����j�oD��m��N�$���a�0/���^U� ��r�� ��
h���7�-P����f N~4��@���5:�X�:C���awzd&�&x �D������Ojw��n��]O'Aڽ�	����g�~������#<�n����˛��t�ե�	��b�a�i����G���8����1�3�?�_hnW����@ۏ�}������S�b�jK�a���|>H�m[remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDSC   Z      �   m     ������ڶ   ���������������   ��������󶶶   ����������   ��������¶��   ���������¶�   ���������Ŷ�   ��������   �����䶶   �����������󶶶�   ���������������   ����������Ŷ   ��������󶶶   ������   ������Ӷ   ��������������¶   �����������������������׶���   �������������Ŷ�   ��������������������Ŷ��   �������¶���   ��������������������۶��   ���������Ӷ�   ���������Ӷ�   ����������Ķ   ����ݶ��   ����������Ӷ   ����������Ҷ   �����������������Ӷ�   ����������������������޶   ����������Ѷ   ����������Ӷ   �������Ķ���   ����Ӷ��   �����϶�   �������Ӷ���   ������¶   �����������Ķ���   �������Ŷ���   �����׶�   ��������Ŷ��   ������������������������ض��   ζ��   ��������������ض   ϶��   ����¶��   ����������������������Ҷ   �����������    ������������������������������Ŷ   ����������ٶ   ���Ӷ���   ��������޶��   ����������Ӷ   �����Ӷ�   �����������������Ӷ�   ���������۶�   �������ݶ���   �����Ӷ�   ���Ӷ���   ��������޶��   ���������Ӷ�   ��������Ŷ��   �����Ŷ�   �����Ŷ�   �����������������������   ���������Ŷ�   ������������������������Ŷ��   �����Ҷ�   ��������   ����޶��   ���¶���   ��������¶��   ����������Ӷ   �����������Ӷ���   ���޶���   �����������Ķ���   ��Ѷ   ����������Ӷ   �������׶���   ����Ӷ��   ����������������   ������������Ӷ��   �������¶���   �����϶�   �����Ӷ�   �������Ѷ���   �����������Ӷ���   ����������������������Ӷ   ����������ڶ   ���������������������Ӷ�   ��������������������������޶               �                          ../../../SaveFileDialog       TLPos         saved_image       _on_PaintControl_saved_image                   frame_post_draw    @         user://images/        "         "user://images/                          
                           	      
   %      &      *      -      0      3      6      8      9      =      @      C      E      F      G      J      K      L      R      S      T      U       Z   !   a   "   f   #   g   $   h   %   i   &   j   '   o   (   u   )   v   *   w   +   ~   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =   �   >   �   ?   �   @   �   A   �   B   �   C   �   D   �   E   �   F   �   G   �   H   �   I      J     K     L     M     N     O     P     Q     R     S     T   #  U   .  V   /  W   =  X   >  Y   ?  Z   E  [   I  \   Q  ]   R  ^   Y  _   Z  `   ]  a   ^  b   b  c   c  d   d  e   h  f   i  g   j  h   k  i   q  j   r  k   x  l   y  m   z  n   {  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �      �     �     �     �     �     �     �     �     �     �     �     �   !  �   '  �   -  �   3  �   9  �   :  �   ;  �   <  �   D  �   K  �   R  �   S  �   T  �   ^  �   f  �   n  �   q  �   y  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �     �     �     �     �     �   %  �   *  �   +  �   ,  �   -  �   7  �   [  �   d  �   e  �   f  �   p  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �   $  �   %  �   ,  �   <  �   J  �   R  �   W  �   X  �   ^  �   a  �   b  �   h  �   k  �   3YYY:�  YY:�  �  YY:�  �  P�  R�  QYY5;�  �  PQYY>�  N�  �  R�  �  R�  �	  R�  �
  RYOYY>�  N�  �  R�  �  RYOYYY;�  YYY;�  LMYYYY;�  �  Y;�  �  PQY;�  �  YYYYY;�  �  Y;�  �  YYY;�  �  T�  Y;�  �  Y;�  �  T�  Y;�  �  T�  SYY;�  �  Y;�  �  Y;�  YY5;�  W�  YYB�  YYYY;�  �  T�   YY0�!  PQV�  �  �  �"  P�  Q�  �#  P�  R�$  R�	  Q�  �  �  YYY0�%  P�&  QV�  ;�'  �(  PQY�  �  �  �  �  &�'  T�)  �  T�*  T�)  V�  &�'  T�+  �  T�*  T�+  V�  �  �
  Y�  &�,  T�-  P�.  QV�  �  �  �  &�  �  V�  �  �'  Y�  �  &�/  PQV�  &�'  T�0  P�  Q�  V�  �  &�  �  T�  �  �  T�  V�  �  �  &�  �  V�  �  �
  �  �  �  T�1  PQ�  �  �2  P�'  R�  QY�  (V�  �  �  �  Y�  �  �  �'  �  YYY0�/  PQV�  �  &�  �  V�  �  �  �  &�  T�)  �  T�*  T�)  V�  &�  T�+  �  T�*  T�+  V�  �  &�  V�  .�
  �  .�  YYY0�3  PQV�  �  &�  �  V�  .Y�  �  &�  �  V�  &�  T�1  PQ�  V�  �  T�4  P�  T�1  PQ�  QY�  �  �  �  �  �  Y�  �  (V�  �  ;�5  �  T�1  PQ�  �  �  �  )�6  �K  P�  R�5  QV�  �  T�7  PQY�  �  �  �  Y�  �  �8  PQYYY0�2  P�'  R�9  QV�  �  ;�:  NOY�  �  �  �:  T�;  �9  �  �:  T�<  �'  �  �:  T�  �  �  �:  T�  �  �  �:  T�  �  Y�  �  �  &�9  �  T�
  V�  ;�=  �  PQ�  ;�>  �  PQY�  �  &�'  T�)  	�  T�)  V�  �=  T�)  �'  T�)  �  �>  T�)  �  T�)  �  (V�  �=  T�)  �  T�)  �  �>  T�)  �'  T�)  Y�  �  &�'  T�+  	�  T�+  V�  �=  T�+  �'  T�+  �  �>  T�+  �  T�+  �  (V�  �=  T�+  �  T�+  �  �>  T�+  �'  T�+  Y�  �  �:  T�<  �=  �  �:  T�?  �>  Y�  �  &�9  �  T�	  V�  �  ;�@  �  PP�'  T�)  �  T�)  QRP�'  T�+  �  T�+  QQ�  �  �  �:  T�<  �@  �  �:  T�A  �@  T�0  P�  P�@  T�)  R�'  T�+  QQY�  �  �  T�B  P�:  Q�  �8  PQYYY0�C  PQV�  �  )�D  �  V�  /�D  T�;  V�  �  T�  V�  �  �  �  &�D  T�  �  T�  V�  ;�E  �  P�D  T�<  �  P�D  T�  R�D  T�  QR�  P�D  T�  R�D  T�  QQ�  �F  P�E  R�D  T�  Q�  �  �  '�D  T�  �  T�  V�  �G  P�D  T�<  R�D  T�  R�D  T�  Q�  �  T�  V�  �  Y�  �  �  &�D  T�  �  T�  V�  ;�E  �  P�D  T�<  �  P�D  T�  R�D  T�  QR�  P�D  T�  R�D  T�  QQ�  �F  P�E  R�  Q�  '�D  T�  �  T�  V�  �G  P�D  T�<  R�D  T�  R�  QYYY0�H  P�I  QV�  �  AP�J  R�  QY�  �  ;�K  �  T�L  PQT�M  PQ�  �K  T�9  P�N  T�O  Q�  �  ;�P  �K  T�Q  P�  P�  T�*  R�  QQ�  �  �P  T�R  PQ�  �P  T�S  P�  R�  Q�  �  �P  T�T  P�I  Q�  �P  T�T  P�  �  P�  T�U  Q�  Q�  �?  P�  �  P�  T�U  Q�  Q�  �$  T�V  �  T�U  �  �W  P�  Q�  Y0�X  PQV�  .�  �  Y0�Y  PQV�  .�  Y`           [gd_scene load_steps=11 format=2]

[ext_resource path="res://paint_control.gd" type="Script" id=1]
[ext_resource path="res://tools_panel.gd" type="Script" id=2]
[ext_resource path="res://paint_tools.png" type="Texture" id=3]
[ext_resource path="res://icon.png" type="Texture" id=5]
[ext_resource path="res://Enemy.tscn" type="PackedScene" id=6]

[sub_resource type="Shader" id=2]

[sub_resource type="ShaderMaterial" id=3]
shader = SubResource( 2 )

[sub_resource type="StyleBoxFlat" id=1]
bg_color = Color( 1, 1, 1, 1 )

[sub_resource type="ConvexPolygonShape2D" id=5]
points = PoolVector2Array( 64, 64, 0, 64, 0, 0, 64, 0 )

[sub_resource type="TileSet" id=4]
0/name = "icon.png 0"
0/texture = ExtResource( 5 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 64, 64 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 5 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 5 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0

[node name="Level" type="Node2D"]
pause_mode = 1

[node name="PaintRoot" type="Popup" parent="."]
pause_mode = 2
margin_right = 40.0
margin_bottom = 40.0
popup_exclusive = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="DrawingAreaBG" type="Panel" parent="PaintRoot"]
material = SubResource( 3 )
margin_left = 350.0
margin_right = 1070.0
margin_bottom = 720.0
custom_styles/panel = SubResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ViewportContainer" type="ViewportContainer" parent="PaintRoot"]
margin_left = 349.0
margin_top = 2.0
margin_right = 1069.0
margin_bottom = 722.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Viewport" type="Viewport" parent="PaintRoot/ViewportContainer"]
size = Vector2( 720, 720 )
own_world = true
transparent_bg = true
handle_input_locally = false
usage = 0
render_target_update_mode = 0

[node name="PaintControl" type="Control" parent="PaintRoot/ViewportContainer/Viewport"]
margin_right = 40.0
margin_bottom = 40.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="TLPos" type="Position2D" parent="PaintRoot/ViewportContainer/Viewport/PaintControl"]

[node name="ToolsPanel" type="Panel" parent="PaintRoot"]
margin_right = 334.0
margin_bottom = 703.0
rect_scale = Vector2( 1.03456, 1.01548 )
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="LabelTools" type="Label" parent="PaintRoot/ToolsPanel"]
margin_left = 20.0
margin_top = 10.0
margin_right = 330.0
margin_bottom = 24.0
text = "Selected tool: Pencil"
align = 1

[node name="ButtonToolPencil" type="Button" parent="PaintRoot/ToolsPanel"]
margin_left = 40.0
margin_top = 40.0
margin_right = 100.0
margin_bottom = 100.0

[node name="Sprite" type="Sprite" parent="PaintRoot/ToolsPanel/ButtonToolPencil"]
position = Vector2( 30, 30 )
scale = Vector2( 2.5, 2.5 )
texture = ExtResource( 3 )
region_enabled = true
region_rect = Rect2( 0, 0, 16, 16 )

[node name="ButtonToolEraser" type="Button" parent="PaintRoot/ToolsPanel"]
margin_left = 110.0
margin_top = 40.0
margin_right = 170.0
margin_bottom = 100.0

[node name="Sprite" type="Sprite" parent="PaintRoot/ToolsPanel/ButtonToolEraser"]
position = Vector2( 30, 30 )
scale = Vector2( 2.5, 2.5 )
texture = ExtResource( 3 )
region_enabled = true
region_rect = Rect2( 16, 0, 16, 16 )

[node name="ButtonToolRectangle" type="Button" parent="PaintRoot/ToolsPanel"]
visible = false
margin_left = 180.0
margin_top = 40.0
margin_right = 240.0
margin_bottom = 100.0

[node name="Sprite" type="Sprite" parent="PaintRoot/ToolsPanel/ButtonToolRectangle"]
position = Vector2( 30, 30 )
scale = Vector2( 2.5, 2.5 )
texture = ExtResource( 3 )
region_enabled = true
region_rect = Rect2( 0, 16, 16, 16 )

[node name="ButtonToolCircle" type="Button" parent="PaintRoot/ToolsPanel"]
visible = false
margin_left = 250.0
margin_top = 40.0
margin_right = 310.0
margin_bottom = 100.0

[node name="Sprite" type="Sprite" parent="PaintRoot/ToolsPanel/ButtonToolCircle"]
position = Vector2( 30, 30 )
scale = Vector2( 2.5, 2.5 )
texture = ExtResource( 3 )
region_enabled = true
region_rect = Rect2( 16, 16, 16, 16 )

[node name="LabelBrushColor" type="Label" parent="PaintRoot/ToolsPanel"]
margin_left = 20.0
margin_top = 120.0
margin_right = 330.0
margin_bottom = 134.0
text = "Current color"
align = 1

[node name="ColorPickerBrush" type="ColorPickerButton" parent="PaintRoot/ToolsPanel"]
margin_left = 20.0
margin_top = 140.0
margin_right = 330.0
margin_bottom = 190.0

[node name="BrushSettings" type="Control" parent="PaintRoot/ToolsPanel"]
margin_top = 200.0
margin_right = 350.0
margin_bottom = 375.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="LabelBrushSize" type="Label" parent="PaintRoot/ToolsPanel/BrushSettings"]
margin_left = 20.0
margin_top = 10.0
margin_right = 330.0
margin_bottom = 24.0
text = "Brush size: 32px"
align = 1

[node name="HScrollBarBrushSize" type="HScrollBar" parent="PaintRoot/ToolsPanel/BrushSettings"]
margin_left = 20.0
margin_top = 30.0
margin_right = 330.0
margin_bottom = 60.0
min_value = 2.0
step = 1.0
value = 32.0

[node name="LabelBrushShape" type="Label" parent="PaintRoot/ToolsPanel/BrushSettings"]
margin_left = 20.0
margin_top = 80.0
margin_right = 330.0
margin_bottom = 94.0
text = "Brush shape: Circle"
align = 1

[node name="ButtonShapeBox" type="Button" parent="PaintRoot/ToolsPanel/BrushSettings"]
margin_left = 100.0
margin_top = 100.0
margin_right = 160.0
margin_bottom = 160.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite" type="Sprite" parent="PaintRoot/ToolsPanel/BrushSettings/ButtonShapeBox"]
position = Vector2( 30, 30 )
scale = Vector2( 2.5, 2.5 )
texture = ExtResource( 3 )
region_enabled = true
region_rect = Rect2( 0, 16, 16, 16 )

[node name="ButtonShapeCircle" type="Button" parent="PaintRoot/ToolsPanel/BrushSettings"]
margin_left = 190.0
margin_top = 100.0
margin_right = 250.0
margin_bottom = 160.0

[node name="Sprite" type="Sprite" parent="PaintRoot/ToolsPanel/BrushSettings/ButtonShapeCircle"]
position = Vector2( 30, 30 )
scale = Vector2( 2.5, 2.5 )
texture = ExtResource( 3 )
region_enabled = true
region_rect = Rect2( 16, 16, 16, 16 )

[node name="LabelBackgroundColor" type="Label" parent="PaintRoot/ToolsPanel"]
margin_left = 20.0
margin_top = 400.0
margin_right = 330.0
margin_bottom = 414.0
text = "Background color"
align = 1

[node name="ColorPickerBackground" type="ColorPickerButton" parent="PaintRoot/ToolsPanel"]
margin_left = 20.0
margin_top = 420.0
margin_right = 330.0
margin_bottom = 470.0
color = Color( 1, 1, 1, 1 )
edit_alpha = false

[node name="LabelStats" type="Label" parent="PaintRoot/ToolsPanel"]
modulate = Color( 0.414062, 0.414062, 0.414062, 1 )
margin_left = 20.0
margin_top = 590.0
margin_right = 330.0
margin_bottom = 604.0
text = "Brush objects: 00000"
align = 1

[node name="ButtonUndo" type="Button" parent="PaintRoot/ToolsPanel"]
margin_left = 10.0
margin_top = 520.0
margin_right = 340.0
margin_bottom = 560.0
text = "Undo last stroke"

[node name="ButtonSave" type="Button" parent="PaintRoot/ToolsPanel"]
margin_left = 10.0
margin_top = 620.0
margin_right = 340.0
margin_bottom = 660.0
text = "Save picture"

[node name="ButtonClear" type="Button" parent="PaintRoot/ToolsPanel"]
margin_left = 10.0
margin_top = 670.0
margin_right = 340.0
margin_bottom = 710.0
text = "Clear picture"

[node name="SaveFileDialog" type="FileDialog" parent="PaintRoot"]
margin_right = 600.0
margin_bottom = 400.0
resizable = true
access = 1
filters = PoolStringArray( "*.png" )
current_dir = "user://C:/Program Files (x86)/Steam/steamapps/common/Godot Engine/demos/2d/gd_paint"
current_path = "user://C:/Program Files (x86)/Steam/steamapps/common/Godot Engine/demos/2d/gd_paint/"

[node name="DrawingCamera" type="Camera2D" parent="PaintRoot"]
anchor_mode = 0

[node name="TileMap" type="TileMap" parent="."]
tile_set = SubResource( 4 )
collision_layer = 4
collision_mask = 0
format = 1
tile_data = PoolIntArray( 851968, 0, 0, 851969, 0, 0, 851970, 0, 0, 851971, 0, 0, 851972, 0, 0, 851973, 0, 0, 851974, 0, 0, 851975, 0, 0, 851976, 0, 0, 851977, 0, 0, 851978, 0, 0, 851979, 0, 0, 851980, 0, 0, 851984, 0, 0, 851985, 0, 0, 851986, 0, 0, 851987, 0, 0, 851988, 0, 0, 851989, 0, 0, 851990, 0, 0, 851991, 0, 0, 851992, 0, 0, 851993, 0, 0, 851994, 0, 0, 917504, 0, 0, 917505, 0, 0, 917506, 0, 0, 917507, 0, 0, 917508, 0, 0, 917509, 0, 0, 917510, 0, 0, 917511, 0, 0, 917512, 0, 0, 917513, 0, 0, 917514, 0, 0, 917515, 0, 0, 917516, 0, 0, 917520, 0, 0, 917521, 0, 0, 917522, 0, 0, 917523, 0, 0, 917524, 0, 0, 917525, 0, 0, 917526, 0, 0, 917527, 0, 0, 917528, 0, 0, 917529, 0, 0, 917530, 0, 0, 983040, 0, 0, 983041, 0, 0, 983042, 0, 0, 983043, 0, 0, 983044, 0, 0, 983045, 0, 0, 983046, 0, 0, 983047, 0, 0, 983048, 0, 0, 983049, 0, 0, 983050, 0, 0, 983051, 0, 0, 983052, 0, 0, 983056, 0, 0, 983057, 0, 0, 983058, 0, 0, 983059, 0, 0, 983060, 0, 0, 983061, 0, 0, 983062, 0, 0, 983063, 0, 0, 983064, 0, 0, 983065, 0, 0, 983066, 0, 0, 1048576, 0, 0, 1048577, 0, 0, 1048578, 0, 0, 1048579, 0, 0, 1048580, 0, 0, 1048581, 0, 0, 1048582, 0, 0, 1048583, 0, 0, 1048584, 0, 0, 1048585, 0, 0, 1048586, 0, 0, 1048587, 0, 0, 1048588, 0, 0, 1048592, 0, 0, 1048593, 0, 0, 1048594, 0, 0, 1048595, 0, 0, 1048596, 0, 0, 1048597, 0, 0, 1048598, 0, 0, 1048599, 0, 0, 1048600, 0, 0, 1048601, 0, 0, 1048602, 0, 0, 1114112, 0, 0, 1114113, 0, 0, 1114114, 0, 0, 1114115, 0, 0, 1114116, 0, 0, 1114117, 0, 0, 1114118, 0, 0, 1114119, 0, 0, 1114120, 0, 0, 1114121, 0, 0, 1114122, 0, 0, 1114123, 0, 0, 1114124, 0, 0, 1114125, 0, 0, 1114126, 0, 0, 1114127, 0, 0, 1114128, 0, 0, 1114129, 0, 0, 1114130, 0, 0, 1114131, 0, 0, 1114132, 0, 0, 1114133, 0, 0, 1114134, 0, 0, 1114135, 0, 0, 1114136, 0, 0, 1114137, 0, 0, 1114138, 0, 0 )

[node name="Enemy2" parent="TileMap" instance=ExtResource( 6 )]
position = Vector2( 460, 665 )

[node name="Camera2D" type="Camera2D" parent="."]
anchor_mode = 0
current = true
zoom = Vector2( 1.5, 1.5 )
        GDST                 (  WEBPRIFF  WEBPVP8L  /�o�����\��_
Ol �65�?Ɖn�m���?�!�ۼ���- �?t-��|����%�W��@Wȡ�H�G�c�JRkZ�`��g��a����"���m#E]���3��q$�l��"��j�sP ǭJ#d�\y1��}�� 8�jH�3v�'B^�Hwm�����| ?��E�qV��a�>����!k���H�l"�����T���j������tb�>������Z!��O��֤����R��#�{�ܗM�S����8CQ             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/paint_tools.png-224b64b7ddb26189a369199f6d686b79.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://paint_tools.png"
dest_files=[ "res://.import/paint_tools.png-224b64b7ddb26189a369199f6d686b79.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST@   @             �  WEBPRIFF�  WEBPVP8L�  /?���6�$������U���"�Զ�F�Y�C��)C0
��P0���! ��	`O���f���nT���~IE����C�4i���%�\�k=!�j���	>�� �L0u<r���"�$@��$0��Ԥ"�\b��XZ�.�n�@�!X���Dw�H�qG��@	��Te{�
$	1�q�ъ�.����\�d6��U�	I )�@G��L� y�$y�!FI �JD�Qj�����c $+���N���C�|5�Y[K�$y��
�|�7Ɉ cI�L���X���t �15�K�1�IW,$ƒ߸	�0!�sY[�Z��@�0f	�	��4R�@7Q��	@p��v����	GIt��E,D	6� I�$��� �$9�܀5@��C� ���H4%����hz���ћL<t٣0T�M�ˌ%q�%�\��&���'G����  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/test.png-2b0b935732229e5bd5e655f2644b2498.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://test.png"
dest_files=[ "res://.import/test.png-2b0b935732229e5bd5e655f2644b2498.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDSC   ?   &   q   �     ����ڶ��   �������������Ŷ�   ������������Ŷ��   ���������������Ӷ���   �������Ӷ���   ����������������Ӷ��   ����������Ŷ   ���������Ŷ�   ����������Ŷ   ���������Ŷ�   ������¶   ���������¶�   ����������Ѷ   ������������ڶ��   �����϶�   ���������ٶ�   ������¶   ���������Ӷ�   ����������Ķ   ���������������ڶ���   ���������������Ķ���   ������������������Ӷ   ���������������Ӷ���   �������������ζ�   ����������������Ӷ��   ���������������޶���   ��������������������Ҷ��   ������������������Ӷ   ������������������Ŷ   ���������������Ŷ���   �����׶�   ���¶���   ��������������¶   ���Ӷ���   �������������Ҷ�   ����������Ӷ   ��������Ӷ��   ���������Ӷ�   ���������Ӷ�   ���������Ŷ�   ��������   �������Ӷ���   �����䶶   ���������������   �����������󶶶�   ����������Ӷ   ����������Ŷ   ��������󶶶   ������   �����Ӷ�   �������������Ҷ�   ����������Ӷ   ������������������Ҷ   ����Ķ��   ����������Ķ   �����������������������Ҷ���   �������Ķ���   �����������������Ҷ�   ����Ӷ��   ���������Ӷ�   �����������������Ҷ�   ���޶���   �����������Ӷ���     �           LabelBrushSize       �           LabelBrushShape       ../SaveFileDialog      *   ../ViewportContainer/Viewport/PaintControl        pressed       button_pressed        undo_stroke       save_picture      clear_picture         mode_pencil       mode_eraser       mode_rectangle        mode_circle       shape_rectangle       shape_circle      color_changed         brush_color_changed       background_color_changed      value_changed         brush_size_changed        file_selected         save_file_selected              Brush objects:                  Pencil        Eraser        ?      Rectangle shape       Circle shape   	   Rectangle         Circle        Selected tool:        Brush shape:          DrawingAreaBG         Brush size:       px                     
                   '      .      /   	   ;   
   B      I      J      P      Q      R      b      r      �      �      �      �      �      �      �      �      �      �      �      �                   !     "     #     $     %   $  &   %  '   &  (   -  )   .  *   ?  +   @  ,   A  -   H  .   I  /   N  0   S  1   T  2   Z  3   d  4   s  5   w  6   }  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H     I     J     K     L     M     N      O   &  P   ,  Q   2  R   8  S   9  T   :  U   @  V   H  W   N  X   V  Y   W  Z   X  [   _  \   `  ]   f  ^   g  _   h  `   o  a   p  b   }  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   3YY5;�  W�  Y5;�  �  T�  PQY5;�  �  T�  P�  QY5;�  W�  Y5;�  W�	  YY5;�
  �  PQT�  PQY5;�  W�  Y5;�  W�  YY0�  PQV�  �  �  W�  T�  P�  RR�  RL�  MQ�  W�  T�  P�  RR�  RL�  MQ�  W�  T�  P�  RR�  RL�  MQY�  �  W�  T�  P�  RR�  RL�	  MQ�  W�  T�  P�  RR�  RL�
  MQ�  W�  T�  P�  RR�  RL�  MQ�  W�  T�  P�  RR�  RL�  MQ�  W�  �  T�  P�  RR�  RL�  MQ�  W�  �  T�  P�  RR�  RL�  MQY�  �  W�  T�  P�  RR�  Q�  W�  T�  P�  RR�  Q�  W�  �  T�  P�  RR�  QY�  �  �  T�  P�  RR�  QY�  �  �  P�  QYYY0�  P�  QV�  �  �  T�  �  �  P�  T�   T�!  PQQYYY0�"  P�#  QV�  �  ;�$  �  �  ;�%  �  Y�  &�#  �	  V�  �  T�&  �  T�'  T�(  �  �  T�)  �  P�  R�  R�  R�  Q�  �$  �  �  '�#  �
  V�  �  T�&  �  T�'  T�*  �  �  T�)  �  P�  R�  R�  R�  Q�  �$  �  �  '�#  �  V�  �  T�&  �  T�'  T�+  �  �  T�)  �  P�  R�  R�  R�  Q�  �$  �  �  '�#  �  V�  �  T�&  �  T�'  T�,  �  �  T�)  �  P�  R�  R�  R�  Q�  �$  �  Y�  �  '�#  �  V�  �  T�-  �  T�.  T�/  �  �%  �  �  '�#  �  V�  �  T�-  �  T�.  T�0  �  �%  �   SY�  �  '�#  �  V�  �  T�   LM�  �  T�1  PQ�  '�#  �  V�  �  T�2  PQ�  '�#  �  V�  �  T�3  PQY�  �  &�$  �  V�  �  T�  �!  �$  �  &�%  �  V�  �  T�  �"  �%  YYY0�4  P�5  QV�  �  �  T�6  �5  YYY0�7  P�5  QV�  �  �  PQT�  P�#  QT�)  �5  �  �  T�8  �5  �  �  �  T�1  PQYYY0�9  P�:  QV�  �  �  T�;  �  P�:  Q�  �  T�  �$  �  P�  P�:  QQ�%  YYY0�<  P�=  QV�  �  �  T�>  P�=  QY`  [remap]

path="res://Enemy.gdc"
[remap]

path="res://PaintManager.gdc"
         [remap]

path="res://Player.gdc"
               [remap]

path="res://paint_control.gdc"
        [remap]

path="res://tools_panel.gdc"
          �PNG

   IHDR   @   @   ����   �PLTE   ->,;+;*=)=)=$<Z!>O ;U!AR+?\=M;UBS;U:S;S:S(CY(DZ)CZ)DY)CY)DZ)DY*CY)DZ)DY)CY�����������L5Up4To4Tn3Rl2Qk/Kc.Kc+F\*DZ   o��   tRNS .//0�������������������DN�|   �IDATx���EbC1CQ�����V���������΅�r}8���z[�ք"�f R2��MA����u艄��0a�	��Pa�Ŭ���{����}y���'x�['�P[����iđ��m��YPwyk+ [������v��E`>��>�00?�;�X��xk�v�-��p���1`$D�fv��(�Ln߬�M�g@�'���4 ��绕���'R} ���    IEND�B`�      ECFG      application/config/name         GD Paint   application/config/description�      �   GD Paint is a simple image editor made using Godot and GDScript.
It supports different types of 'brushes': a basic pen/pencil
and eraser, as well as a rectangle and a circle brush.   application/run/main_scene          res://paint_root.tscn   &   application/config/use_custom_user_dir         '   application/config/custom_user_dir_name         ENEMY      application/config/icon         res://icon.png     autoload/PaintManager          *res://PaintManager.tscn   display/window/size/width            display/window/size/height      �     display/window/dpi/allow_hidpi            display/window/stretch/mode         2d     display/window/stretch/aspect         keep   gdnative/singletons             importer_defaults/texture�              compress/bptc_ldr                compress/hdr_mode                compress/lossy_quality    ffffff�?      compress/mode                compress/normal_map           	   detect_3d               flags/anisotropic                flags/filter             flags/mipmaps                flags/repeat          
   flags/srgb              process/HDR_as_SRGB              process/fix_alpha_border            process/invert_color             process/normal_map_invert_y              process/premult_alpha             
   size_limit               stream            	   svg/scale        �?   input/left_mouse�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         layer_names/2d_physics/layer_1         Player     layer_names/2d_physics/layer_2         Enemy      layer_names/2d_physics/layer_3         Environment $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2                