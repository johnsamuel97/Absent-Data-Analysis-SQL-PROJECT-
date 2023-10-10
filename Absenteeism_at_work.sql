PGDMP          7        	    	    {           work_DB    14.8    14.8     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    73753    work_DB    DATABASE     n   CREATE DATABASE "work_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE "work_DB";
                postgres    false            �            1259    81973    absenteeism_work    TABLE     Q  CREATE TABLE public.absenteeism_work (
    id integer NOT NULL,
    reason_absence integer,
    month_absence integer,
    day_of_week integer,
    seasons integer,
    transportation_expense integer,
    distance_to_work integer,
    service_time integer,
    age integer,
    workload_per_day double precision,
    hit_target integer,
    disciplinary_failure boolean,
    education integer,
    son integer,
    social_drinker boolean,
    social_smoker boolean,
    pet integer,
    weight integer,
    height integer,
    body_mass_index integer,
    absenteeism_time_in_hours integer
);
 $   DROP TABLE public.absenteeism_work;
       public         heap    postgres    false            �            1259    81954    work_compensation    TABLE     T   CREATE TABLE public.work_compensation (
    work_id integer,
    comp_hr integer
);
 %   DROP TABLE public.work_compensation;
       public         heap    postgres    false            �            1259    81948    work_reasons    TABLE     X   CREATE TABLE public.work_reasons (
    id integer,
    reason character varying(200)
);
     DROP TABLE public.work_reasons;
       public         heap    postgres    false            �          0    81973    absenteeism_work 
   TABLE DATA           D  COPY public.absenteeism_work (id, reason_absence, month_absence, day_of_week, seasons, transportation_expense, distance_to_work, service_time, age, workload_per_day, hit_target, disciplinary_failure, education, son, social_drinker, social_smoker, pet, weight, height, body_mass_index, absenteeism_time_in_hours) FROM stdin;
    public          postgres    false    211          �          0    81954    work_compensation 
   TABLE DATA           =   COPY public.work_compensation (work_id, comp_hr) FROM stdin;
    public          postgres    false    210   �*       �          0    81948    work_reasons 
   TABLE DATA           2   COPY public.work_reasons (id, reason) FROM stdin;
    public          postgres    false    209   �2       d           2606    81979 &   absenteeism_work absenteeism_work_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.absenteeism_work
    ADD CONSTRAINT absenteeism_work_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.absenteeism_work DROP CONSTRAINT absenteeism_work_pkey;
       public            postgres    false    211            �      x��][��(��������A�?Z�%�so����U�g	I�������?B;�X��Ϝ�q��?������_�ݑ>�p�}C�ov�����8�'j;�?�9 �q=���$�u$(�Cd�$��#�B<|:�i��p$�CU3K̻���Ȳ�k=B��X�����	��IGc����n��84��_1!SY23�0A�	Ȁ�8ÿd�d\?q¯�Gr�X]Ć�Q$b�¢������{������/ !�d��څ���R���e䦏/h���DV����T����u�υ�-(H=�L8g<��ڞ3�(�Ǡ4�}+��I��
����FsY00pP�p�����0�F4k���/�X]h@}�1T%�r+(�c������T�iH�fLV��&+Z�u�:)MV�����g_��	�]���/B�J��J��+���Q���o��e�)0ғG��G{(���ū��m�-(H�=� ` ���p�dXh@ �����yT@�<�>1��ؔ�Y��X�L��Ē��қX}OV���i�� ��4mN�6��_3n�JI��d�D}��ہ��h�D�T˭/��8Җ%02�}�ÿ��E6pC�QU^���r�nJVr���
:vg��~7�)�شl#v�F�`����O�/���M8�!$�9XX�P��}�'���N#$��G��&kړ�'�@:Ԗ�ǔ�>9�H4y9h>h�����W0=!�3��l��[Nh&mI��J�5C���B���4��tK�(���@�'��i7�I�"2⯬����n���X(X�S����,M�m�,�O�7tS��ԝ�O�B�����1�O��Yl�XKvM%S�b塚��O!QJ����)��N߅�*�?�v�j��m�BQA�P�����-�#ά^BU4*��u�AY'�I��F!w���S��Ⴅ29�����®���O�]w��xA�
잋���J����mW=E@�͞�����߳�k��b��iU��~�w�+1�Ż 7t��]]-P:ֽ�>��ã���%��6�D�bS��z@l�U�1�N�F���x����u���F%��g����q��vKi8��N�(@�����_J�X�ؽi߽��9�� ��*'�ƚ��ܱaN͖s�F-F�9���2\��e����J��r{;@.�T`��JT<�u�I�;Gy=����gI��]���P�u� (=3X ����b���ea�.ޥ.xM�
l�D]~k�\>xx����W,+��t��;^	���:v{�V�gk.��0��:��25
�O��*#O`���Gtxsļ�BSM	�e�Ő����[�M�x5v/b����s`��Eb��E���ᢥ8� �����J���"���Q�����������?����El�ݳ��!��`�m�ml�3��m���k����ZG_���o���3H�4|�]�5�WS(��ލ���`�°=`�E޵�߱2,b�%����-2C`e[
�rNN�B2C��$]'�0��,����K~l�kV�X��칔ޱ�x�����'^�9AꝷĮ[�����Zu��A�l+�O��^�B�{��*�, ���R��ʃK4J���S��5��C��3���l��Ft#�a���X4��0̞L���o��f	�?6{��w�l@q�������
#��R�&@�3`d��On1ŐEv�?��g��~��<
k-�Y+?�b�gc���P�!]`�C�/�7�����J�U��G�2vs�%06ϓ@@�[�����_�]O�`��X�޾���?%sm �ڙ�帰*�OJ�������t��n<�u�E2��|Dc�5�SB��>y�1Y=O�}'}<W���������YY�ͭ��ms�q6V+��4D_��Y�%�}QN-#"�U��2Bw& ������(��A1���&��}���4n����{:c[ٕ��v�j�Pn�Ԩ���*���`5��m'u��=������b�I:�(��� KY��U�l�]��8����Ȼ��O�J/��2^���T�)�5�����`6ǫ3��xe���,��xc�nl@H��=�7��m�Ek3&�*�jM���ʥ}�'a��<L�N-�F`M���]�Ͻ��Y0�ߥ�Ԛ��DZ��;��zh�]�!��}�d-Y��X�*�G�X�g7t���3Ќ*f��J��$¿�x:
�lL~�Oʁ����l�I��N�`��N��Q\�uUPk�Q�1E�<NB� Ĕ�/��Ɓ�=l��K��D�T+��:���1��T'O��N��,7RͽI�<�Zo��E(�Z�@d�/��,|����Oˇ8�p�mw�)/��XX��&�R���Zj� ֚�� `�(t�+���ޛw��pi�+��:d�M�8SI���0���>����*]p7z�f�����n�W>��*V\���q����$k�$�
E�������*�K�G�4����u7&�p��0��H;v*OS��MΉ�g,��I��d!pa0����Dx�X�
E�Ī���� �y,K�N,��_a���Tީ:�ۮ��� ��c�&} ��U�}��$*�v��l�P�`��~�v��� lP�Ĥ]���_���̏���k)2���#��SVO�}��_+M{�t2v8�n�\T^�kv7pKn�d���1�]���P������܎�-n�WbK.��H�n�򮂚�͂>�%�2Έ6X0���
nPg,��YC�L<CSEG�4�h2,maQ���D���w%�F��H��Z+�A��V��O�@�V��+� (C��&����z\m}���R)N@�`�z��V0��@T�|���F*EXYw�I��]`��Έm<�V���hf�5ER�Yq#י��\5����_����	G*A�	-�?'�zq 6����_�&u���~�~��.��YV72dœ��cJ��:߻^��T�OuR�jXW`�Dj=��'�8�j�y���sl,:wBt9!�&�)�����S�\�M�6w\.�1��ߔ�-�ȓl�kf�Vef�53sK��F�W��q���,8/=�&X%�Vz<?�}�g��w"�fL6ܷZ�ovF�=����!���N̏07EC�r���������l�X$R	ޕLg�A��'r�ݵ*��}b_�3��y!�u!D,egw�I���X��[�;T7���Z����a�5�O�WF
>;Wfe3M���[9/���$�����h:I���$C��-��G~�B[��щ���;wRSxF?�����AK�ôxJ����[2����k�4~�t�d�5�W��>�����b�F���$Og������cZ���NgC]φ���ch��Z�{w=D���S��%?�H1@.��3�`��Cgs���I�����Qlf���*:���s�cUqt�\�!I[�"�^*�����Co�~��M[��}'�va�������6D�O�1� K����er��v$C�E׃d�t~�0��1q3�ԑ��o1җ�މ0��qp�Ƀ5�=��U1wBiڝU(����7S����<Ϫ�ύW���(oz�����G�ڎ�V����r�F,"�/D�ȝ�;]�%��%<)��փص)��n�)u��f��Ҥ|<1��:��Dg����W�YCVs"I�ල$op,y�jUW�����.��i��`ca�F�a�/C|��CΜ�:)@-Rf��E
��I��b$�c�i�^���rM*�{��Yo��`Ubws�{�;x�pR�ͫ���@���!v�;���`�X��R���o�,y���h�^��w�zY�6�N�c���&b�0�y5�	��]���Xi���U�E�����߅����6�N�8fNa�J��m����	�,����E1d����a#h�zık̩ʷ�γB#���X�}Kc-�]��6��晄���j�_F[�Rk���E+��r�}��B@�ZؙXj=7�j=��e�K[a�>[��J'������K;�\��/��%��w�x��b��_�Um�W5����>6Z���Z�-�f+Hv�|����u���.%��_�y�����kg��.�Q a  �v�gz i��#�;f�1L�*뜅	wc1�wyk9�ge�B��X�T�R�?꘩t6�7\�1^pRr�a�ʠ
k�A��R~[��O�&�_�(�9��2�8]�����I.1�g�\����͂ഃE��*�ݖ�T�p�T��ړ�9��.��O��;oV�VL�`}�2w�ϱ�nd���p(
w�=b��?��)�$oN�|�8�q�x�nz i���J����U�O�j�(�R3:��Sb�����b��XV�v��#�����C�K+��cg���*���k`.�p�W��Mƚ{�P��26�С��ғ�CLrmZ��.�h�z�I<>f�L�.����_΃��p7|��`%�����5���\�� 2X��%�VA&!���J�ih�g~�^?W[�(S,v��5�F���|�5n��� +Gn�܆��̬*���6Qӹ�M4�q������֢t��#rɒJc3��Y��ǰ@;����7�:,�k�����k�o��|�L14ΰ+��w� 6��<	&�z�H\}��_傕�����Q%	]�o��̊u)��\n�6��c�փԘ�BΝn�U*[)�/�GȔ�m���i�E3 `�K�(���\�"#�*�)_��7G�N��Ǎ�@h���Eۆ�ꘐ%��]��8Z�齱����or�<�z~�.bO�H��IԾ�'�N[����f��Z�A����3!�hK`�L��Їy_�K����Ě��oQ��H��>q#|
K�{-�Z���n����V	&q��|���ECQD���v��ռs���Wb�]/��������\M6�p��e�sZ�{��٘��Ѝ���Q�J�-��kB��ۅ��l�Mj~zam�N�Z�kg�����]eX鏡��:���>:K�^���`�┚�Ӎ~:oI�Pb�2Z��Y���!�Q���
&v�7��1�ʑIJ��L���Pn���TcW.ej��Ia��hE`�Pb���V�f�� O�ش���$>^��g'��gg��9�+��z�y��o�8Nl��3��3�����G0���ތ�Ha�S�)�;ӽ�v���[��n�|Y���"�½cUg��Z�ٹAG��������ܝ���no�M�NP��K��+A1suݢ��f�S0���e�>�v��������h�Pe8h�8H�V�(��gť	|��^|�#���3���/(�EL�;p��]�H�ܨ&��x��'�C�'{��3V����~�Μ�Ļ+�����qSB��Q�6�_�.X��v�������܈�
����z��|z�����!4_�kp*��\hFW�/��yF��Ѻ7�[�!3<��ct��/U_Tص�~
#������c~3d�28�s��(�t���*�;���#��gv,[놓hq��@�ě��a�X^�c��-���9^|80t'�N��۽��T�K�i��W��^w9���%G�L�ڙ��|��x�hWk䤎�(�^j|�����`���F�Ѭ/CK@B�_F5�4�b͜�|uj�
h���m���<xZ� U�]K#8����wg�>b����9?���O�����s���-���x�ۈ�Z����nz���MM�KH�1C�^zIo��|X?�g��F���sUzb�f���Ō�GO�1nE[6�l�LY��tB��j�_v����ߤ�Zލm�D�� ~;u��"���|�gW{���#�6�"�u4���'����ҹ��jȳ�[�G�KEN9ޫ�"��7�ܻ݃A�6$O5�\r���H�{&)���
��Hx������
��q�fvl�C�����i�u֍�W�8/�`�L�N	6���g�i������G�R�g��9DHe�����,Z�ҭl{�P/����xĖ7X��o��T�(~�7by'���0(���B��ۛ�ҧx.hǿ�����dJg��ܼxXiSl�Л�1��8_��T	�I6������UD��,�����xI��A�MKx��_��UѠ��	�_o�hϟ�,j�Ҟ;ݿh�=;1g~�����YY?�{�o�C<r!�~���_T�����J���F��3=����r�gt�U]��j��}��� �?��F�V�_���|���)���oB��E��UX.5)k�X�A�"���@�ӵO�
�f����>2r�FTqUy#��^O��N���싦7�_�S����Ja�J����'_���?lF2"{Hm�"��4��� �|[�v�@�?Ĕ��ׂ��\6}�PJS'��Nb�r�{�)++�i�@؎Vus{��!C���퇡m��rS���h8�ke�.I]A͸�S�_��+���b�adW�O�/����&Te���f�wM
�e����f}�b�{����/��;#���_��nl�u���X_�.wa-���hD�L��\�8�L����Ѯ���z�J���CP���/�\J����_d*:�����޹��l�������ý��=:?K:IR���И�U*�8� o*����l����G|�{��L�p�i�og��B[��3s���B*x����L��Ln[���R��Ρ�|'%�XO�>�񈜜�
k�
���j�c����K��J�Cj.�{��a�ф��?�X[/�R3��? �&������̚�\J��;B�y�Olb;uyQF�٢�R�{�Ջi@���vU�T����C��ۍg�H�3$�T<؅+�}��|��(᷈B����Rw�E����_�p�:a�.�	�UXC�W����Ub�3\��X�9{C�n�¶����z�5?j~@5_+�ͥ�T��K�<���,K��?(��/_1���Q��2��R��)�-��fۂ���׈�b+oaz��#�|�&B�����h�]�R$�����*�����d��:�a����Z_���>�k�bm�D9����q��)?B\���L{��L�v�b��:�7^�֣+z�j��Ζ��P�4)�"�nj���$?�����\S�;m�����#���mg��lI�JM��d���=eW.b�M�߉
�Jd���V��D"�p·�����&�+T��O��R�+�)�֑����},��/��]�M�>����Ha�w9�������"�vJ��ͼ̂/f�x�WS˕�n^����#���M�PI|H������N�s�M�c��7���N�&�A����̥�݉FĆ�~7(�CV���8�4���3k�65Fh'53T5&&�
�����˖e�+����JAщ�����ZW��@!U�*�E�����o��+�*�t�X�/�,_�����տ_�c񋩌�m����u��vÿ�˝����3�;�;G%֨k��
�[Zw�j[���Ōg5�W�n�u�D�mi�]����Ӎ�'��}�����U>	ʟ��b
j>+V�#�Xa�ow��G(�����|>�����      �   Z  x�5�I�'Dו��C3���?��M��(�W �~Q���}����W�����_�o~i��e����_�U}濰��,��k�}�����m}��;6>7��]p����Z�����Ǿ����_����ag�����F�~Ǟ/�n�_��������ٿ�_�Nvfa�lؖ�y�'�[����r����o�UX�Ϋa����a/}�EC�v�����'khs7k��e����3��8�FMb�)������<�\�d|r��5X~i��b�﮻��ӹ;�;6�w`���>�_`����+���8p�����vQ8�qLk'�O;�0|�Ә�����;��,b� [��f3Ͳ�����3p��4G�QqU�`�-lXoi���m�d�mIs�8�����e�.�lK&[�֭�vu�gKޞ�	=[�
_��QL\�m�ogIٲ".A��dߒ�b�p�C�Qq���آ��ڲ�۶0�K#֫��#˶@¤%r9�E���{�۶Tb�0�f�ۂ��L�4�S� NT>��q�s��mK(�\Da�2
�/�lN6:��.XP��+^��`l���B��Vϡ� v�\bq�@v��Y8�x{�e���=Ƌ=�e�e��=]��a����������C��H�N�˨�R���F^|�uN13��y�ewWwc𺍾H�yqg ���e�]���
�;��p!�wݥ��.ƅ���Tӗ]G��e��E��QPK<�e{H�(�c��(�'�ȗ]V^�'���1��Q|�]��LU�\v�6tdɖbL����9u�Į�����Y͓�fykG-�4���1N6�Jƴ��G�@`�6���.����B�+�.��ò�s_vY�/�׃/���P�Վ�]�+v}��.�d˲�1�O~Yv1粋�{���q����8���P1��[\�q���=��;�Q��(�!���.ś�xy���0�B�`w���N�t7���[3�ԅS��6����/�w@3�]�첒'A�F0�"��?�o��]�n[*mHޅ�L:bمϠ�hn,y�Eʻ%�Hwc�]l���Q���V�*E^�d�ݶ���b�e�<$;˲O,���b��XvW�bG1��Pb��.���.���aj#�\F@�� ���2��+��R# .�(�(��.�Z�9J<*f<y��*���(��e|�.O:����"uyx7��}�ˮ��'��p`w�	�E�3J�[[P�9*[=G㨻)vs�EZ��b=�-�.�G�n.��ڙy�+_t%�ΓN��;gP�2x�	v�F�dP2藌� *f3�̣B�$�(3����R�Y�3�p���*{M��=��	vQ��,*f�T���>K�-��ٌ�ly�n��_�y]Jw���g���,�3�G9�S���/�8ʑ-#[��TU*�ј��奾��I#g@3/3��ԗ���2��R�����s�E�N�.
�Q>�/�Z]�����m����L����w�.�
���A�[����[��.T�7��-�[ƧB�RF�*�_ʮ*��q�'
_9��˩Rv{��+�*U`w-sf��T�
>�
���ts�
�(J]�P���B��[�3*���n[�d^Wb���K�݅��T2�dK��*�Ts�*�E�r�*fdUT�*�$�GO4ް�|T�MS�G\�ET��G_W��a՘
�/��a{��"ݭ�_F'=��0k��ܻ�vt��)���n����MR��wݿ7�����@��΢GZAww�r�z�����I�����qz�}�y��[��������ި�3�6�/vQ���K��]Ȩumz�"g@��m�Q_9���a۹��P%ջ�~i�n���j�f��B��l	F@U��1�b���u0;4KR���˹i�^�)[�3�d�wQ�z^Ι���Z�E^���b���w��˞T�.fA]Wm�໵���ح5��n������n�������SBU�G;f�=��G;f=�{x��hG��ٗ�Z_��җ�K_�w�R�x��B�\F@?��R��Z?f��&��/��c�����J�}[�W�9����(g��{z�a������*3}1}Q_�J]Z?�����*cF6Η��6N���]��8�Y\��9o������h�*5�w���2�7�D�'�2A��Ў���$������y`�      �   l  x�eT�r�0<�_�H:��>��L�t��[/4KhH@%H;�����&��.��b�+�^�Hvc� ���
r�s��^�`p
x�[�x�^��k��v�we ���ݜ:���sNH���{Zj�S+�ȹ�,�����`��T	\�0xBI��<S�!#���Z�b�q������o�7�rz���:O�﷎�nE� ��2I�d�W �`.�;�Wo� �F^
�j�9��}\!�P�/��s���
�AF�Q������0�F^T�FM�.��	ڤE*��z����cy�Mǥ�<&j�~���U~�E%G��ߚz����s�-k��G�X{�fHm�����{-Y�Q�e΁֤ql����{��4�`�������_�4C��©�eG�1j3�������X8i�`J8�\�HN���Ӣ��t��$�� 
Ⱥr=�=�R|4_�Oͪ���Hj�?��r\�o
���Z 7�_�;�2�C�8�P�+�Vԉ&�ݘ/>(�vm��ʶ���+�����mQ�;����z�4>��֌�����s�|�����k����h�k,���pc�?��i���y��RB:��LU]��M&�Z���7�0	β�q�ȃ�����'k�?��     