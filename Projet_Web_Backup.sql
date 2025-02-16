PGDMP     
                     y            PWeb    13.1    13.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16447    PWeb    DATABASE     [   CREATE DATABASE "PWeb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE "PWeb";
                postgres    false            �            1259    16537    achat    TABLE       CREATE TABLE public.achat (
    id integer NOT NULL,
    id_name text,
    total_price text,
    date date,
    address text,
    city text,
    country text,
    zipcode text,
    phonenumber text,
    email text,
    id_panier text,
    user_id integer NOT NULL
);
    DROP TABLE public.achat;
       public         heap    postgres    false            �            1259    16535    achat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.achat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.achat_id_seq;
       public          postgres    false    205            �           0    0    achat_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.achat_id_seq OWNED BY public.achat.id;
          public          postgres    false    204            �            1259    16556    achat_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.achat_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.achat_user_id_seq;
       public          postgres    false    205            �           0    0    achat_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.achat_user_id_seq OWNED BY public.achat.user_id;
          public          postgres    false    208            �            1259    16459    articles    TABLE        CREATE TABLE public.articles (
    name text,
    description text,
    image text,
    price text,
    id integer NOT NULL
);
    DROP TABLE public.articles;
       public         heap    postgres    false            �            1259    16526    articles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public          postgres    false    200            �           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public          postgres    false    203            �            1259    16544    contact    TABLE     Q   CREATE TABLE public.contact (
    email text,
    message text,
    date text
);
    DROP TABLE public.contact;
       public         heap    postgres    false            �            1259    16550    panier    TABLE     l   CREATE TABLE public.panier (
    id_user text,
    id_object text,
    id_panier text,
    finished text
);
    DROP TABLE public.panier;
       public         heap    postgres    false            �            1259    16517    users    TABLE     x   CREATE TABLE public.users (
    id integer NOT NULL,
    email text,
    password text,
    news text,
    name text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16515    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    202            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    201            J           2604    16540    achat id    DEFAULT     d   ALTER TABLE ONLY public.achat ALTER COLUMN id SET DEFAULT nextval('public.achat_id_seq'::regclass);
 7   ALTER TABLE public.achat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            K           2604    16558    achat user_id    DEFAULT     n   ALTER TABLE ONLY public.achat ALTER COLUMN user_id SET DEFAULT nextval('public.achat_user_id_seq'::regclass);
 <   ALTER TABLE public.achat ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    208    205            H           2604    16528    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    200            I           2604    16520    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201    202            �          0    16537    achat 
   TABLE DATA           �   COPY public.achat (id, id_name, total_price, date, address, city, country, zipcode, phonenumber, email, id_panier, user_id) FROM stdin;
    public          postgres    false    205   �       �          0    16459    articles 
   TABLE DATA           G   COPY public.articles (name, description, image, price, id) FROM stdin;
    public          postgres    false    200   X        �          0    16544    contact 
   TABLE DATA           7   COPY public.contact (email, message, date) FROM stdin;
    public          postgres    false    206   o$       �          0    16550    panier 
   TABLE DATA           I   COPY public.panier (id_user, id_object, id_panier, finished) FROM stdin;
    public          postgres    false    207   H%       �          0    16517    users 
   TABLE DATA           @   COPY public.users (id, email, password, news, name) FROM stdin;
    public          postgres    false    202   e%       �           0    0    achat_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.achat_id_seq', 47, true);
          public          postgres    false    204            �           0    0    achat_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.achat_user_id_seq', 14, true);
          public          postgres    false    208            �           0    0    articles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.articles_id_seq', 26, true);
          public          postgres    false    203            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 22, true);
          public          postgres    false    201            M           2606    16525    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    202            �   �  x���]O�0���_�?0ӯu�� "��11�W��V�~�c�/@Cr�޽ϓsN�:�� 10�ȁ�A��6��p;P��P�7��9hi���\!���bL|�VI]�eZ�U1�2��h�P��>tf��8x�u��p���ۆ�.�����nA��@����t�)��{���0v&
YؙJ��/�Fa)R%��˳��@mK
�Nϙ1�v��o�f�<g+��E1���Dr@g�(�Ă�hۉ���L�4��P&��9�K�W��]������$Ζ4~�_"�]��L{��!��\��آ�H���^;��N(d*]N��=�F���yT�)�^��F��	l���?�o[��T�[�u6���9Y:�M�����ځß`�I��²�%*b�      �     x����n�6Ư��8���HQ�z���!
��nG�Q�N��r��>�.�����HNӢV{`˲L�?�w�=A٠ճsz�ٳ�Lo�v���u}�4���1�}���A�;��w��m�������`n����^Y��hp �v�	���W+0��5��t׮Z���<�P���E�	�U)�3���J����|h�r���^mŪ6M��]'Q�ج�4[`�֋�u�,߮�e���2��,'�����l&���堙��@����d��,�56�5��]�'.@���n\��,jG@��&�����G���V"�8N�*I*��K�)K˨JS��Z��L�-��d2�0��e�o}!1��5�ó���wҝ�.^���Q�=����y��殮��-���I��.��C�tn��=�MS�����C@��3�pQ��ZT���**�"SU�\&����#Q��H��p`4����Ȧ<sw�������~w=Z�8�F���1��; v79��6�x�b����#1��� ���<Ũ�M�Ti�u��8.ug����̳'�'�	��q�U�)1�J���Y|�3�e�V2_I8?��J��p��!� ��c�����2�K-Y�6Z?k�����)6Ec����\�,���bL�� J���dD5I�4ۄE���`ϦyMΣ��EՕ츰᥏��f�4��ʞ�z�Q����Re��Ӥ��Q�H��E)q��R�Q%<�H��gA��cs�~�`U�xy{���h���7��g\�N�0Xn��p��"�j�����N`T����B�� U��*�3�DeO)�TFG�8D9#J��/~�������i�l��,�%/[o���L�s�����/�|:g���Ă��%3�=�i�h��5v��4Q�5!�y"%j���2G�S!7&�����JD%fB���6�L�����5o8���x7���(�q���s�qzx��-�绊��Q�q�g��2U�'.�4K�Zs�<��Y�����$�Q�M��d&���r>���v�      �   �   x���1k�@���WhKKs硅,IZB!$S3z�*>�����+�C�,����{����q��b�7�/�칕V�D�3u��ʅ-aa��;%���9��e�yH�0l�߭yqr�b�&4.�:���|��O!� �$�p��d:�{?���p�D��.����ۺ�ڙr�*��C�=;���2��x�(F��Q[WU��g�      �      x������ � �      �   �  x�M�Ks�@�5��t��	P��$�ٴ�� �ʯ��*���W�)�U��vM�����nl�mO(Nud�5оϷF����B�g�o$5폑�(����RQG2<=�CTL��ˢAm�N����J�r	ɽ�������7C�����%8�~��j���QhN��<m�m��Ҳ;J3⡞�,�S7���}~r5� �?�>�d�a�����L"X�5O��,e\;M�X�܌��=��	�x�sdv
�R�.�������G�� �Sl�y5q�XK��4�(���G�ǽ�'m�	�f�s��)F�M�Gv�n�sW5^�V�z�K|����=��4��Z�2'[��_7\1Aэ�
Fov���WC�w$�A��2�wŵu��ɇ"n�r��h��S��     