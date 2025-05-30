PGDMP      	        
        }           Automotive Repair System    17.4    17.4 M    ~           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    32768    Automotive Repair System    DATABASE     �   CREATE DATABASE "Automotive Repair System" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
 *   DROP DATABASE "Automotive Repair System";
                     postgres    false            �            1259    32770    customer    TABLE       CREATE TABLE public.customer (
    customerid integer NOT NULL,
    firstname character varying(100) NOT NULL,
    lastname character varying(100) NOT NULL,
    phonenumber character(10),
    email character varying(100),
    address character varying(200)
);
    DROP TABLE public.customer;
       public         heap r       postgres    false            �            1259    32769    customer_customerid_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.customer_customerid_seq;
       public               postgres    false    218            �           0    0    customer_customerid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.customer_customerid_seq OWNED BY public.customer.customerid;
          public               postgres    false    217            �            1259    32824    employee    TABLE     �   CREATE TABLE public.employee (
    employeeid integer NOT NULL,
    firstname character varying(100) NOT NULL,
    lastname character varying(100) NOT NULL,
    "position" character varying(100)
);
    DROP TABLE public.employee;
       public         heap r       postgres    false            �            1259    32823    employee_employeeid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_employeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.employee_employeeid_seq;
       public               postgres    false    228            �           0    0    employee_employeeid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.employee_employeeid_seq OWNED BY public.employee.employeeid;
          public               postgres    false    227            �            1259    32846    invoice    TABLE       CREATE TABLE public.invoice (
    invoiceid integer NOT NULL,
    mileagein integer NOT NULL,
    mileageout integer NOT NULL,
    dateprinted date,
    datepaid date,
    type character varying(100),
    repairorderid integer NOT NULL,
    employeeid integer
);
    DROP TABLE public.invoice;
       public         heap r       postgres    false            �            1259    32845    invoice_invoiceid_seq    SEQUENCE     �   CREATE SEQUENCE public.invoice_invoiceid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.invoice_invoiceid_seq;
       public               postgres    false    231            �           0    0    invoice_invoiceid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.invoice_invoiceid_seq OWNED BY public.invoice.invoiceid;
          public               postgres    false    230            �            1259    32874    invoiceitem    TABLE     e   CREATE TABLE public.invoiceitem (
    invoiceid integer NOT NULL,
    lineitemid integer NOT NULL
);
    DROP TABLE public.invoiceitem;
       public         heap r       postgres    false            �            1259    32863    lineitem    TABLE     �   CREATE TABLE public.lineitem (
    lineitemid integer NOT NULL,
    description character varying(100),
    quantity integer,
    price numeric(10,2),
    procedureid integer NOT NULL
);
    DROP TABLE public.lineitem;
       public         heap r       postgres    false            �            1259    32862    lineitem_lineitemid_seq    SEQUENCE     �   CREATE SEQUENCE public.lineitem_lineitemid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.lineitem_lineitemid_seq;
       public               postgres    false    233            �           0    0    lineitem_lineitemid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.lineitem_lineitemid_seq OWNED BY public.lineitem.lineitemid;
          public               postgres    false    232            �            1259    32812    note    TABLE     �   CREATE TABLE public.note (
    noteid integer NOT NULL,
    notetype character varying(100) NOT NULL,
    description character varying(100) NOT NULL,
    repairorderid integer NOT NULL
);
    DROP TABLE public.note;
       public         heap r       postgres    false            �            1259    32811    note_noteid_seq    SEQUENCE     �   CREATE SEQUENCE public.note_noteid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.note_noteid_seq;
       public               postgres    false    226            �           0    0    note_noteid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.note_noteid_seq OWNED BY public.note.noteid;
          public               postgres    false    225            �            1259    32793    proceduredefinition    TABLE     ~   CREATE TABLE public.proceduredefinition (
    procedureid integer NOT NULL,
    definition character varying(100) NOT NULL
);
 '   DROP TABLE public.proceduredefinition;
       public         heap r       postgres    false            �            1259    32792 #   proceduredefinition_procedureid_seq    SEQUENCE     �   CREATE SEQUENCE public.proceduredefinition_procedureid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.proceduredefinition_procedureid_seq;
       public               postgres    false    222            �           0    0 #   proceduredefinition_procedureid_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.proceduredefinition_procedureid_seq OWNED BY public.proceduredefinition.procedureid;
          public               postgres    false    221            �            1259    32800    repairorder    TABLE     �   CREATE TABLE public.repairorder (
    repairorderid integer NOT NULL,
    originationdate date NOT NULL,
    completiondate date,
    vehicleid integer NOT NULL
);
    DROP TABLE public.repairorder;
       public         heap r       postgres    false            �            1259    32799    repairorder_repairorderid_seq    SEQUENCE     �   CREATE SEQUENCE public.repairorder_repairorderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.repairorder_repairorderid_seq;
       public               postgres    false    224            �           0    0    repairorder_repairorderid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.repairorder_repairorderid_seq OWNED BY public.repairorder.repairorderid;
          public               postgres    false    223            �            1259    32830    repairorderprocedure    TABLE     s   CREATE TABLE public.repairorderprocedure (
    repairorderid integer NOT NULL,
    procedureid integer NOT NULL
);
 (   DROP TABLE public.repairorderprocedure;
       public         heap r       postgres    false            �            1259    32781    vehicle    TABLE     �   CREATE TABLE public.vehicle (
    vehicleid integer NOT NULL,
    make character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    year integer NOT NULL,
    customerid integer NOT NULL
);
    DROP TABLE public.vehicle;
       public         heap r       postgres    false            �            1259    32780    vehicle_vehicleid_seq    SEQUENCE     �   CREATE SEQUENCE public.vehicle_vehicleid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.vehicle_vehicleid_seq;
       public               postgres    false    220            �           0    0    vehicle_vehicleid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.vehicle_vehicleid_seq OWNED BY public.vehicle.vehicleid;
          public               postgres    false    219            �           2604    32773    customer customerid    DEFAULT     z   ALTER TABLE ONLY public.customer ALTER COLUMN customerid SET DEFAULT nextval('public.customer_customerid_seq'::regclass);
 B   ALTER TABLE public.customer ALTER COLUMN customerid DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    32827    employee employeeid    DEFAULT     z   ALTER TABLE ONLY public.employee ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_employeeid_seq'::regclass);
 B   ALTER TABLE public.employee ALTER COLUMN employeeid DROP DEFAULT;
       public               postgres    false    227    228    228            �           2604    32849    invoice invoiceid    DEFAULT     v   ALTER TABLE ONLY public.invoice ALTER COLUMN invoiceid SET DEFAULT nextval('public.invoice_invoiceid_seq'::regclass);
 @   ALTER TABLE public.invoice ALTER COLUMN invoiceid DROP DEFAULT;
       public               postgres    false    231    230    231            �           2604    32866    lineitem lineitemid    DEFAULT     z   ALTER TABLE ONLY public.lineitem ALTER COLUMN lineitemid SET DEFAULT nextval('public.lineitem_lineitemid_seq'::regclass);
 B   ALTER TABLE public.lineitem ALTER COLUMN lineitemid DROP DEFAULT;
       public               postgres    false    232    233    233            �           2604    32815    note noteid    DEFAULT     j   ALTER TABLE ONLY public.note ALTER COLUMN noteid SET DEFAULT nextval('public.note_noteid_seq'::regclass);
 :   ALTER TABLE public.note ALTER COLUMN noteid DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    32796    proceduredefinition procedureid    DEFAULT     �   ALTER TABLE ONLY public.proceduredefinition ALTER COLUMN procedureid SET DEFAULT nextval('public.proceduredefinition_procedureid_seq'::regclass);
 N   ALTER TABLE public.proceduredefinition ALTER COLUMN procedureid DROP DEFAULT;
       public               postgres    false    222    221    222            �           2604    32803    repairorder repairorderid    DEFAULT     �   ALTER TABLE ONLY public.repairorder ALTER COLUMN repairorderid SET DEFAULT nextval('public.repairorder_repairorderid_seq'::regclass);
 H   ALTER TABLE public.repairorder ALTER COLUMN repairorderid DROP DEFAULT;
       public               postgres    false    224    223    224            �           2604    32784    vehicle vehicleid    DEFAULT     v   ALTER TABLE ONLY public.vehicle ALTER COLUMN vehicleid SET DEFAULT nextval('public.vehicle_vehicleid_seq'::regclass);
 @   ALTER TABLE public.vehicle ALTER COLUMN vehicleid DROP DEFAULT;
       public               postgres    false    220    219    220            k          0    32770    customer 
   TABLE DATA           `   COPY public.customer (customerid, firstname, lastname, phonenumber, email, address) FROM stdin;
    public               postgres    false    218   �_       u          0    32824    employee 
   TABLE DATA           O   COPY public.employee (employeeid, firstname, lastname, "position") FROM stdin;
    public               postgres    false    228   �a       x          0    32846    invoice 
   TABLE DATA           {   COPY public.invoice (invoiceid, mileagein, mileageout, dateprinted, datepaid, type, repairorderid, employeeid) FROM stdin;
    public               postgres    false    231   !b       {          0    32874    invoiceitem 
   TABLE DATA           <   COPY public.invoiceitem (invoiceid, lineitemid) FROM stdin;
    public               postgres    false    234   (c       z          0    32863    lineitem 
   TABLE DATA           Y   COPY public.lineitem (lineitemid, description, quantity, price, procedureid) FROM stdin;
    public               postgres    false    233   �c       s          0    32812    note 
   TABLE DATA           L   COPY public.note (noteid, notetype, description, repairorderid) FROM stdin;
    public               postgres    false    226   1e       o          0    32793    proceduredefinition 
   TABLE DATA           F   COPY public.proceduredefinition (procedureid, definition) FROM stdin;
    public               postgres    false    222   4f       q          0    32800    repairorder 
   TABLE DATA           `   COPY public.repairorder (repairorderid, originationdate, completiondate, vehicleid) FROM stdin;
    public               postgres    false    224   �f       v          0    32830    repairorderprocedure 
   TABLE DATA           J   COPY public.repairorderprocedure (repairorderid, procedureid) FROM stdin;
    public               postgres    false    229   �g       m          0    32781    vehicle 
   TABLE DATA           K   COPY public.vehicle (vehicleid, make, model, year, customerid) FROM stdin;
    public               postgres    false    220   �g       �           0    0    customer_customerid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.customer_customerid_seq', 8, true);
          public               postgres    false    217            �           0    0    employee_employeeid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.employee_employeeid_seq', 6, true);
          public               postgres    false    227            �           0    0    invoice_invoiceid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.invoice_invoiceid_seq', 11, true);
          public               postgres    false    230            �           0    0    lineitem_lineitemid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.lineitem_lineitemid_seq', 26, true);
          public               postgres    false    232            �           0    0    note_noteid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.note_noteid_seq', 5, true);
          public               postgres    false    225            �           0    0 #   proceduredefinition_procedureid_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.proceduredefinition_procedureid_seq', 10, true);
          public               postgres    false    221            �           0    0    repairorder_repairorderid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.repairorder_repairorderid_seq', 13, true);
          public               postgres    false    223            �           0    0    vehicle_vehicleid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.vehicle_vehicleid_seq', 10, true);
          public               postgres    false    219            �           2606    32779    customer customer_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_email_key;
       public                 postgres    false    218            �           2606    32777    customer customer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customerid);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public                 postgres    false    218            �           2606    32829    employee employee_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employeeid);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public                 postgres    false    228            �           2606    32851    invoice invoice_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (invoiceid);
 >   ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_pkey;
       public                 postgres    false    231            �           2606    32878    invoiceitem invoiceitem_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.invoiceitem
    ADD CONSTRAINT invoiceitem_pkey PRIMARY KEY (invoiceid, lineitemid);
 F   ALTER TABLE ONLY public.invoiceitem DROP CONSTRAINT invoiceitem_pkey;
       public                 postgres    false    234    234            �           2606    32868    lineitem lineitem_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.lineitem
    ADD CONSTRAINT lineitem_pkey PRIMARY KEY (lineitemid);
 @   ALTER TABLE ONLY public.lineitem DROP CONSTRAINT lineitem_pkey;
       public                 postgres    false    233            �           2606    32817    note note_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.note
    ADD CONSTRAINT note_pkey PRIMARY KEY (noteid);
 8   ALTER TABLE ONLY public.note DROP CONSTRAINT note_pkey;
       public                 postgres    false    226            �           2606    32798 ,   proceduredefinition proceduredefinition_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.proceduredefinition
    ADD CONSTRAINT proceduredefinition_pkey PRIMARY KEY (procedureid);
 V   ALTER TABLE ONLY public.proceduredefinition DROP CONSTRAINT proceduredefinition_pkey;
       public                 postgres    false    222            �           2606    32805    repairorder repairorder_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.repairorder
    ADD CONSTRAINT repairorder_pkey PRIMARY KEY (repairorderid);
 F   ALTER TABLE ONLY public.repairorder DROP CONSTRAINT repairorder_pkey;
       public                 postgres    false    224            �           2606    32834 .   repairorderprocedure repairorderprocedure_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.repairorderprocedure
    ADD CONSTRAINT repairorderprocedure_pkey PRIMARY KEY (repairorderid, procedureid);
 X   ALTER TABLE ONLY public.repairorderprocedure DROP CONSTRAINT repairorderprocedure_pkey;
       public                 postgres    false    229    229            �           2606    32786    vehicle vehicle_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (vehicleid);
 >   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT vehicle_pkey;
       public                 postgres    false    220            �           2606    32857    invoice invoice_employeeid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_employeeid_fkey FOREIGN KEY (employeeid) REFERENCES public.employee(employeeid) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_employeeid_fkey;
       public               postgres    false    4806    228    231            �           2606    32852 "   invoice invoice_repairorderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_repairorderid_fkey FOREIGN KEY (repairorderid) REFERENCES public.repairorder(repairorderid) ON UPDATE CASCADE;
 L   ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_repairorderid_fkey;
       public               postgres    false    224    4802    231            �           2606    32879 &   invoiceitem invoiceitem_invoiceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoiceitem
    ADD CONSTRAINT invoiceitem_invoiceid_fkey FOREIGN KEY (invoiceid) REFERENCES public.invoice(invoiceid) ON UPDATE CASCADE;
 P   ALTER TABLE ONLY public.invoiceitem DROP CONSTRAINT invoiceitem_invoiceid_fkey;
       public               postgres    false    234    231    4810            �           2606    32884 '   invoiceitem invoiceitem_lineitemid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoiceitem
    ADD CONSTRAINT invoiceitem_lineitemid_fkey FOREIGN KEY (lineitemid) REFERENCES public.lineitem(lineitemid) ON UPDATE CASCADE;
 Q   ALTER TABLE ONLY public.invoiceitem DROP CONSTRAINT invoiceitem_lineitemid_fkey;
       public               postgres    false    4812    233    234            �           2606    32869 "   lineitem lineitem_procedureid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lineitem
    ADD CONSTRAINT lineitem_procedureid_fkey FOREIGN KEY (procedureid) REFERENCES public.proceduredefinition(procedureid) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.lineitem DROP CONSTRAINT lineitem_procedureid_fkey;
       public               postgres    false    4800    233    222            �           2606    32818    note note_repairorderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.note
    ADD CONSTRAINT note_repairorderid_fkey FOREIGN KEY (repairorderid) REFERENCES public.repairorder(repairorderid) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.note DROP CONSTRAINT note_repairorderid_fkey;
       public               postgres    false    224    226    4802            �           2606    32806 &   repairorder repairorder_vehicleid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.repairorder
    ADD CONSTRAINT repairorder_vehicleid_fkey FOREIGN KEY (vehicleid) REFERENCES public.vehicle(vehicleid) ON UPDATE CASCADE;
 P   ALTER TABLE ONLY public.repairorder DROP CONSTRAINT repairorder_vehicleid_fkey;
       public               postgres    false    220    224    4798            �           2606    32840 :   repairorderprocedure repairorderprocedure_procedureid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.repairorderprocedure
    ADD CONSTRAINT repairorderprocedure_procedureid_fkey FOREIGN KEY (procedureid) REFERENCES public.proceduredefinition(procedureid) ON UPDATE CASCADE;
 d   ALTER TABLE ONLY public.repairorderprocedure DROP CONSTRAINT repairorderprocedure_procedureid_fkey;
       public               postgres    false    229    4800    222            �           2606    32835 <   repairorderprocedure repairorderprocedure_repairorderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.repairorderprocedure
    ADD CONSTRAINT repairorderprocedure_repairorderid_fkey FOREIGN KEY (repairorderid) REFERENCES public.repairorder(repairorderid) ON UPDATE CASCADE;
 f   ALTER TABLE ONLY public.repairorderprocedure DROP CONSTRAINT repairorderprocedure_repairorderid_fkey;
       public               postgres    false    4802    224    229            �           2606    32787    vehicle vehicle_customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customer(customerid) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.vehicle DROP CONSTRAINT vehicle_customerid_fkey;
       public               postgres    false    220    4796    218            k   �  x�M��n� �����<�U�7����l͔���i����BL�Iڼ�Nre��$>Ώ�/я���7�Y���_ɽ?���t .�t��?R�1��z�a��'�8��}��0U	�v1yظKL�6Ze5�����i첟�9�\�5���Z7�����J���_`�rX.������f2�t�/���|���O���T�z�J
�+m��n|�e�ͭ6ʀsW2s.��mʉ[w��яt��h�`��й\H�ڧRHƸQ\(�t%3���!ƒ��z?�J���m��pJ����'x��'��]������lV�B�w���g�s�d�Ư+�t�W�a��]J{��l�\O`�].��я��k|�%?�O��o4���@{�);x�1^����������tR.���������j+��o-JF�z����?����      u   m   x�3��H�+��t*�/���MM�H��L�2�����L�����-(�G�3��/O���IM���2��)M���/�K�M9}3sR�9���R���8]�����=... �R(!      x   �   x�m�=n�0�g���
����v�t�\����e,�R�.��@�=R�$�M9E�H�D$x��iyy��(0&al��Hؑ�2���>6����A S���᠑��3		��[�{g�	.�����u]� ����<��W#ˈ�������Mm�H�Q�VʐCR&��Jm턞���fŇ*!ʦ���y�a��G7p�����8GL#>�w�Xي6ճ���<m�
������*����q����/;h}(      {   ]   x���D1г)f;K/��:r�		Kf�T�RJ+����:i�L���A�U8���{{_�2mvp���"n$M=�����[����w+      z   �  x�u�MN�0���S�@���Y�BWHH����N�U׉l��3��6Eb�,�}�y~c/j�;���kÛ/e;yv�e ��g�i��
%T���+��6�B�r��w�|P�p0���@�:6�����m�r�ĢLb���T6�8�ń�r�to	����>&e����� �$��y���c�`"[�N��T,��Ök�l��H�LHx������Dyr���D#(m�!W���p�����|0c�/7��(�	���a�L6��F4�k���[3����_�ԱǊ	J������n�(��>����2���j�5�l��mB)G"��U���ҫ����޷;�g$�'��i�h���zA{?Ѿ���:�[�w�1Y��Y^�
�}o��Ĩ�y��-�ڏ      s   �   x�M�Kr1DךSp�����*�|���1e؀���\Yx��V?`[f]/Y�|v]���$A���~ɰA�+<�X N���,/@~������fmn�i���vO�{Ģ����M{m�������W��`��Ÿ�:=��p��;��d�iM%;+6�$���zgK�TQ#plz�cDd{�����=ғ��!{��pk�M�O�ϋ��R�]4�$���4rϮ'Zh��0}o�i�7�=      o   �   x�U���@�뽧�Ј��@�� ��f�x,��0����h��|�MW�����5d�ތ7����R�k0(�1}� �"i�YҊ�2
��wF� �y��DB��;��L��ڈ2����1����w�}��Q꘾5Gx��S+���O��ɦz73&��dE�0�^Kc�q�M�      q   �   x�u��!�V/d,�%���L>���$��Z-�B;X���E["U���DSqԥ��L���1��A��k�|�7�\�_�F��.��1�MV--�q���N�4�b��kGb\#�[�Q��>�e��!:�      v   3   x�ʹ  ����#�߅��Z
�$m4;��p2],7��1*Q����-����      m   �   x�=ͱ�0���ܧ�4���#���&2�4@L�&M��]���Ϲ7�x48��M��� H�����]�!I��}=�}������bW{��I�l������v�BMɏ/�|5>VH(š�Cm����&R�-ux�������V�F��V\�
��ǎ����5�     