PGDMP      -                |        
   NoMorePoop    16.3    16.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    19114 
   NoMorePoop    DATABASE     �   CREATE DATABASE "NoMorePoop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Canada.1252';
    DROP DATABASE "NoMorePoop";
                postgres    false            �            1259    19116    address    TABLE     �   CREATE TABLE public.address (
    address_id integer NOT NULL,
    street character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    province character varying(255) NOT NULL,
    postal_code character varying(7) NOT NULL
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    19115    address_address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.address_address_id_seq;
       public          postgres    false    216            �           0    0    address_address_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address.address_id;
          public          postgres    false    215            �            1259    19168    company_vehicle    TABLE     2  CREATE TABLE public.company_vehicle (
    vehicle_id integer NOT NULL,
    license_id integer NOT NULL,
    vin character varying(17) NOT NULL,
    make character varying(50) NOT NULL,
    model character varying(50) NOT NULL,
    year character varying(4) NOT NULL,
    last_service_date date NOT NULL
);
 #   DROP TABLE public.company_vehicle;
       public         heap    postgres    false            �            1259    19167    company_vehicle_vehicle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_vehicle_vehicle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.company_vehicle_vehicle_id_seq;
       public          postgres    false    222            �           0    0    company_vehicle_vehicle_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.company_vehicle_vehicle_id_seq OWNED BY public.company_vehicle.vehicle_id;
          public          postgres    false    221            �            1259    19329    credit_card_payment_xref    TABLE     w   CREATE TABLE public.credit_card_payment_xref (
    credit_card_id integer NOT NULL,
    payment_id integer NOT NULL
);
 ,   DROP TABLE public.credit_card_payment_xref;
       public         heap    postgres    false            �            1259    19284    credit_cards    TABLE     �   CREATE TABLE public.credit_cards (
    credit_card_id integer NOT NULL,
    address_id integer NOT NULL,
    credit_card_number character varying(255) NOT NULL,
    credit_card_expiry date NOT NULL
);
     DROP TABLE public.credit_cards;
       public         heap    postgres    false            �            1259    19283    credit_cards_credit_card_id_seq    SEQUENCE     �   CREATE SEQUENCE public.credit_cards_credit_card_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.credit_cards_credit_card_id_seq;
       public          postgres    false    235            �           0    0    credit_cards_credit_card_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.credit_cards_credit_card_id_seq OWNED BY public.credit_cards.credit_card_id;
          public          postgres    false    234            �            1259    19126    customer    TABLE       CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    address_id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    phone_number character varying(13) NOT NULL,
    email character varying(255) NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    19125    customer_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public          postgres    false    218            �           0    0    customer_customer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;
          public          postgres    false    217            �            1259    19194    employee    TABLE     o  CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    address_id integer NOT NULL,
    vehicle_id integer NOT NULL,
    job_title character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    phone_number character varying(13) NOT NULL,
    email character varying(255) NOT NULL
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    19193    employee_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_employee_id_seq;
       public          postgres    false    224            �           0    0    employee_employee_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;
          public          postgres    false    223            �            1259    19261    employee_licenses_xref    TABLE     �   CREATE TABLE public.employee_licenses_xref (
    license_id integer NOT NULL,
    employee_id integer NOT NULL,
    expiry_date date NOT NULL
);
 *   DROP TABLE public.employee_licenses_xref;
       public         heap    postgres    false            �            1259    19345 	   inventory    TABLE     �   CREATE TABLE public.inventory (
    item_id integer NOT NULL,
    item_name character varying(255) NOT NULL,
    item_stock integer NOT NULL,
    item_cost numeric(10,2) NOT NULL
);
    DROP TABLE public.inventory;
       public         heap    postgres    false            �            1259    19351    inventory_invoice_xref    TABLE     �   CREATE TABLE public.inventory_invoice_xref (
    invoice_id integer NOT NULL,
    item_id integer NOT NULL,
    item_price numeric(10,2) NOT NULL
);
 *   DROP TABLE public.inventory_invoice_xref;
       public         heap    postgres    false            �            1259    19344    inventory_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.inventory_item_id_seq;
       public          postgres    false    242            �           0    0    inventory_item_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.inventory_item_id_seq OWNED BY public.inventory.item_id;
          public          postgres    false    241            �            1259    19296    invoice    TABLE     �   CREATE TABLE public.invoice (
    invoice_id integer NOT NULL,
    customer_id integer NOT NULL,
    employee_id integer NOT NULL,
    invoice_date date NOT NULL,
    invoice_total double precision NOT NULL
);
    DROP TABLE public.invoice;
       public         heap    postgres    false            �            1259    19295    invoice_invoice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.invoice_invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.invoice_invoice_id_seq;
       public          postgres    false    237            �           0    0    invoice_invoice_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.invoice_invoice_id_seq OWNED BY public.invoice.invoice_id;
          public          postgres    false    236            �            1259    19161    licenses    TABLE     t   CREATE TABLE public.licenses (
    license_id integer NOT NULL,
    license_name character varying(255) NOT NULL
);
    DROP TABLE public.licenses;
       public         heap    postgres    false            �            1259    19160    licenses_license_id_seq    SEQUENCE     �   CREATE SEQUENCE public.licenses_license_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.licenses_license_id_seq;
       public          postgres    false    220            �           0    0    licenses_license_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.licenses_license_id_seq OWNED BY public.licenses.license_id;
          public          postgres    false    219            �            1259    19238    payment_methods    TABLE     �   CREATE TABLE public.payment_methods (
    payment_method_id integer NOT NULL,
    payment_method_name character varying(255) NOT NULL
);
 #   DROP TABLE public.payment_methods;
       public         heap    postgres    false            �            1259    19237 %   payment_methods_payment_method_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_methods_payment_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.payment_methods_payment_method_id_seq;
       public          postgres    false    230            �           0    0 %   payment_methods_payment_method_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.payment_methods_payment_method_id_seq OWNED BY public.payment_methods.payment_method_id;
          public          postgres    false    229            �            1259    19313    payments    TABLE     �   CREATE TABLE public.payments (
    payment_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    invoice_id integer NOT NULL,
    payment_amount double precision NOT NULL
);
    DROP TABLE public.payments;
       public         heap    postgres    false            �            1259    19312    payments_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payments_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.payments_payment_id_seq;
       public          postgres    false    239            �           0    0    payments_payment_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.payments_payment_id_seq OWNED BY public.payments.payment_id;
          public          postgres    false    238            �            1259    19387    payroll    TABLE     .  CREATE TABLE public.payroll (
    employee_id integer NOT NULL,
    tax_bracket_id integer NOT NULL,
    social_insurance_number character varying(11) NOT NULL,
    bank_account_number character varying(20) NOT NULL,
    pay_rate double precision NOT NULL,
    extra_taxes double precision NOT NULL
);
    DROP TABLE public.payroll;
       public         heap    postgres    false            �            1259    19214    pet_type    TABLE     u   CREATE TABLE public.pet_type (
    pet_type_id integer NOT NULL,
    pet_type_name character varying(50) NOT NULL
);
    DROP TABLE public.pet_type;
       public         heap    postgres    false            �            1259    19213    pet_type_pet_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pet_type_pet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pet_type_pet_type_id_seq;
       public          postgres    false    226            �           0    0    pet_type_pet_type_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pet_type_pet_type_id_seq OWNED BY public.pet_type.pet_type_id;
          public          postgres    false    225            �            1259    19221    pets    TABLE     �   CREATE TABLE public.pets (
    pet_id integer NOT NULL,
    pet_type_id integer NOT NULL,
    customer_id integer NOT NULL,
    pet_name character varying(255) NOT NULL
);
    DROP TABLE public.pets;
       public         heap    postgres    false            �            1259    19220    pets_pet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pets_pet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pets_pet_id_seq;
       public          postgres    false    228            �           0    0    pets_pet_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pets_pet_id_seq OWNED BY public.pets.pet_id;
          public          postgres    false    227            �            1259    19371    services_invoice_xref    TABLE     �   CREATE TABLE public.services_invoice_xref (
    invoice_id integer NOT NULL,
    service_id integer NOT NULL,
    service_price double precision NOT NULL
);
 )   DROP TABLE public.services_invoice_xref;
       public         heap    postgres    false            �            1259    19365    services_offered    TABLE     |   CREATE TABLE public.services_offered (
    service_id integer NOT NULL,
    service_name character varying(255) NOT NULL
);
 $   DROP TABLE public.services_offered;
       public         heap    postgres    false            �            1259    19364    services_offered_service_id_seq    SEQUENCE     �   CREATE SEQUENCE public.services_offered_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.services_offered_service_id_seq;
       public          postgres    false    245            �           0    0    services_offered_service_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.services_offered_service_id_seq OWNED BY public.services_offered.service_id;
          public          postgres    false    244            �            1259    19245    tax_bracket    TABLE     t   CREATE TABLE public.tax_bracket (
    tax_bracket_id integer NOT NULL,
    tax_percent double precision NOT NULL
);
    DROP TABLE public.tax_bracket;
       public         heap    postgres    false            �            1259    19244    tax_bracket_tax_bracket_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tax_bracket_tax_bracket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tax_bracket_tax_bracket_id_seq;
       public          postgres    false    232            �           0    0    tax_bracket_tax_bracket_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.tax_bracket_tax_bracket_id_seq OWNED BY public.tax_bracket.tax_bracket_id;
          public          postgres    false    231            �            1259    19403    waste_station    TABLE     �   CREATE TABLE public.waste_station (
    station_id integer NOT NULL,
    customer_id integer NOT NULL,
    address_id integer NOT NULL,
    is_station_indoors boolean NOT NULL,
    location_on_site character varying(255)
);
 !   DROP TABLE public.waste_station;
       public         heap    postgres    false            �            1259    19402    waste_station_station_id_seq    SEQUENCE     �   CREATE SEQUENCE public.waste_station_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.waste_station_station_id_seq;
       public          postgres    false    249            �           0    0    waste_station_station_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.waste_station_station_id_seq OWNED BY public.waste_station.station_id;
          public          postgres    false    248            �           2604    19419    address address_id    DEFAULT     x   ALTER TABLE ONLY public.address ALTER COLUMN address_id SET DEFAULT nextval('public.address_address_id_seq'::regclass);
 A   ALTER TABLE public.address ALTER COLUMN address_id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    19420    company_vehicle vehicle_id    DEFAULT     �   ALTER TABLE ONLY public.company_vehicle ALTER COLUMN vehicle_id SET DEFAULT nextval('public.company_vehicle_vehicle_id_seq'::regclass);
 I   ALTER TABLE public.company_vehicle ALTER COLUMN vehicle_id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    19421    credit_cards credit_card_id    DEFAULT     �   ALTER TABLE ONLY public.credit_cards ALTER COLUMN credit_card_id SET DEFAULT nextval('public.credit_cards_credit_card_id_seq'::regclass);
 J   ALTER TABLE public.credit_cards ALTER COLUMN credit_card_id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    19422    customer customer_id    DEFAULT     |   ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    19423    employee employee_id    DEFAULT     |   ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);
 C   ALTER TABLE public.employee ALTER COLUMN employee_id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    19424    inventory item_id    DEFAULT     v   ALTER TABLE ONLY public.inventory ALTER COLUMN item_id SET DEFAULT nextval('public.inventory_item_id_seq'::regclass);
 @   ALTER TABLE public.inventory ALTER COLUMN item_id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    19425    invoice invoice_id    DEFAULT     x   ALTER TABLE ONLY public.invoice ALTER COLUMN invoice_id SET DEFAULT nextval('public.invoice_invoice_id_seq'::regclass);
 A   ALTER TABLE public.invoice ALTER COLUMN invoice_id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    19426    licenses license_id    DEFAULT     z   ALTER TABLE ONLY public.licenses ALTER COLUMN license_id SET DEFAULT nextval('public.licenses_license_id_seq'::regclass);
 B   ALTER TABLE public.licenses ALTER COLUMN license_id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    19427 !   payment_methods payment_method_id    DEFAULT     �   ALTER TABLE ONLY public.payment_methods ALTER COLUMN payment_method_id SET DEFAULT nextval('public.payment_methods_payment_method_id_seq'::regclass);
 P   ALTER TABLE public.payment_methods ALTER COLUMN payment_method_id DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    19428    payments payment_id    DEFAULT     z   ALTER TABLE ONLY public.payments ALTER COLUMN payment_id SET DEFAULT nextval('public.payments_payment_id_seq'::regclass);
 B   ALTER TABLE public.payments ALTER COLUMN payment_id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    19429    pet_type pet_type_id    DEFAULT     |   ALTER TABLE ONLY public.pet_type ALTER COLUMN pet_type_id SET DEFAULT nextval('public.pet_type_pet_type_id_seq'::regclass);
 C   ALTER TABLE public.pet_type ALTER COLUMN pet_type_id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    19430    pets pet_id    DEFAULT     j   ALTER TABLE ONLY public.pets ALTER COLUMN pet_id SET DEFAULT nextval('public.pets_pet_id_seq'::regclass);
 :   ALTER TABLE public.pets ALTER COLUMN pet_id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    19431    services_offered service_id    DEFAULT     �   ALTER TABLE ONLY public.services_offered ALTER COLUMN service_id SET DEFAULT nextval('public.services_offered_service_id_seq'::regclass);
 J   ALTER TABLE public.services_offered ALTER COLUMN service_id DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    19432    tax_bracket tax_bracket_id    DEFAULT     �   ALTER TABLE ONLY public.tax_bracket ALTER COLUMN tax_bracket_id SET DEFAULT nextval('public.tax_bracket_tax_bracket_id_seq'::regclass);
 I   ALTER TABLE public.tax_bracket ALTER COLUMN tax_bracket_id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    19433    waste_station station_id    DEFAULT     �   ALTER TABLE ONLY public.waste_station ALTER COLUMN station_id SET DEFAULT nextval('public.waste_station_station_id_seq'::regclass);
 G   ALTER TABLE public.waste_station ALTER COLUMN station_id DROP DEFAULT;
       public          postgres    false    248    249    249            �          0    19116    address 
   TABLE DATA           R   COPY public.address (address_id, street, city, province, postal_code) FROM stdin;
    public          postgres    false    216   8�       �          0    19168    company_vehicle 
   TABLE DATA           l   COPY public.company_vehicle (vehicle_id, license_id, vin, make, model, year, last_service_date) FROM stdin;
    public          postgres    false    222   /�       �          0    19329    credit_card_payment_xref 
   TABLE DATA           N   COPY public.credit_card_payment_xref (credit_card_id, payment_id) FROM stdin;
    public          postgres    false    240   ޹       �          0    19284    credit_cards 
   TABLE DATA           j   COPY public.credit_cards (credit_card_id, address_id, credit_card_number, credit_card_expiry) FROM stdin;
    public          postgres    false    235   -�       �          0    19126    customer 
   TABLE DATA           g   COPY public.customer (customer_id, address_id, first_name, last_name, phone_number, email) FROM stdin;
    public          postgres    false    218   ɺ       �          0    19194    employee 
   TABLE DATA           ~   COPY public.employee (employee_id, address_id, vehicle_id, job_title, first_name, last_name, phone_number, email) FROM stdin;
    public          postgres    false    224   I�       �          0    19261    employee_licenses_xref 
   TABLE DATA           V   COPY public.employee_licenses_xref (license_id, employee_id, expiry_date) FROM stdin;
    public          postgres    false    233   I�       �          0    19345 	   inventory 
   TABLE DATA           N   COPY public.inventory (item_id, item_name, item_stock, item_cost) FROM stdin;
    public          postgres    false    242   ��       �          0    19351    inventory_invoice_xref 
   TABLE DATA           Q   COPY public.inventory_invoice_xref (invoice_id, item_id, item_price) FROM stdin;
    public          postgres    false    243   ��       �          0    19296    invoice 
   TABLE DATA           d   COPY public.invoice (invoice_id, customer_id, employee_id, invoice_date, invoice_total) FROM stdin;
    public          postgres    false    237   ��       �          0    19161    licenses 
   TABLE DATA           <   COPY public.licenses (license_id, license_name) FROM stdin;
    public          postgres    false    220   �       �          0    19238    payment_methods 
   TABLE DATA           Q   COPY public.payment_methods (payment_method_id, payment_method_name) FROM stdin;
    public          postgres    false    230   ?�       �          0    19313    payments 
   TABLE DATA           ]   COPY public.payments (payment_id, payment_method_id, invoice_id, payment_amount) FROM stdin;
    public          postgres    false    239   z�       �          0    19387    payroll 
   TABLE DATA           �   COPY public.payroll (employee_id, tax_bracket_id, social_insurance_number, bank_account_number, pay_rate, extra_taxes) FROM stdin;
    public          postgres    false    247   G�       �          0    19214    pet_type 
   TABLE DATA           >   COPY public.pet_type (pet_type_id, pet_type_name) FROM stdin;
    public          postgres    false    226   ��       �          0    19221    pets 
   TABLE DATA           J   COPY public.pets (pet_id, pet_type_id, customer_id, pet_name) FROM stdin;
    public          postgres    false    228   6�       �          0    19371    services_invoice_xref 
   TABLE DATA           V   COPY public.services_invoice_xref (invoice_id, service_id, service_price) FROM stdin;
    public          postgres    false    246   ��       �          0    19365    services_offered 
   TABLE DATA           D   COPY public.services_offered (service_id, service_name) FROM stdin;
    public          postgres    false    245   |�       �          0    19245    tax_bracket 
   TABLE DATA           B   COPY public.tax_bracket (tax_bracket_id, tax_percent) FROM stdin;
    public          postgres    false    232   ��       �          0    19403    waste_station 
   TABLE DATA           r   COPY public.waste_station (station_id, customer_id, address_id, is_station_indoors, location_on_site) FROM stdin;
    public          postgres    false    249   E�       �           0    0    address_address_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.address_address_id_seq', 1, false);
          public          postgres    false    215            �           0    0    company_vehicle_vehicle_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.company_vehicle_vehicle_id_seq', 1, false);
          public          postgres    false    221            �           0    0    credit_cards_credit_card_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.credit_cards_credit_card_id_seq', 1, false);
          public          postgres    false    234            �           0    0    customer_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);
          public          postgres    false    217            �           0    0    employee_employee_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.employee_employee_id_seq', 1, false);
          public          postgres    false    223            �           0    0    inventory_item_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.inventory_item_id_seq', 1, false);
          public          postgres    false    241            �           0    0    invoice_invoice_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.invoice_invoice_id_seq', 1, false);
          public          postgres    false    236            �           0    0    licenses_license_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.licenses_license_id_seq', 1, false);
          public          postgres    false    219            �           0    0 %   payment_methods_payment_method_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.payment_methods_payment_method_id_seq', 1, false);
          public          postgres    false    229            �           0    0    payments_payment_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.payments_payment_id_seq', 1, false);
          public          postgres    false    238            �           0    0    pet_type_pet_type_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pet_type_pet_type_id_seq', 1, false);
          public          postgres    false    225            �           0    0    pets_pet_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pets_pet_id_seq', 1, false);
          public          postgres    false    227            �           0    0    services_offered_service_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.services_offered_service_id_seq', 1, false);
          public          postgres    false    244            �           0    0    tax_bracket_tax_bracket_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tax_bracket_tax_bracket_id_seq', 1, false);
          public          postgres    false    231            �           0    0    waste_station_station_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.waste_station_station_id_seq', 1, false);
          public          postgres    false    248            �           2606    19123    address address_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    216            �           2606    19333 6   credit_card_payment_xref credit_card_payment_xref_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.credit_card_payment_xref
    ADD CONSTRAINT credit_card_payment_xref_pkey PRIMARY KEY (credit_card_id, payment_id);
 `   ALTER TABLE ONLY public.credit_card_payment_xref DROP CONSTRAINT credit_card_payment_xref_pkey;
       public            postgres    false    240    240            �           2606    19289    credit_cards credit_cards_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.credit_cards
    ADD CONSTRAINT credit_cards_pkey PRIMARY KEY (credit_card_id);
 H   ALTER TABLE ONLY public.credit_cards DROP CONSTRAINT credit_cards_pkey;
       public            postgres    false    235            �           2606    19133    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    218            �           2606    19265 2   employee_licenses_xref employee_licenses_xref_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.employee_licenses_xref
    ADD CONSTRAINT employee_licenses_xref_pkey PRIMARY KEY (license_id, employee_id);
 \   ALTER TABLE ONLY public.employee_licenses_xref DROP CONSTRAINT employee_licenses_xref_pkey;
       public            postgres    false    233    233            �           2606    19201    employee employee_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    224            �           2606    19350    inventory inventory_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (item_id);
 B   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pkey;
       public            postgres    false    242            �           2606    19301    invoice invoice_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (invoice_id);
 >   ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_pkey;
       public            postgres    false    237            �           2606    19243 $   payment_methods payment_methods_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT payment_methods_pkey PRIMARY KEY (payment_method_id);
 N   ALTER TABLE ONLY public.payment_methods DROP CONSTRAINT payment_methods_pkey;
       public            postgres    false    230            �           2606    19318    payments payments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (payment_id);
 @   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_pkey;
       public            postgres    false    239            �           2606    19391    payroll payroll_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.payroll
    ADD CONSTRAINT payroll_pkey PRIMARY KEY (employee_id);
 >   ALTER TABLE ONLY public.payroll DROP CONSTRAINT payroll_pkey;
       public            postgres    false    247            �           2606    19166    licenses pk_license_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.licenses
    ADD CONSTRAINT pk_license_id PRIMARY KEY (license_id);
 @   ALTER TABLE ONLY public.licenses DROP CONSTRAINT pk_license_id;
       public            postgres    false    220            �           2606    19226    pets pk_pet_id 
   CONSTRAINT     P   ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pk_pet_id PRIMARY KEY (pet_id);
 8   ALTER TABLE ONLY public.pets DROP CONSTRAINT pk_pet_id;
       public            postgres    false    228            �           2606    19219    pet_type pk_pet_type_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pet_type
    ADD CONSTRAINT pk_pet_type_id PRIMARY KEY (pet_type_id);
 A   ALTER TABLE ONLY public.pet_type DROP CONSTRAINT pk_pet_type_id;
       public            postgres    false    226            �           2606    19408    waste_station pk_station_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.waste_station
    ADD CONSTRAINT pk_station_id PRIMARY KEY (station_id);
 E   ALTER TABLE ONLY public.waste_station DROP CONSTRAINT pk_station_id;
       public            postgres    false    249            �           2606    19173    company_vehicle pk_vehicle_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.company_vehicle
    ADD CONSTRAINT pk_vehicle_id PRIMARY KEY (vehicle_id);
 G   ALTER TABLE ONLY public.company_vehicle DROP CONSTRAINT pk_vehicle_id;
       public            postgres    false    222            �           2606    19375 0   services_invoice_xref services_invoice_xref_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.services_invoice_xref
    ADD CONSTRAINT services_invoice_xref_pkey PRIMARY KEY (invoice_id, service_id);
 Z   ALTER TABLE ONLY public.services_invoice_xref DROP CONSTRAINT services_invoice_xref_pkey;
       public            postgres    false    246    246            �           2606    19370 &   services_offered services_offered_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.services_offered
    ADD CONSTRAINT services_offered_pkey PRIMARY KEY (service_id);
 P   ALTER TABLE ONLY public.services_offered DROP CONSTRAINT services_offered_pkey;
       public            postgres    false    245            �           2606    19250    tax_bracket tax_bracket_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tax_bracket
    ADD CONSTRAINT tax_bracket_pkey PRIMARY KEY (tax_bracket_id);
 F   ALTER TABLE ONLY public.tax_bracket DROP CONSTRAINT tax_bracket_pkey;
       public            postgres    false    232            �           2606    19334 E   credit_card_payment_xref credit_card_payment_xref_credit_card_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.credit_card_payment_xref
    ADD CONSTRAINT credit_card_payment_xref_credit_card_id_fkey FOREIGN KEY (credit_card_id) REFERENCES public.credit_cards(credit_card_id);
 o   ALTER TABLE ONLY public.credit_card_payment_xref DROP CONSTRAINT credit_card_payment_xref_credit_card_id_fkey;
       public          postgres    false    4814    240    235            �           2606    19339 A   credit_card_payment_xref credit_card_payment_xref_payment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.credit_card_payment_xref
    ADD CONSTRAINT credit_card_payment_xref_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.payments(payment_id);
 k   ALTER TABLE ONLY public.credit_card_payment_xref DROP CONSTRAINT credit_card_payment_xref_payment_id_fkey;
       public          postgres    false    239    4818    240            �           2606    19290 )   credit_cards credit_cards_address_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.credit_cards
    ADD CONSTRAINT credit_cards_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.address(address_id);
 S   ALTER TABLE ONLY public.credit_cards DROP CONSTRAINT credit_cards_address_id_fkey;
       public          postgres    false    4794    235    216            �           2606    19134 !   customer customer_address_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.address(address_id);
 K   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_address_id_fkey;
       public          postgres    false    216    218    4794            �           2606    19202 !   employee employee_address_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.address(address_id);
 K   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_address_id_fkey;
       public          postgres    false    4794    224    216            �           2606    19207 !   employee employee_vehicle_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_vehicle_id_fkey FOREIGN KEY (vehicle_id) REFERENCES public.company_vehicle(vehicle_id);
 K   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_vehicle_id_fkey;
       public          postgres    false    222    224    4800            �           2606    19414    waste_station fk_address_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.waste_station
    ADD CONSTRAINT fk_address_id FOREIGN KEY (address_id) REFERENCES public.address(address_id);
 E   ALTER TABLE ONLY public.waste_station DROP CONSTRAINT fk_address_id;
       public          postgres    false    4794    216    249            �           2606    19232    pets fk_customer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pets
    ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 =   ALTER TABLE ONLY public.pets DROP CONSTRAINT fk_customer_id;
       public          postgres    false    228    4796    218            �           2606    19409    waste_station fk_customer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.waste_station
    ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 F   ALTER TABLE ONLY public.waste_station DROP CONSTRAINT fk_customer_id;
       public          postgres    false    4796    249    218            �           2606    19271 %   employee_licenses_xref fk_employee_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_licenses_xref
    ADD CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);
 O   ALTER TABLE ONLY public.employee_licenses_xref DROP CONSTRAINT fk_employee_id;
       public          postgres    false    4802    224    233            �           2606    19392    payroll fk_employee_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payroll
    ADD CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);
 @   ALTER TABLE ONLY public.payroll DROP CONSTRAINT fk_employee_id;
       public          postgres    false    224    247    4802            �           2606    19174    company_vehicle fk_license_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.company_vehicle
    ADD CONSTRAINT fk_license_id FOREIGN KEY (license_id) REFERENCES public.licenses(license_id);
 G   ALTER TABLE ONLY public.company_vehicle DROP CONSTRAINT fk_license_id;
       public          postgres    false    4798    220    222            �           2606    19266 $   employee_licenses_xref fk_license_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_licenses_xref
    ADD CONSTRAINT fk_license_id FOREIGN KEY (license_id) REFERENCES public.licenses(license_id);
 N   ALTER TABLE ONLY public.employee_licenses_xref DROP CONSTRAINT fk_license_id;
       public          postgres    false    220    233    4798            �           2606    19227    pets fk_pet_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pets
    ADD CONSTRAINT fk_pet_type_id FOREIGN KEY (pet_type_id) REFERENCES public.pet_type(pet_type_id);
 =   ALTER TABLE ONLY public.pets DROP CONSTRAINT fk_pet_type_id;
       public          postgres    false    226    4804    228            �           2606    19397    payroll fk_tax_bracket_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payroll
    ADD CONSTRAINT fk_tax_bracket_id FOREIGN KEY (tax_bracket_id) REFERENCES public.tax_bracket(tax_bracket_id);
 C   ALTER TABLE ONLY public.payroll DROP CONSTRAINT fk_tax_bracket_id;
       public          postgres    false    232    247    4810            �           2606    19359 =   inventory_invoice_xref inventory_invoice_xref_invoice_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_invoice_xref
    ADD CONSTRAINT inventory_invoice_xref_invoice_id_fkey FOREIGN KEY (invoice_id) REFERENCES public.invoice(invoice_id);
 g   ALTER TABLE ONLY public.inventory_invoice_xref DROP CONSTRAINT inventory_invoice_xref_invoice_id_fkey;
       public          postgres    false    237    243    4816            �           2606    19354 :   inventory_invoice_xref inventory_invoice_xref_item_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory_invoice_xref
    ADD CONSTRAINT inventory_invoice_xref_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.inventory(item_id);
 d   ALTER TABLE ONLY public.inventory_invoice_xref DROP CONSTRAINT inventory_invoice_xref_item_id_fkey;
       public          postgres    false    4822    243    242            �           2606    19302     invoice invoice_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 J   ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_customer_id_fkey;
       public          postgres    false    218    4796    237            �           2606    19307     invoice invoice_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);
 J   ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_employee_id_fkey;
       public          postgres    false    237    4802    224            �           2606    19324 !   payments payments_invoice_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_invoice_id_fkey FOREIGN KEY (invoice_id) REFERENCES public.invoice(invoice_id);
 K   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_invoice_id_fkey;
       public          postgres    false    239    4816    237            �           2606    19319 (   payments payments_payment_method_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_payment_method_id_fkey FOREIGN KEY (payment_method_id) REFERENCES public.payment_methods(payment_method_id);
 R   ALTER TABLE ONLY public.payments DROP CONSTRAINT payments_payment_method_id_fkey;
       public          postgres    false    230    4808    239            �           2606    19376 ;   services_invoice_xref services_invoice_xref_invoice_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_invoice_xref
    ADD CONSTRAINT services_invoice_xref_invoice_id_fkey FOREIGN KEY (invoice_id) REFERENCES public.invoice(invoice_id);
 e   ALTER TABLE ONLY public.services_invoice_xref DROP CONSTRAINT services_invoice_xref_invoice_id_fkey;
       public          postgres    false    246    237    4816            �           2606    19381 ;   services_invoice_xref services_invoice_xref_service_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_invoice_xref
    ADD CONSTRAINT services_invoice_xref_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services_offered(service_id);
 e   ALTER TABLE ONLY public.services_invoice_xref DROP CONSTRAINT services_invoice_xref_service_id_fkey;
       public          postgres    false    246    245    4824            �   �  x���ώ�0���S�T�?��nUMu��*�2���vd̢��k���Tv���y�7���1>���Z�u�Ԫg+�.����V�=��#���|��P��l�az�����u�{���L'R��z��<�B�x�������I�Њ^eoiV�t
܋ ��4��ЙZ-pG}�`�Bϖo1X�^����TiN���fq�Fv#'!�۠�i�SEj^#G�H �'r��ဥ�}/�q�Xe��I\���RY(�R'?衼BȀg�2���������G�}���p��>K1�(�TZ	2�6���`c�ys܊Wj����$ fY����VZqW{;����9�����\���A�"c�������-��P->�Iw��jc۳{�XO@�������&�z�C�$�U�F�`��첍$��ךLs��b~�s�F�Ǜ��#�2��O��;}���%K|H"6a�{n/ݯ��g���󼿴L�      �   �   x�uα
�0�����@䮗���ML]�A������VW׏�>���CG�dQ�]��4Ly��2!��5TX�&�Ī*���t..&�N�@z�+$]��~ͨx.6������b� ��+S��m��l�����пo�u�>�P~JtE�VJ} {-%      �   ?   x��A !��#������;d$�6�F�`9Ņ�@s�2�ɂ�D��򮶠�WL�H~��[�	�      �   �   x�M��1�V/D�{I�uD�x��g$�F��"C�7�yjM@8�#�ˑ�~85��%Tf�Fm��`"���H�V_+.��.�T�N����>��cnn�|8)��莛ez�w��W`�m�ӏ�[�/� �/"      �   p  x�5��r�0E�忀�xvt2�4R��e��(�A@��<����Aqf�^�e��p���zZ��
K��D�`�OF��ܸ�}����Vל�{�>U���,�&*!.dsr�H�g���[.���)*�Θ����|v�eL���$���'8/�^�'���9�RHp��?�4��Ӻ���#L�����OnNXQ9)2E!�s���)`�Zv�bW_�*M����p�������#���\�Ac�/����w�8�Da��B�T�א|ŧ�՗#ҀA�#x��z��k�&RPB���/��z~�q\�`A�����[ǉ�W�Qµ �h���~�_.G�(�jo�z���I�`o��ܗ�F����8�_|G�I      �   �   x�m��N�0����Ux%=-���h���Iܸ�3P�b���ˌK�>�{�G�Px��7�m>���]��idh�	#�(��o;ɪ[��+Q ��o7ց��=�$)LV
��7�ʷ�S?�������������3�0����Єv���f?�c}���4n�׸̸w�1�yu���I��F�uw1]��>^��Ax�"Ox�>��]��32c��VH"����YEJ����O���#M����`n      �   8   x�-Ǳ  ���%��_���͎
���,C����cv�:��{��uwQw x�      �   �   x�m��N�0��ӧ�H����U�ēH�xYB�FB���>������73ۮB�a���{^@�E�
£_��3�Tx��2���O�,G������a+jE�����&������M��[���h0�-�.p�(2)����_���
B}U��w7[y'�x�V���jTy�R���uD�L��Cd^��,._B�>^�J�4���+���z�_]���Q�s�{!���X�      �   a   x�-�� !߱���r��q���N�:F�"Ma ��CQ8��Y�����<S�U\r	�i�bȣ�u���X��]��)�}5Gj��zk���P      �   �   x�M��q1D�M.��$A.�?#���\]��08L,��Љ#����5$�Y�[{��!_��)��aKcq�8��%�8bG҂\/��,g۴��9Ġ9�)����a%Ƕ�R^��r6��;N������?�':N&i{>�gW���RR�>��a�'�)��:�1P�j���a�=Â�t���n佧>���ًk�f��-��ն�[�s�a��T0���N�la�؂~��~�.N�      �   E   x�=ǫ�0EAͩ�
2���z��������]�����Q�$)��L�
u�9�&W�)ǎ�?�4� |��      �   +   x�3�tN,��2�t.JM�,�2�tIM�&��%�E\1z\\\ �M	�      �   �   x�%�ەE!C�I1Y�^��:&z?|��&���g��Dز�8���D�[H����q�s�wx
�X٪a5��ԟ���5νq.�3��@Ϗ����nn��(x�*ˇ���J#��T���<���ŏ�7t��J�z�7Me���	���7�V4}!nq;9��q4�(�!%{7��k��!~3�\�e7�� ��4�      �   �   x��ɍE1�8?uC��L�q|���$	c�%�U`f���fd�������v<���kڡ+'�*6
�o��X�����3Ԕ��2�i)�ǁ�@`[7ٗ-������O,��9�<	=�ު�m������9�	�(���;�� �)�      �   ?   x�3�t�O�2�tN,�2�t�,J�2���/*N�2��L�2�JLJ�,�2��/�H-����� �'�      �   �   x�UN;
�@��F���2���ւM�Eq#$zK���s1_�d�����C5\,�Zf�E�Y����L��xzT�l�6�(˰��J.�q뮷dNW�mmo)�:��a���<�2�d#B�HH�ⱱ�h��:�K{�z��|�T�Q�QW�`��'"�>�8�      �   �   x��ˍQ�&���:��?���!�
�hx�ֈ�Ub��	���|���`�X��G[��?�p�e,Р�FI�V��m���#���3gŖY1ͮ�~f��f�]��zo�VJ�>�ܳ�N������O�ciʔ?���$�      �   k   x�3�L,JQp�IM�S-�2��/-)�LIU.I,���S��+.I��s��9�\��&�0a�y�p��Ԃ��".3N����T�
s΀T$ 99KN��t$�1z\\\ �:p      �   >   x�̱�0���w��va�9��N}�Qb�f�BfrRq�œ��l���&�L� ~]�A      �   �   x�U�1�0Eg�>@�XY3+�i��&U$z{�� ������-�Z8r�9Z��J�MN�¼�K�Lc��SX������Q�&6�0(4P/�'�܉�
*0?�"{G
-�{�+�3��gO��7���'ħ�z~zg�T���?�����u�r���;�=g     