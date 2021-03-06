PGDMP     *                    u           anah_produc_9091    9.4.10    9.6.2 �    /	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            0	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            1	           1262    16386    anah_produc_9091    DATABASE     �   CREATE DATABASE anah_produc_9091 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
     DROP DATABASE anah_produc_9091;
             anah_produc_9091    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
          
   postgresql    false            2	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
               
   postgresql    false    7                        3079    11863    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            3	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    32779    adresses    TABLE     �  CREATE TABLE adresses (
    id integer NOT NULL,
    latitude numeric(10,6),
    longitude numeric(10,6),
    ligne_1 character varying NOT NULL,
    code_insee character varying NOT NULL,
    code_postal character varying NOT NULL,
    ville character varying NOT NULL,
    departement character varying(10) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    region character varying DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.adresses;
       public         anah_produc_9091    false    7            �            1259    32777    adresses_id_seq    SEQUENCE     q   CREATE SEQUENCE adresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.adresses_id_seq;
       public       anah_produc_9091    false    210    7            4	           0    0    adresses_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE adresses_id_seq OWNED BY adresses.id;
            public       anah_produc_9091    false    209            �            1259    28301    agents    TABLE     .  CREATE TABLE agents (
    id integer NOT NULL,
    username character varying NOT NULL,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    nom character varying,
    prenom character varying,
    intervenant_id integer,
    clavis_id character varying,
    admin boolean DEFAULT false NOT NULL
);
    DROP TABLE public.agents;
       public         anah_produc_9091    false    7            �            1259    28299    agents_id_seq    SEQUENCE     o   CREATE SEQUENCE agents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.agents_id_seq;
       public       anah_produc_9091    false    7    175            5	           0    0    agents_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE agents_id_seq OWNED BY agents.id;
            public       anah_produc_9091    false    174            �            1259    28315    aides    TABLE     �   CREATE TABLE aides (
    id integer NOT NULL,
    libelle character varying,
    active boolean DEFAULT true NOT NULL,
    public boolean DEFAULT true NOT NULL
);
    DROP TABLE public.aides;
       public         anah_produc_9091    false    7            �            1259    28313    aides_id_seq    SEQUENCE     n   CREATE SEQUENCE aides_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.aides_id_seq;
       public       anah_produc_9091    false    7    177            6	           0    0    aides_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE aides_id_seq OWNED BY aides.id;
            public       anah_produc_9091    false    176            �            1259    28326    avis_impositions    TABLE     �  CREATE TABLE avis_impositions (
    id integer NOT NULL,
    numero_fiscal character varying,
    reference_avis character varying,
    annee integer,
    revenu_fiscal_reference integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    projet_id integer,
    declarant_1 character varying,
    declarant_2 character varying,
    nombre_personnes_charge integer
);
 $   DROP TABLE public.avis_impositions;
       public         anah_produc_9091    false    7            �            1259    28324    avis_impositions_id_seq    SEQUENCE     y   CREATE SEQUENCE avis_impositions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.avis_impositions_id_seq;
       public       anah_produc_9091    false    179    7            7	           0    0    avis_impositions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE avis_impositions_id_seq OWNED BY avis_impositions.id;
            public       anah_produc_9091    false    178            �            1259    28349    commentaires    TABLE     
  CREATE TABLE commentaires (
    id integer NOT NULL,
    projet_id integer,
    auteur_id integer,
    auteur_type character varying,
    corps_message text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
     DROP TABLE public.commentaires;
       public         anah_produc_9091    false    7            �            1259    28347    commentaires_id_seq    SEQUENCE     u   CREATE SEQUENCE commentaires_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.commentaires_id_seq;
       public       anah_produc_9091    false    7    181            8	           0    0    commentaires_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE commentaires_id_seq OWNED BY commentaires.id;
            public       anah_produc_9091    false    180            �            1259    28677    contacts    TABLE     �  CREATE TABLE contacts (
    id integer NOT NULL,
    name character varying(128) DEFAULT ''::character varying NOT NULL,
    email character varying(80) DEFAULT ''::character varying NOT NULL,
    phone character varying(20) DEFAULT ''::character varying NOT NULL,
    subject character varying(80) DEFAULT ''::character varying NOT NULL,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.contacts;
       public         anah_produc_9091    false    7            �            1259    28675    contacts_id_seq    SEQUENCE     q   CREATE SEQUENCE contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contacts_id_seq;
       public       anah_produc_9091    false    7    207            9	           0    0    contacts_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE contacts_id_seq OWNED BY contacts.id;
            public       anah_produc_9091    false    206            �            1259    28362    demandes    TABLE     �  CREATE TABLE demandes (
    id integer NOT NULL,
    projet_id integer,
    froid boolean,
    probleme_deplacement boolean,
    changement_chauffage boolean,
    adaptation_salle_de_bain boolean,
    accessibilite boolean,
    ptz boolean,
    annee_construction integer,
    complement text,
    autre text,
    hospitalisation boolean,
    travaux_fenetres boolean,
    travaux_isolation boolean,
    travaux_chauffage boolean,
    travaux_adaptation_sdb boolean,
    travaux_monte_escalier boolean,
    travaux_amenagement_ext boolean,
    travaux_autres text,
    date_achevement_15_ans boolean,
    arrete boolean DEFAULT false NOT NULL,
    saturnisme boolean DEFAULT false NOT NULL
);
    DROP TABLE public.demandes;
       public         anah_produc_9091    false    7            �            1259    28360    demandes_id_seq    SEQUENCE     q   CREATE SEQUENCE demandes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.demandes_id_seq;
       public       anah_produc_9091    false    7    183            :	           0    0    demandes_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE demandes_id_seq OWNED BY demandes.id;
            public       anah_produc_9091    false    182            �            1259    28374 	   documents    TABLE     �   CREATE TABLE documents (
    id integer NOT NULL,
    label character varying,
    fichier character varying,
    projet_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.documents;
       public         anah_produc_9091    false    7            �            1259    28372    documents_id_seq    SEQUENCE     r   CREATE SEQUENCE documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.documents_id_seq;
       public       anah_produc_9091    false    185    7            ;	           0    0    documents_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE documents_id_seq OWNED BY documents.id;
            public       anah_produc_9091    false    184            �            1259    28386 
   evenements    TABLE     �   CREATE TABLE evenements (
    id integer NOT NULL,
    projet_id integer,
    label character varying,
    quand timestamp without time zone,
    producteur_id integer,
    producteur_type character varying
);
    DROP TABLE public.evenements;
       public         anah_produc_9091    false    7            �            1259    28384    evenements_id_seq    SEQUENCE     s   CREATE SEQUENCE evenements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.evenements_id_seq;
       public       anah_produc_9091    false    7    187            <	           0    0    evenements_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE evenements_id_seq OWNED BY evenements.id;
            public       anah_produc_9091    false    186            �            1259    28399    intervenants    TABLE     �  CREATE TABLE intervenants (
    id integer NOT NULL,
    raison_sociale character varying,
    adresse_postale character varying,
    themes character varying[],
    departements character varying[],
    email character varying NOT NULL,
    roles character varying[],
    informations text,
    clavis_service_id character varying,
    phone character varying DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public.intervenants;
       public         anah_produc_9091    false    7            �            1259    28397    intervenants_id_seq    SEQUENCE     u   CREATE SEQUENCE intervenants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.intervenants_id_seq;
       public       anah_produc_9091    false    189    7            =	           0    0    intervenants_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE intervenants_id_seq OWNED BY intervenants.id;
            public       anah_produc_9091    false    188            �            1259    33061    intervenants_operations    TABLE     x   CREATE TABLE intervenants_operations (
    id integer NOT NULL,
    intervenant_id integer,
    operation_id integer
);
 +   DROP TABLE public.intervenants_operations;
       public         anah_produc_9091    false    7            �            1259    33059    intervenants_operations_id_seq    SEQUENCE     �   CREATE SEQUENCE intervenants_operations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.intervenants_operations_id_seq;
       public       anah_produc_9091    false    7    218            >	           0    0    intervenants_operations_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE intervenants_operations_id_seq OWNED BY intervenants_operations.id;
            public       anah_produc_9091    false    217            �            1259    28414    invitations    TABLE     ;  CREATE TABLE invitations (
    id integer NOT NULL,
    projet_id integer,
    intervenant_id integer,
    intermediaire_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    suggested boolean DEFAULT false NOT NULL,
    contacted boolean DEFAULT false NOT NULL
);
    DROP TABLE public.invitations;
       public         anah_produc_9091    false    7            �            1259    28412    invitations_id_seq    SEQUENCE     t   CREATE SEQUENCE invitations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.invitations_id_seq;
       public       anah_produc_9091    false    7    191            ?	           0    0    invitations_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE invitations_id_seq OWNED BY invitations.id;
            public       anah_produc_9091    false    190            �            1259    28440 	   occupants    TABLE     �  CREATE TABLE occupants (
    id integer NOT NULL,
    projet_id integer,
    nom character varying,
    prenom character varying,
    lien_demandeur integer,
    date_de_naissance date,
    civilite integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    demandeur boolean,
    avis_imposition_id integer,
    declarant boolean DEFAULT false NOT NULL,
    civility character varying
);
    DROP TABLE public.occupants;
       public         anah_produc_9091    false    7            �            1259    28438    occupants_id_seq    SEQUENCE     r   CREATE SEQUENCE occupants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.occupants_id_seq;
       public       anah_produc_9091    false    193    7            @	           0    0    occupants_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE occupants_id_seq OWNED BY occupants.id;
            public       anah_produc_9091    false    192            �            1259    33048 
   operations    TABLE       CREATE TABLE operations (
    id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    code_opal character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.operations;
       public         anah_produc_9091    false    7            �            1259    33046    operations_id_seq    SEQUENCE     s   CREATE SEQUENCE operations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.operations_id_seq;
       public       anah_produc_9091    false    7    216            A	           0    0    operations_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE operations_id_seq OWNED BY operations.id;
            public       anah_produc_9091    false    215            �            1259    28452 	   personnes    TABLE     �   CREATE TABLE personnes (
    id integer NOT NULL,
    prenom character varying,
    nom character varying,
    tel character varying,
    email character varying,
    lien_avec_demandeur character varying,
    civilite character varying
);
    DROP TABLE public.personnes;
       public         anah_produc_9091    false    7            �            1259    28450    personnes_id_seq    SEQUENCE     r   CREATE SEQUENCE personnes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.personnes_id_seq;
       public       anah_produc_9091    false    7    195            B	           0    0    personnes_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE personnes_id_seq OWNED BY personnes.id;
            public       anah_produc_9091    false    194            �            1259    28490    prestation_choices    TABLE     �   CREATE TABLE prestation_choices (
    id integer NOT NULL,
    projet_id integer,
    prestation_id integer,
    desired boolean DEFAULT false NOT NULL,
    recommended boolean DEFAULT false NOT NULL,
    selected boolean DEFAULT false NOT NULL
);
 &   DROP TABLE public.prestation_choices;
       public         anah_produc_9091    false    7            �            1259    28488    prestation_choices_id_seq    SEQUENCE     {   CREATE SEQUENCE prestation_choices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.prestation_choices_id_seq;
       public       anah_produc_9091    false    7    201            C	           0    0    prestation_choices_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE prestation_choices_id_seq OWNED BY prestation_choices.id;
            public       anah_produc_9091    false    200            �            1259    28464    prestations    TABLE     �   CREATE TABLE prestations (
    id integer NOT NULL,
    libelle character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    active boolean DEFAULT true NOT NULL
);
    DROP TABLE public.prestations;
       public         anah_produc_9091    false    7            �            1259    28462    prestations_id_seq    SEQUENCE     t   CREATE SEQUENCE prestations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.prestations_id_seq;
       public       anah_produc_9091    false    197    7            D	           0    0    prestations_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE prestations_id_seq OWNED BY prestations.id;
            public       anah_produc_9091    false    196            �            1259    28480    projet_aides    TABLE     }   CREATE TABLE projet_aides (
    id integer NOT NULL,
    projet_id integer,
    aide_id integer,
    amount numeric(10,2)
);
     DROP TABLE public.projet_aides;
       public         anah_produc_9091    false    7            �            1259    28478    projet_aides_id_seq    SEQUENCE     u   CREATE SEQUENCE projet_aides_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.projet_aides_id_seq;
       public       anah_produc_9091    false    199    7            E	           0    0    projet_aides_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE projet_aides_id_seq OWNED BY projet_aides.id;
            public       anah_produc_9091    false    198            �            1259    28503    projets    TABLE       CREATE TABLE projets (
    id integer NOT NULL,
    numero_fiscal character varying,
    reference_avis character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    email character varying,
    tel character varying,
    themes character varying[],
    nb_occupants_a_charge integer DEFAULT 0,
    statut integer DEFAULT 0,
    operateur_id integer,
    opal_numero character varying,
    opal_id character varying,
    personne_id integer,
    disponibilite character varying,
    type_logement character varying,
    etage character varying,
    nb_pieces character varying,
    surface_habitable integer,
    etiquette_avant_travaux character varying,
    niveau_gir integer,
    handicap boolean,
    demandeur_salarie boolean,
    entreprise_plus_10_personnes boolean,
    note_degradation numeric(10,6),
    note_insalubrite numeric(10,6),
    ventilation_adaptee boolean,
    presence_humidite boolean,
    auto_rehabilitation boolean,
    remarques_diagnostic text,
    etiquette_apres_travaux character varying,
    gain_energetique integer,
    travaux_ht_amount numeric(10,2),
    travaux_ttc_amount numeric(10,2),
    loan_amount numeric(10,2),
    precisions_travaux text,
    precisions_financement text,
    plateforme_id character varying,
    autonomie boolean,
    personal_funding_amount numeric(10,2),
    agent_operateur_id integer,
    agent_instructeur_id integer,
    adresse_postale_id integer,
    adresse_a_renover_id integer,
    date_de_visite date,
    amo_amount numeric(10,2),
    maitrise_oeuvre_amount numeric(10,2),
    assiette_subventionnable_amount numeric(10,2),
    consommation_avant_travaux integer,
    consommation_apres_travaux integer,
    future_birth boolean DEFAULT false NOT NULL,
    user_id integer
);
    DROP TABLE public.projets;
       public         anah_produc_9091    false    7            �            1259    28501    projets_id_seq    SEQUENCE     p   CREATE SEQUENCE projets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.projets_id_seq;
       public       anah_produc_9091    false    203    7            F	           0    0    projets_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE projets_id_seq OWNED BY projets.id;
            public       anah_produc_9091    false    202            �            1259    32858    projets_themes    TABLE     M   CREATE TABLE projets_themes (
    projet_id integer,
    theme_id integer
);
 "   DROP TABLE public.projets_themes;
       public         anah_produc_9091    false    7            �            1259    16387    schema_migrations    TABLE     K   CREATE TABLE schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         anah_produc_9091    false    7            �            1259    28692    suggested_operateurs    TABLE     Y   CREATE TABLE suggested_operateurs (
    projet_id integer,
    intervenant_id integer
);
 (   DROP TABLE public.suggested_operateurs;
       public         anah_produc_9091    false    7            �            1259    32871    task_records    TABLE     F   CREATE TABLE task_records (
    version character varying NOT NULL
);
     DROP TABLE public.task_records;
       public         anah_produc_9091    false    7            �            1259    28530    themes    TABLE     P   CREATE TABLE themes (
    id integer NOT NULL,
    libelle character varying
);
    DROP TABLE public.themes;
       public         anah_produc_9091    false    7            �            1259    28528    themes_id_seq    SEQUENCE     o   CREATE SEQUENCE themes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.themes_id_seq;
       public       anah_produc_9091    false    205    7            G	           0    0    themes_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE themes_id_seq OWNED BY themes.id;
            public       anah_produc_9091    false    204            �            1259    33026    users    TABLE     �  CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.users;
       public         anah_produc_9091    false    7            �            1259    33024    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       anah_produc_9091    false    7    214            H	           0    0    users_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE users_id_seq OWNED BY users.id;
            public       anah_produc_9091    false    213                        2604    32782    adresses id    DEFAULT     \   ALTER TABLE ONLY adresses ALTER COLUMN id SET DEFAULT nextval('adresses_id_seq'::regclass);
 :   ALTER TABLE public.adresses ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    210    209    210            �           2604    28304 	   agents id    DEFAULT     X   ALTER TABLE ONLY agents ALTER COLUMN id SET DEFAULT nextval('agents_id_seq'::regclass);
 8   ALTER TABLE public.agents ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    174    175    175            �           2604    28318    aides id    DEFAULT     V   ALTER TABLE ONLY aides ALTER COLUMN id SET DEFAULT nextval('aides_id_seq'::regclass);
 7   ALTER TABLE public.aides ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    176    177    177                        2604    28329    avis_impositions id    DEFAULT     l   ALTER TABLE ONLY avis_impositions ALTER COLUMN id SET DEFAULT nextval('avis_impositions_id_seq'::regclass);
 B   ALTER TABLE public.avis_impositions ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    178    179    179                       2604    28352    commentaires id    DEFAULT     d   ALTER TABLE ONLY commentaires ALTER COLUMN id SET DEFAULT nextval('commentaires_id_seq'::regclass);
 >   ALTER TABLE public.commentaires ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    180    181    181                       2604    28680    contacts id    DEFAULT     \   ALTER TABLE ONLY contacts ALTER COLUMN id SET DEFAULT nextval('contacts_id_seq'::regclass);
 :   ALTER TABLE public.contacts ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    206    207    207                       2604    28365    demandes id    DEFAULT     \   ALTER TABLE ONLY demandes ALTER COLUMN id SET DEFAULT nextval('demandes_id_seq'::regclass);
 :   ALTER TABLE public.demandes ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    183    182    183                       2604    28377    documents id    DEFAULT     ^   ALTER TABLE ONLY documents ALTER COLUMN id SET DEFAULT nextval('documents_id_seq'::regclass);
 ;   ALTER TABLE public.documents ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    184    185    185                       2604    28389    evenements id    DEFAULT     `   ALTER TABLE ONLY evenements ALTER COLUMN id SET DEFAULT nextval('evenements_id_seq'::regclass);
 <   ALTER TABLE public.evenements ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    186    187    187                       2604    28402    intervenants id    DEFAULT     d   ALTER TABLE ONLY intervenants ALTER COLUMN id SET DEFAULT nextval('intervenants_id_seq'::regclass);
 >   ALTER TABLE public.intervenants ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    189    188    189            )           2604    33064    intervenants_operations id    DEFAULT     z   ALTER TABLE ONLY intervenants_operations ALTER COLUMN id SET DEFAULT nextval('intervenants_operations_id_seq'::regclass);
 I   ALTER TABLE public.intervenants_operations ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    218    217    218            	           2604    28417    invitations id    DEFAULT     b   ALTER TABLE ONLY invitations ALTER COLUMN id SET DEFAULT nextval('invitations_id_seq'::regclass);
 =   ALTER TABLE public.invitations ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    191    190    191                       2604    28443    occupants id    DEFAULT     ^   ALTER TABLE ONLY occupants ALTER COLUMN id SET DEFAULT nextval('occupants_id_seq'::regclass);
 ;   ALTER TABLE public.occupants ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    193    192    193            &           2604    33051    operations id    DEFAULT     `   ALTER TABLE ONLY operations ALTER COLUMN id SET DEFAULT nextval('operations_id_seq'::regclass);
 <   ALTER TABLE public.operations ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    215    216    216                       2604    28455    personnes id    DEFAULT     ^   ALTER TABLE ONLY personnes ALTER COLUMN id SET DEFAULT nextval('personnes_id_seq'::regclass);
 ;   ALTER TABLE public.personnes ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    194    195    195                       2604    28493    prestation_choices id    DEFAULT     p   ALTER TABLE ONLY prestation_choices ALTER COLUMN id SET DEFAULT nextval('prestation_choices_id_seq'::regclass);
 D   ALTER TABLE public.prestation_choices ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    200    201    201                       2604    28467    prestations id    DEFAULT     b   ALTER TABLE ONLY prestations ALTER COLUMN id SET DEFAULT nextval('prestations_id_seq'::regclass);
 =   ALTER TABLE public.prestations ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    196    197    197                       2604    28483    projet_aides id    DEFAULT     d   ALTER TABLE ONLY projet_aides ALTER COLUMN id SET DEFAULT nextval('projet_aides_id_seq'::regclass);
 >   ALTER TABLE public.projet_aides ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    198    199    199                       2604    28506 
   projets id    DEFAULT     Z   ALTER TABLE ONLY projets ALTER COLUMN id SET DEFAULT nextval('projets_id_seq'::regclass);
 9   ALTER TABLE public.projets ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    203    202    203                       2604    28533 	   themes id    DEFAULT     X   ALTER TABLE ONLY themes ALTER COLUMN id SET DEFAULT nextval('themes_id_seq'::regclass);
 8   ALTER TABLE public.themes ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    204    205    205            "           2604    33029    users id    DEFAULT     V   ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       anah_produc_9091    false    213    214    214            $	          0    32779    adresses 
   TABLE DATA               �   COPY adresses (id, latitude, longitude, ligne_1, code_insee, code_postal, ville, departement, created_at, updated_at, region) FROM stdin;
    public       anah_produc_9091    false    210   �      I	           0    0    adresses_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('adresses_id_seq', 57, true);
            public       anah_produc_9091    false    209            	          0    28301    agents 
   TABLE DATA               �   COPY agents (id, username, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, nom, prenom, intervenant_id, clavis_id, admin) FROM stdin;
    public       anah_produc_9091    false    175   �      J	           0    0    agents_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('agents_id_seq', 49, true);
            public       anah_produc_9091    false    174            	          0    28315    aides 
   TABLE DATA               5   COPY aides (id, libelle, active, public) FROM stdin;
    public       anah_produc_9091    false    177   ,      K	           0    0    aides_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('aides_id_seq', 27, true);
            public       anah_produc_9091    false    176            	          0    28326    avis_impositions 
   TABLE DATA               �   COPY avis_impositions (id, numero_fiscal, reference_avis, annee, revenu_fiscal_reference, created_at, updated_at, projet_id, declarant_1, declarant_2, nombre_personnes_charge) FROM stdin;
    public       anah_produc_9091    false    179   �-      L	           0    0    avis_impositions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('avis_impositions_id_seq', 50, true);
            public       anah_produc_9091    false    178            	          0    28349    commentaires 
   TABLE DATA               m   COPY commentaires (id, projet_id, auteur_id, auteur_type, corps_message, created_at, updated_at) FROM stdin;
    public       anah_produc_9091    false    181   �2      M	           0    0    commentaires_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('commentaires_id_seq', 20, true);
            public       anah_produc_9091    false    180            !	          0    28677    contacts 
   TABLE DATA               a   COPY contacts (id, name, email, phone, subject, description, created_at, updated_at) FROM stdin;
    public       anah_produc_9091    false    207   �5      N	           0    0    contacts_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('contacts_id_seq', 3, true);
            public       anah_produc_9091    false    206            		          0    28362    demandes 
   TABLE DATA               �  COPY demandes (id, projet_id, froid, probleme_deplacement, changement_chauffage, adaptation_salle_de_bain, accessibilite, ptz, annee_construction, complement, autre, hospitalisation, travaux_fenetres, travaux_isolation, travaux_chauffage, travaux_adaptation_sdb, travaux_monte_escalier, travaux_amenagement_ext, travaux_autres, date_achevement_15_ans, arrete, saturnisme) FROM stdin;
    public       anah_produc_9091    false    183   (7      O	           0    0    demandes_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('demandes_id_seq', 48, true);
            public       anah_produc_9091    false    182            	          0    28374 	   documents 
   TABLE DATA               S   COPY documents (id, label, fichier, projet_id, created_at, updated_at) FROM stdin;
    public       anah_produc_9091    false    185   M<      P	           0    0    documents_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('documents_id_seq', 76, true);
            public       anah_produc_9091    false    184            	          0    28386 
   evenements 
   TABLE DATA               Z   COPY evenements (id, projet_id, label, quand, producteur_id, producteur_type) FROM stdin;
    public       anah_produc_9091    false    187   HB      Q	           0    0    evenements_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('evenements_id_seq', 153, true);
            public       anah_produc_9091    false    186            	          0    28399    intervenants 
   TABLE DATA               �   COPY intervenants (id, raison_sociale, adresse_postale, themes, departements, email, roles, informations, clavis_service_id, phone) FROM stdin;
    public       anah_produc_9091    false    189   AI      R	           0    0    intervenants_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('intervenants_id_seq', 71, true);
            public       anah_produc_9091    false    188            ,	          0    33061    intervenants_operations 
   TABLE DATA               L   COPY intervenants_operations (id, intervenant_id, operation_id) FROM stdin;
    public       anah_produc_9091    false    218   �S      S	           0    0    intervenants_operations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('intervenants_operations_id_seq', 2, true);
            public       anah_produc_9091    false    217            	          0    28414    invitations 
   TABLE DATA               }   COPY invitations (id, projet_id, intervenant_id, intermediaire_id, created_at, updated_at, suggested, contacted) FROM stdin;
    public       anah_produc_9091    false    191   �S      T	           0    0    invitations_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('invitations_id_seq', 77, true);
            public       anah_produc_9091    false    190            	          0    28440 	   occupants 
   TABLE DATA               �   COPY occupants (id, projet_id, nom, prenom, lien_demandeur, date_de_naissance, civilite, created_at, updated_at, demandeur, avis_imposition_id, declarant, civility) FROM stdin;
    public       anah_produc_9091    false    193   ^V      U	           0    0    occupants_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('occupants_id_seq', 90, true);
            public       anah_produc_9091    false    192            *	          0    33048 
   operations 
   TABLE DATA               J   COPY operations (id, name, code_opal, created_at, updated_at) FROM stdin;
    public       anah_produc_9091    false    216   @]      V	           0    0    operations_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('operations_id_seq', 2, true);
            public       anah_produc_9091    false    215            	          0    28452 	   personnes 
   TABLE DATA               X   COPY personnes (id, prenom, nom, tel, email, lien_avec_demandeur, civilite) FROM stdin;
    public       anah_produc_9091    false    195   �]      W	           0    0    personnes_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('personnes_id_seq', 28, true);
            public       anah_produc_9091    false    194            	          0    28490    prestation_choices 
   TABLE DATA               c   COPY prestation_choices (id, projet_id, prestation_id, desired, recommended, selected) FROM stdin;
    public       anah_produc_9091    false    201   �]      X	           0    0    prestation_choices_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('prestation_choices_id_seq', 113, true);
            public       anah_produc_9091    false    200            	          0    28464    prestations 
   TABLE DATA               K   COPY prestations (id, libelle, created_at, updated_at, active) FROM stdin;
    public       anah_produc_9091    false    197   ;_      Y	           0    0    prestations_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('prestations_id_seq', 198, true);
            public       anah_produc_9091    false    196            	          0    28480    projet_aides 
   TABLE DATA               ?   COPY projet_aides (id, projet_id, aide_id, amount) FROM stdin;
    public       anah_produc_9091    false    199   rp      Z	           0    0    projet_aides_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('projet_aides_id_seq', 99, true);
            public       anah_produc_9091    false    198            	          0    28503    projets 
   TABLE DATA               �  COPY projets (id, numero_fiscal, reference_avis, created_at, updated_at, email, tel, themes, nb_occupants_a_charge, statut, operateur_id, opal_numero, opal_id, personne_id, disponibilite, type_logement, etage, nb_pieces, surface_habitable, etiquette_avant_travaux, niveau_gir, handicap, demandeur_salarie, entreprise_plus_10_personnes, note_degradation, note_insalubrite, ventilation_adaptee, presence_humidite, auto_rehabilitation, remarques_diagnostic, etiquette_apres_travaux, gain_energetique, travaux_ht_amount, travaux_ttc_amount, loan_amount, precisions_travaux, precisions_financement, plateforme_id, autonomie, personal_funding_amount, agent_operateur_id, agent_instructeur_id, adresse_postale_id, adresse_a_renover_id, date_de_visite, amo_amount, maitrise_oeuvre_amount, assiette_subventionnable_amount, consommation_avant_travaux, consommation_apres_travaux, future_birth, user_id) FROM stdin;
    public       anah_produc_9091    false    203   �q      [	           0    0    projets_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('projets_id_seq', 47, true);
            public       anah_produc_9091    false    202            %	          0    32858    projets_themes 
   TABLE DATA               6   COPY projets_themes (projet_id, theme_id) FROM stdin;
    public       anah_produc_9091    false    211         �          0    16387    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       anah_produc_9091    false    173   >      "	          0    28692    suggested_operateurs 
   TABLE DATA               B   COPY suggested_operateurs (projet_id, intervenant_id) FROM stdin;
    public       anah_produc_9091    false    208   ��      &	          0    32871    task_records 
   TABLE DATA               (   COPY task_records (version) FROM stdin;
    public       anah_produc_9091    false    212   �      	          0    28530    themes 
   TABLE DATA               &   COPY themes (id, libelle) FROM stdin;
    public       anah_produc_9091    false    205   t�      \	           0    0    themes_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('themes_id_seq', 6, true);
            public       anah_produc_9091    false    204            (	          0    33026    users 
   TABLE DATA               �   COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
    public       anah_produc_9091    false    214   Ղ      ]	           0    0    users_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('users_id_seq', 6, true);
            public       anah_produc_9091    false    213            o           2606    32787    adresses adresses_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY adresses
    ADD CONSTRAINT adresses_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.adresses DROP CONSTRAINT adresses_pkey;
       public         anah_produc_9091    false    210    210            ,           2606    28310    agents agents_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY agents
    ADD CONSTRAINT agents_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.agents DROP CONSTRAINT agents_pkey;
       public         anah_produc_9091    false    175    175            1           2606    28323    aides aides_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY aides
    ADD CONSTRAINT aides_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.aides DROP CONSTRAINT aides_pkey;
       public         anah_produc_9091    false    177    177            3           2606    28334 &   avis_impositions avis_impositions_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY avis_impositions
    ADD CONSTRAINT avis_impositions_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.avis_impositions DROP CONSTRAINT avis_impositions_pkey;
       public         anah_produc_9091    false    179    179            6           2606    28357    commentaires commentaires_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY commentaires
    ADD CONSTRAINT commentaires_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.commentaires DROP CONSTRAINT commentaires_pkey;
       public         anah_produc_9091    false    181    181            j           2606    28689    contacts contacts_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_pkey;
       public         anah_produc_9091    false    207    207            :           2606    28370    demandes demandes_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY demandes
    ADD CONSTRAINT demandes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.demandes DROP CONSTRAINT demandes_pkey;
       public         anah_produc_9091    false    183    183            =           2606    28382    documents documents_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_pkey;
       public         anah_produc_9091    false    185    185            @           2606    28394    evenements evenements_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY evenements
    ADD CONSTRAINT evenements_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.evenements DROP CONSTRAINT evenements_pkey;
       public         anah_produc_9091    false    187    187            {           2606    33066 4   intervenants_operations intervenants_operations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY intervenants_operations
    ADD CONSTRAINT intervenants_operations_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.intervenants_operations DROP CONSTRAINT intervenants_operations_pkey;
       public         anah_produc_9091    false    218    218            H           2606    28407    intervenants intervenants_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY intervenants
    ADD CONSTRAINT intervenants_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.intervenants DROP CONSTRAINT intervenants_pkey;
       public         anah_produc_9091    false    189    189            M           2606    28422    invitations invitations_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY invitations
    ADD CONSTRAINT invitations_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.invitations DROP CONSTRAINT invitations_pkey;
       public         anah_produc_9091    false    191    191            P           2606    28448    occupants occupants_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY occupants
    ADD CONSTRAINT occupants_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.occupants DROP CONSTRAINT occupants_pkey;
       public         anah_produc_9091    false    193    193            w           2606    33058    operations operations_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY operations
    ADD CONSTRAINT operations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.operations DROP CONSTRAINT operations_pkey;
       public         anah_produc_9091    false    216    216            R           2606    28460    personnes personnes_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY personnes
    ADD CONSTRAINT personnes_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.personnes DROP CONSTRAINT personnes_pkey;
       public         anah_produc_9091    false    195    195            \           2606    28498 *   prestation_choices prestation_choices_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY prestation_choices
    ADD CONSTRAINT prestation_choices_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.prestation_choices DROP CONSTRAINT prestation_choices_pkey;
       public         anah_produc_9091    false    201    201            T           2606    28475    prestations prestations_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY prestations
    ADD CONSTRAINT prestations_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.prestations DROP CONSTRAINT prestations_pkey;
       public         anah_produc_9091    false    197    197            X           2606    28485    projet_aides projet_aides_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY projet_aides
    ADD CONSTRAINT projet_aides_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.projet_aides DROP CONSTRAINT projet_aides_pkey;
       public         anah_produc_9091    false    199    199            f           2606    28513    projets projets_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY projets
    ADD CONSTRAINT projets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.projets DROP CONSTRAINT projets_pkey;
       public         anah_produc_9091    false    203    203            h           2606    28538    themes themes_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY themes
    ADD CONSTRAINT themes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.themes DROP CONSTRAINT themes_pkey;
       public         anah_produc_9091    false    205    205            u           2606    33037    users users_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         anah_produc_9091    false    214    214            -           1259    28674    index_agents_on_clavis_id    INDEX     J   CREATE INDEX index_agents_on_clavis_id ON agents USING btree (clavis_id);
 -   DROP INDEX public.index_agents_on_clavis_id;
       public         anah_produc_9091    false    175            .           1259    28311    index_agents_on_intervenant_id    INDEX     T   CREATE INDEX index_agents_on_intervenant_id ON agents USING btree (intervenant_id);
 2   DROP INDEX public.index_agents_on_intervenant_id;
       public         anah_produc_9091    false    175            /           1259    28312    index_agents_on_username    INDEX     O   CREATE UNIQUE INDEX index_agents_on_username ON agents USING btree (username);
 ,   DROP INDEX public.index_agents_on_username;
       public         anah_produc_9091    false    175            4           1259    28335 #   index_avis_impositions_on_projet_id    INDEX     ^   CREATE INDEX index_avis_impositions_on_projet_id ON avis_impositions USING btree (projet_id);
 7   DROP INDEX public.index_avis_impositions_on_projet_id;
       public         anah_produc_9091    false    179            7           1259    28358 /   index_commentaires_on_auteur_type_and_auteur_id    INDEX     s   CREATE INDEX index_commentaires_on_auteur_type_and_auteur_id ON commentaires USING btree (auteur_type, auteur_id);
 C   DROP INDEX public.index_commentaires_on_auteur_type_and_auteur_id;
       public         anah_produc_9091    false    181    181            8           1259    28359    index_commentaires_on_projet_id    INDEX     V   CREATE INDEX index_commentaires_on_projet_id ON commentaires USING btree (projet_id);
 3   DROP INDEX public.index_commentaires_on_projet_id;
       public         anah_produc_9091    false    181            k           1259    28690     index_contacts_on_name_and_email    INDEX     U   CREATE INDEX index_contacts_on_name_and_email ON contacts USING btree (name, email);
 4   DROP INDEX public.index_contacts_on_name_and_email;
       public         anah_produc_9091    false    207    207            ;           1259    28371    index_demandes_on_projet_id    INDEX     N   CREATE INDEX index_demandes_on_projet_id ON demandes USING btree (projet_id);
 /   DROP INDEX public.index_demandes_on_projet_id;
       public         anah_produc_9091    false    183            >           1259    28383    index_documents_on_projet_id    INDEX     P   CREATE INDEX index_documents_on_projet_id ON documents USING btree (projet_id);
 0   DROP INDEX public.index_documents_on_projet_id;
       public         anah_produc_9091    false    185            A           1259    28395 5   index_evenements_on_producteur_type_and_producteur_id    INDEX        CREATE INDEX index_evenements_on_producteur_type_and_producteur_id ON evenements USING btree (producteur_type, producteur_id);
 I   DROP INDEX public.index_evenements_on_producteur_type_and_producteur_id;
       public         anah_produc_9091    false    187    187            B           1259    28396    index_evenements_on_projet_id    INDEX     R   CREATE INDEX index_evenements_on_projet_id ON evenements USING btree (projet_id);
 1   DROP INDEX public.index_evenements_on_projet_id;
       public         anah_produc_9091    false    187            C           1259    28408 '   index_intervenants_on_clavis_service_id    INDEX     f   CREATE INDEX index_intervenants_on_clavis_service_id ON intervenants USING btree (clavis_service_id);
 ;   DROP INDEX public.index_intervenants_on_clavis_service_id;
       public         anah_produc_9091    false    189            D           1259    28409 "   index_intervenants_on_departements    INDEX     Z   CREATE INDEX index_intervenants_on_departements ON intervenants USING gin (departements);
 6   DROP INDEX public.index_intervenants_on_departements;
       public         anah_produc_9091    false    189            E           1259    28410    index_intervenants_on_roles    INDEX     L   CREATE INDEX index_intervenants_on_roles ON intervenants USING gin (roles);
 /   DROP INDEX public.index_intervenants_on_roles;
       public         anah_produc_9091    false    189            F           1259    28411    index_intervenants_on_themes    INDEX     N   CREATE INDEX index_intervenants_on_themes ON intervenants USING gin (themes);
 0   DROP INDEX public.index_intervenants_on_themes;
       public         anah_produc_9091    false    189            x           1259    33067 /   index_intervenants_operations_on_intervenant_id    INDEX     v   CREATE INDEX index_intervenants_operations_on_intervenant_id ON intervenants_operations USING btree (intervenant_id);
 C   DROP INDEX public.index_intervenants_operations_on_intervenant_id;
       public         anah_produc_9091    false    218            y           1259    33068 -   index_intervenants_operations_on_operation_id    INDEX     r   CREATE INDEX index_intervenants_operations_on_operation_id ON intervenants_operations USING btree (operation_id);
 A   DROP INDEX public.index_intervenants_operations_on_operation_id;
       public         anah_produc_9091    false    218            I           1259    28423 %   index_invitations_on_intermediaire_id    INDEX     b   CREATE INDEX index_invitations_on_intermediaire_id ON invitations USING btree (intermediaire_id);
 9   DROP INDEX public.index_invitations_on_intermediaire_id;
       public         anah_produc_9091    false    191            J           1259    28424 #   index_invitations_on_intervenant_id    INDEX     ^   CREATE INDEX index_invitations_on_intervenant_id ON invitations USING btree (intervenant_id);
 7   DROP INDEX public.index_invitations_on_intervenant_id;
       public         anah_produc_9091    false    191            K           1259    28425    index_invitations_on_projet_id    INDEX     T   CREATE INDEX index_invitations_on_projet_id ON invitations USING btree (projet_id);
 2   DROP INDEX public.index_invitations_on_projet_id;
       public         anah_produc_9091    false    191            N           1259    28449    index_occupants_on_projet_id    INDEX     P   CREATE INDEX index_occupants_on_projet_id ON occupants USING btree (projet_id);
 0   DROP INDEX public.index_occupants_on_projet_id;
       public         anah_produc_9091    false    193            Y           1259    28499 )   index_prestation_choices_on_prestation_id    INDEX     j   CREATE INDEX index_prestation_choices_on_prestation_id ON prestation_choices USING btree (prestation_id);
 =   DROP INDEX public.index_prestation_choices_on_prestation_id;
       public         anah_produc_9091    false    201            Z           1259    28500 %   index_prestation_choices_on_projet_id    INDEX     b   CREATE INDEX index_prestation_choices_on_projet_id ON prestation_choices USING btree (projet_id);
 9   DROP INDEX public.index_prestation_choices_on_projet_id;
       public         anah_produc_9091    false    201            U           1259    28486    index_projet_aides_on_aide_id    INDEX     R   CREATE INDEX index_projet_aides_on_aide_id ON projet_aides USING btree (aide_id);
 1   DROP INDEX public.index_projet_aides_on_aide_id;
       public         anah_produc_9091    false    199            V           1259    28487    index_projet_aides_on_projet_id    INDEX     V   CREATE INDEX index_projet_aides_on_projet_id ON projet_aides USING btree (projet_id);
 3   DROP INDEX public.index_projet_aides_on_projet_id;
       public         anah_produc_9091    false    199            ]           1259    32794 %   index_projets_on_adresse_a_renover_id    INDEX     b   CREATE INDEX index_projets_on_adresse_a_renover_id ON projets USING btree (adresse_a_renover_id);
 9   DROP INDEX public.index_projets_on_adresse_a_renover_id;
       public         anah_produc_9091    false    203            ^           1259    32788 #   index_projets_on_adresse_postale_id    INDEX     ^   CREATE INDEX index_projets_on_adresse_postale_id ON projets USING btree (adresse_postale_id);
 7   DROP INDEX public.index_projets_on_adresse_postale_id;
       public         anah_produc_9091    false    203            _           1259    32771 %   index_projets_on_agent_instructeur_id    INDEX     b   CREATE INDEX index_projets_on_agent_instructeur_id ON projets USING btree (agent_instructeur_id);
 9   DROP INDEX public.index_projets_on_agent_instructeur_id;
       public         anah_produc_9091    false    203            `           1259    28668 #   index_projets_on_agent_operateur_id    INDEX     ^   CREATE INDEX index_projets_on_agent_operateur_id ON projets USING btree (agent_operateur_id);
 7   DROP INDEX public.index_projets_on_agent_operateur_id;
       public         anah_produc_9091    false    203            a           1259    28514    index_projets_on_operateur_id    INDEX     R   CREATE INDEX index_projets_on_operateur_id ON projets USING btree (operateur_id);
 1   DROP INDEX public.index_projets_on_operateur_id;
       public         anah_produc_9091    false    203            b           1259    28515    index_projets_on_personne_id    INDEX     P   CREATE INDEX index_projets_on_personne_id ON projets USING btree (personne_id);
 0   DROP INDEX public.index_projets_on_personne_id;
       public         anah_produc_9091    false    203            c           1259    28516    index_projets_on_themes    INDEX     D   CREATE INDEX index_projets_on_themes ON projets USING gin (themes);
 +   DROP INDEX public.index_projets_on_themes;
       public         anah_produc_9091    false    203            d           1259    33040    index_projets_on_user_id    INDEX     H   CREATE INDEX index_projets_on_user_id ON projets USING btree (user_id);
 ,   DROP INDEX public.index_projets_on_user_id;
       public         anah_produc_9091    false    203            p           1259    32861 !   index_projets_themes_on_projet_id    INDEX     Z   CREATE INDEX index_projets_themes_on_projet_id ON projets_themes USING btree (projet_id);
 5   DROP INDEX public.index_projets_themes_on_projet_id;
       public         anah_produc_9091    false    211            q           1259    32862     index_projets_themes_on_theme_id    INDEX     X   CREATE INDEX index_projets_themes_on_theme_id ON projets_themes USING btree (theme_id);
 4   DROP INDEX public.index_projets_themes_on_theme_id;
       public         anah_produc_9091    false    211            l           1259    28696 ,   index_suggested_operateurs_on_intervenant_id    INDEX     p   CREATE INDEX index_suggested_operateurs_on_intervenant_id ON suggested_operateurs USING btree (intervenant_id);
 @   DROP INDEX public.index_suggested_operateurs_on_intervenant_id;
       public         anah_produc_9091    false    208            m           1259    28695 '   index_suggested_operateurs_on_projet_id    INDEX     f   CREATE INDEX index_suggested_operateurs_on_projet_id ON suggested_operateurs USING btree (projet_id);
 ;   DROP INDEX public.index_suggested_operateurs_on_projet_id;
       public         anah_produc_9091    false    208            r           1259    33038    index_users_on_email    INDEX     G   CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public         anah_produc_9091    false    214            s           1259    33039 #   index_users_on_reset_password_token    INDEX     e   CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public         anah_produc_9091    false    214            *           1259    16393    unique_schema_migrations    INDEX     Y   CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);
 ,   DROP INDEX public.unique_schema_migrations;
       public         anah_produc_9091    false    173            �           2606    28620 &   prestation_choices fk_rails_029ad0be69    FK CONSTRAINT     �   ALTER TABLE ONLY prestation_choices
    ADD CONSTRAINT fk_rails_029ad0be69 FOREIGN KEY (prestation_id) REFERENCES prestations(id);
 P   ALTER TABLE ONLY public.prestation_choices DROP CONSTRAINT fk_rails_029ad0be69;
       public       anah_produc_9091    false    197    2132    201            �           2606    32795    projets fk_rails_196cac4b63    FK CONSTRAINT     |   ALTER TABLE ONLY projets
    ADD CONSTRAINT fk_rails_196cac4b63 FOREIGN KEY (adresse_a_renover_id) REFERENCES adresses(id);
 E   ALTER TABLE ONLY public.projets DROP CONSTRAINT fk_rails_196cac4b63;
       public       anah_produc_9091    false    203    210    2159            �           2606    28585    invitations fk_rails_1e8ee58038    FK CONSTRAINT     t   ALTER TABLE ONLY invitations
    ADD CONSTRAINT fk_rails_1e8ee58038 FOREIGN KEY (projet_id) REFERENCES projets(id);
 I   ALTER TABLE ONLY public.invitations DROP CONSTRAINT fk_rails_1e8ee58038;
       public       anah_produc_9091    false    191    203    2150            �           2606    33069 +   intervenants_operations fk_rails_277f817590    FK CONSTRAINT     �   ALTER TABLE ONLY intervenants_operations
    ADD CONSTRAINT fk_rails_277f817590 FOREIGN KEY (intervenant_id) REFERENCES intervenants(id);
 U   ALTER TABLE ONLY public.intervenants_operations DROP CONSTRAINT fk_rails_277f817590;
       public       anah_produc_9091    false    218    2120    189            �           2606    28635    projets fk_rails_2bec1bd39a    FK CONSTRAINT     t   ALTER TABLE ONLY projets
    ADD CONSTRAINT fk_rails_2bec1bd39a FOREIGN KEY (personne_id) REFERENCES personnes(id);
 E   ALTER TABLE ONLY public.projets DROP CONSTRAINT fk_rails_2bec1bd39a;
       public       anah_produc_9091    false    203    2130    195            �           2606    28615     projet_aides fk_rails_378f5d91bc    FK CONSTRAINT     u   ALTER TABLE ONLY projet_aides
    ADD CONSTRAINT fk_rails_378f5d91bc FOREIGN KEY (projet_id) REFERENCES projets(id);
 J   ALTER TABLE ONLY public.projet_aides DROP CONSTRAINT fk_rails_378f5d91bc;
       public       anah_produc_9091    false    2150    203    199            �           2606    28625 &   prestation_choices fk_rails_3b73633073    FK CONSTRAINT     {   ALTER TABLE ONLY prestation_choices
    ADD CONSTRAINT fk_rails_3b73633073 FOREIGN KEY (projet_id) REFERENCES projets(id);
 P   ALTER TABLE ONLY public.prestation_choices DROP CONSTRAINT fk_rails_3b73633073;
       public       anah_produc_9091    false    201    2150    203            �           2606    33041    projets fk_rails_45d7885d71    FK CONSTRAINT     l   ALTER TABLE ONLY projets
    ADD CONSTRAINT fk_rails_45d7885d71 FOREIGN KEY (user_id) REFERENCES users(id);
 E   ALTER TABLE ONLY public.projets DROP CONSTRAINT fk_rails_45d7885d71;
       public       anah_produc_9091    false    2165    214    203            }           2606    28555 $   avis_impositions fk_rails_480feb2806    FK CONSTRAINT     y   ALTER TABLE ONLY avis_impositions
    ADD CONSTRAINT fk_rails_480feb2806 FOREIGN KEY (projet_id) REFERENCES projets(id);
 N   ALTER TABLE ONLY public.avis_impositions DROP CONSTRAINT fk_rails_480feb2806;
       public       anah_produc_9091    false    2150    179    203            �           2606    28669    projets fk_rails_4851693200    FK CONSTRAINT     x   ALTER TABLE ONLY projets
    ADD CONSTRAINT fk_rails_4851693200 FOREIGN KEY (agent_operateur_id) REFERENCES agents(id);
 E   ALTER TABLE ONLY public.projets DROP CONSTRAINT fk_rails_4851693200;
       public       anah_produc_9091    false    2092    203    175            �           2606    33074 +   intervenants_operations fk_rails_507835f246    FK CONSTRAINT     �   ALTER TABLE ONLY intervenants_operations
    ADD CONSTRAINT fk_rails_507835f246 FOREIGN KEY (operation_id) REFERENCES operations(id);
 U   ALTER TABLE ONLY public.intervenants_operations DROP CONSTRAINT fk_rails_507835f246;
       public       anah_produc_9091    false    2167    218    216            �           2606    32789    projets fk_rails_5333e69996    FK CONSTRAINT     z   ALTER TABLE ONLY projets
    ADD CONSTRAINT fk_rails_5333e69996 FOREIGN KEY (adresse_postale_id) REFERENCES adresses(id);
 E   ALTER TABLE ONLY public.projets DROP CONSTRAINT fk_rails_5333e69996;
       public       anah_produc_9091    false    203    210    2159            �           2606    28570    documents fk_rails_5550801520    FK CONSTRAINT     r   ALTER TABLE ONLY documents
    ADD CONSTRAINT fk_rails_5550801520 FOREIGN KEY (projet_id) REFERENCES projets(id);
 G   ALTER TABLE ONLY public.documents DROP CONSTRAINT fk_rails_5550801520;
       public       anah_produc_9091    false    2150    203    185            �           2606    28575    evenements fk_rails_57327e745e    FK CONSTRAINT     s   ALTER TABLE ONLY evenements
    ADD CONSTRAINT fk_rails_57327e745e FOREIGN KEY (projet_id) REFERENCES projets(id);
 H   ALTER TABLE ONLY public.evenements DROP CONSTRAINT fk_rails_57327e745e;
       public       anah_produc_9091    false    187    2150    203            |           2606    28550    agents fk_rails_96ced4800f    FK CONSTRAINT     y   ALTER TABLE ONLY agents
    ADD CONSTRAINT fk_rails_96ced4800f FOREIGN KEY (intervenant_id) REFERENCES intervenants(id);
 D   ALTER TABLE ONLY public.agents DROP CONSTRAINT fk_rails_96ced4800f;
       public       anah_produc_9091    false    175    189    2120            �           2606    28630    projets fk_rails_a00833b394    FK CONSTRAINT     x   ALTER TABLE ONLY projets
    ADD CONSTRAINT fk_rails_a00833b394 FOREIGN KEY (operateur_id) REFERENCES intervenants(id);
 E   ALTER TABLE ONLY public.projets DROP CONSTRAINT fk_rails_a00833b394;
       public       anah_produc_9091    false    2120    203    189            �           2606    28610     projet_aides fk_rails_ad2d7df8bb    FK CONSTRAINT     q   ALTER TABLE ONLY projet_aides
    ADD CONSTRAINT fk_rails_ad2d7df8bb FOREIGN KEY (aide_id) REFERENCES aides(id);
 J   ALTER TABLE ONLY public.projet_aides DROP CONSTRAINT fk_rails_ad2d7df8bb;
       public       anah_produc_9091    false    177    199    2097            �           2606    28590    occupants fk_rails_bcb88bf175    FK CONSTRAINT     r   ALTER TABLE ONLY occupants
    ADD CONSTRAINT fk_rails_bcb88bf175 FOREIGN KEY (projet_id) REFERENCES projets(id);
 G   ALTER TABLE ONLY public.occupants DROP CONSTRAINT fk_rails_bcb88bf175;
       public       anah_produc_9091    false    2150    193    203            ~           2606    28560     commentaires fk_rails_c7d0b5e593    FK CONSTRAINT     u   ALTER TABLE ONLY commentaires
    ADD CONSTRAINT fk_rails_c7d0b5e593 FOREIGN KEY (projet_id) REFERENCES projets(id);
 J   ALTER TABLE ONLY public.commentaires DROP CONSTRAINT fk_rails_c7d0b5e593;
       public       anah_produc_9091    false    203    181    2150            �           2606    28580    invitations fk_rails_df55ef55f1    FK CONSTRAINT     ~   ALTER TABLE ONLY invitations
    ADD CONSTRAINT fk_rails_df55ef55f1 FOREIGN KEY (intervenant_id) REFERENCES intervenants(id);
 I   ALTER TABLE ONLY public.invitations DROP CONSTRAINT fk_rails_df55ef55f1;
       public       anah_produc_9091    false    189    191    2120            �           2606    32772    projets fk_rails_e6e1562afd    FK CONSTRAINT     z   ALTER TABLE ONLY projets
    ADD CONSTRAINT fk_rails_e6e1562afd FOREIGN KEY (agent_instructeur_id) REFERENCES agents(id);
 E   ALTER TABLE ONLY public.projets DROP CONSTRAINT fk_rails_e6e1562afd;
       public       anah_produc_9091    false    2092    203    175                       2606    28565    demandes fk_rails_efcf1d840b    FK CONSTRAINT     q   ALTER TABLE ONLY demandes
    ADD CONSTRAINT fk_rails_efcf1d840b FOREIGN KEY (projet_id) REFERENCES projets(id);
 F   ALTER TABLE ONLY public.demandes DROP CONSTRAINT fk_rails_efcf1d840b;
       public       anah_produc_9091    false    183    2150    203            $	   �  x����n�H���Sp���:u/�,�N����f1�]�&@�^��ߠ7�3~�����،lq� $���\�f�/�6V��.�0&�L�c�ob^����l��m��jb�QO)E����m󀯙�
�
)r�+iV��B)
fδ��_I������H�������@�Ӻ���c9T�h���D���?�u���x��3-B:;	�|;�$T�����������>ve�b�+ǝ?�-����M<~|�s�9ӂ$3H�W�?�z ��cٱ_�5";����u;�lCpjδ �i��9|�K"'�zR��e?ıˤQ
ɂ��*�O��֓=v֝iA6�n�s�c���C��:�vنS��8Bdi���"[Ǿl��m�c�� ��i�����;���Z��i��C���'0D"{[n6%��)��WqsW���Q��X��'�� V�	(#�S�������Z�M���+0 
�ǟ�W�����k��8�r
g�1-$?�L{TS!�ڐ��W}�_UH���3�;����o���=��]��E�Ф�T.ܬ�YJo5���S�m�|���4FY�1.x�t{s����˳����;�@��,�T�	�{��!?O��f�XĦxz����~�%3g��
B�u	�[���/W?�Mʕ�K�3M��>����M9#���)������`)��HRe�m�P�cW ���h�H�X&&a� �L��	�M���ew�oee�%3��ߣ���=kV�L�%�R+�Q��3M�\�$����Y�i�V_���}S��و�ϒ�L-��ھs�!��H�%�iB�3m�$��:f!�l�!���]{��2+Ɠ�
]���}���]��g&�9╥9��r��&��t���!0�Qx���;��o8 �t����O��y�7����BsC7Qa�t��ŏUD�n�X��1��!��A(�p�|�,����c�J��Ҡ�����逃��[�� f��C2���J�����ԩ�c�俖��9 ВL��#����ؿ�\���&�Y^P(��hp)(����MZ|��6eR��$E��ED������w:�a;gz�����Eyt\k&�䤎_QVrdܔ}
L�UJ���^�r�`fr���QK���f����(�폹�� x�g���_����eWeΐpx
</�C��{g�!'�R��h�x�^^5m�Ao�`؄�E+V+
�l}��1�Sf�`��ά���4k:dH�3g�����3��}�!�b�c��>���
�]-��Ao�7W��8%tZ��)2cJ/.��a��B�h�&c��Vv2��}���Z���<C�˲�Z��ʻ�
�]�5�<_^5M8��(�-ZaE ��H\r�[V��_2E�<y�\A�v���'OD9ъ�T.}b"�+�߮���l0^����{
+�s$��L%T���oXTF2��U��Ml������rd �-B��浛7��z�|P��a����YӄM��V�]:���|�Gp�jx�|W��ﱻ唑|��@}*"��t8oq��;$�~�[B�@��i�d��?���@�ɹ�o1�t�S,�˺l�?���P��Y�O���x�j�4!�;Q4��Y#$J�|~r�]�~��͘�ޤ�r����VZ$V��oyjb�taRi=g�ค��@�f��h��_ġ�u�$�7I��/����}�bj~�P�s�*�:�k�g�/���wa�      	   t  x��Z[r��.�BPG�|�%a[3B���ܘ�z��س��:��{�A�И	G8hJU�Y�:'�Y�<�E1�_,��8K�(��Lr�ι<��L��-�|��.)ZҪ�B"�1N2��1N&�3�!尸�#�oI��"�Vr�$II#�}�׻�c��,c�2o�e�Sl��/�"��.�f�d�3�6'q&tK˖҉�A谳�ZƵ�I��[����MD��G�9�Ʊ�PA)sX\�A:�K���]�� [�&��)�=������<O����χ�����b��/����kt���%p/.�.� �-��?b�v���A�-���uқ���-��~�?��%��o���l4�JsA~y�Ɇ�o�-m�o���Tݎ%�44Jz�O;R�!�מns���]a^"d�{�w7��gv?�L'��P�i���}�^'y�L�׼x�����n�/��t�k	gB��oI�p+���KB$N)��t�X�?t�v���&ío����6���}�k��Qe���׆\��h�_���)���<�cK'����IlÉ�q�.����kv�G����;�U�/� ��"`[t2��9��-!�Q7�"W	jG���F�yhXB�����1��Ɣf��xۊ��+d�$�z��es��bh�,��j�+*F�dH4���ڒ6��[Lc۝���u�����O7�j�S�[�ˇq0C�|t4o�6�d���.���_��$���I���}�A��ҴPR��n�C����p3Tn$f��9���j^��ͳ�bAʻ�qJ��O�
��f1z�mq�l�~Ju�x��kO�&����=,�#B����٧n�C�Ϯ�4F��V@�u����0bg�X]�/�C=�<];��$X��wV]i�g�����&aN�F|w׾�>�_��H.�Z<|a�<[�3�/��5��/����NR��T���K��9���]+��6
Dv�8�a����mv�֙I�ea�%���)0�/��Q����w���Z��H����Mue��n���"�P����y�}vս{@RDeІ�&ƓcY�T�����0.	�HI�����o�Dl��mܰC��#9�9}�0�l8O�/7�\$���{�l�X�R�t��,'D�X�O�u6O�/�"C�L��2z����h�>�h&�S�j�7-e���\0;TݨP�+�+�Y����e/���vW*N}kEJ�rd1���A�.1�WE�	oC�s[�#�tOc�K��&�6n�4�bX;���S�����w�Z��F��{��Y'��4�ԉ��$� ��d�!,���7�f]�Uh�xi�P�"��A3� [��ʱ��h�8A9��y��y�}CX�4��ϒ���P�bF�h��
������2�n��z�w�P��U�#N/J��ҺZQڈs\ ݧ=�с�Ӳ$YSð�5`M��rI��M��@��T�[�a�1j	��vYu�;�G� ���8���U��N7 iax�h�ˬ�⃬��~�$@�<�D�rnܱ%B
��/�=چ+'�r�D �eڻl�����APP)�H{|�<eK$��b8g�}�5A�i��kwl��`�l�.f��5�!�#+��e�,C�ƎX��,�A>E^LA��g=�x�S#�±��-y��A5�4h����O�[v�Vy��(1�����"
\�[RIp�EG]�Ҽv�c`ΐ�<�T�6*xE4�3!u�k>l�3l�贰Eo}2�g��변��ة$G#@S[�B�`ScO��rz��0Έi�6ͮ��|@���C "�ɣ|���\��l����|2�ϓ�E��d�8�3�X0k��/�8������[��k�jB�s⨣�^�k���Io�]�Lsf���})��7ҟ�F�h��r�	-��&�+�)<咥�F�'��n�Д�Ǌ[`��YU�q+�I�F�d�v�7�K6��K����:��e��l���nspuS�&v<l����b��	�E�! ��ǈ5���4	����iN(��6��=�Qc��(JnM�=��V�s�s?)OtC�:,��syl���n�JXsx	]B�T�v}��9�`���j5�D ��#k4#�:5g����	6i��hE����K�ʦr��ۆ3iVƮ>�(��#�8-��q�q�x���U>]��Nm��k��QAh��6��-i�)ק��Fd�t���n<�o�`�����1�mć@�YID���b�`��V!�@ȸ�qˡ��kTe������
��v�Ĝ~|'�3���l�h�0�)�i�v�[\K	�o�'�]m�
�E�.��7����4����c���ئ�Z�Ծ�L�,uk�(�����9���V��c�.hQ�����i"���J�c���43:,΃	�ꦝ����_뻆����gr��t�u��Q���^pű����9wl����l��(�p�U\�N�k#�+� #��T��d�|5_%�k���'��7�h`ؒ��K'�v#�^��3A-k�Ѭ�S�7E�:�~�g�s�f�OG��b2�c-Kܺ�C:�w����'��ԼHh������}�!.�i���&U�e���H�!�pӈAAA2`��d��7�?��BF物9�������S�Q�(����<`��N��~_�1������_�s��Ͳɪ�OL��D�8�6J[Y�ZN�Y��5�4_�(���A��fo����fk�ד
-O��۔j�,�:A1��d��i<f����!�C�r2�%dgΨ振�ҫn��o�?5q���|�L8�}lD,�e�<R,��Uqu|AE��H��-F6���D�,��V���%<	��6��+�׽D\���d8_�Z`�(��b���LDD�N��ؾ��(�� �{��+���)��iR(nu���|f�ך�4��F�­ȗy�E���.�P8R
��+4���F72f(yA���B� d荛������S��k?����ŏ�o��2�ذ����Q�����b�+�vH�Hlid�w���[FAo��lj=)QنQ�(*;�(yN7�"���]W��+B_�
��EZ���d0�/F�b��P��z'b�zz�-B*�$��BH�]Ҕ$�*�=��Ӥ"r�q�O6H�������v�꽍�8�f��x6Y�6̶��x���BU���X>��'1[�����0��:,N���_}��<<�I5�x|{F/�#C�U'W;�S�0孮ˡ$��������1�^�&�X�aq�K��g %=��"#�D�l��l��vcHn����4LG�!^+v�ㄭK ˕85�D,��?d������H/{�ǴC0��#���\�x���d�d�M��{�ƞW�Ko]���oB�n�_��X^�9���8K������~�Ӊ�;q[\����V3�*b�E!�ܱ��l��(C����&��}[�QVj⳿'�޽�?h�7      	   m  x�m�MN�0���)��Hm�����-r*Ă�[��qBb��4H9Gn�IpfR��}�3�yHl�J�$Ӕm�=9�}z���Oy��V+:��_�?�����eaT�4�Ӿ+����`��Fd�,W��F[E���>+���{.WJZ8�$|���������lb��1���ݭ��1aB��	Yζ����fM�JT3�L�Wb:G����՛�%�#�,!�m�~x`�hmn��Ȭn�PMpu�t�{B�L��,�)db���A:oЋʧ.$��x|*a�k�4����#��U3�L�Y�.�Y�ĠI��2�i���3���f�ܺo��w�������-äK���]U鬓�|�y�7�ܜ      	     x�}W[��H���FQ�~ꯁ6#[H^ޝ	�l����B�1�(�i�Y���W�*�z�Q���bB"���Q%Į�9�o�B�B���Jh�k��͚�UC:����u����!�}>]�e*w�&Tl��!�s��
�/Gf�y��ri�d��i���\��p~��i�_�4���6�bUqH���E�X�������[3ły��~쏩��5j��Y�O������g�8߬-�&ZF��L��kNC���e���t��w��U:�T�_�O�޽N�iv��'��UL!x�Z�Ul�&�+Oa.��wN�x`�o�]3��4(�v<��1/4�(8FF�E�%!�?�y���ѹ֮5����S�5!?��˔ߪ��)��x J0D��df�$��SrO�M�x�1��U/�xM�_�a�Kܡ""1ƪ5� �K䅐zV� ��v4��Vm#1��US�f���	M�M�j7N�0�`9�F�v�D#YR4�e�@K�,���4�64�Y]3��;�ဎ[诠tљ���@���W/�z�v���Q2�W,�z-�Fs��ͨ�AFȩQ�]QUQk��մ$���8Vo�L��K�v�dwo��Dm�i���N�#�y![S(Ѱ6�)�f�������/�i�"��t;�Ҋ�r 5�����<�������p��(�>�����~�F(K��.�K����޹��q�|����Fm�֮��B��?i�O�F����^�Å+��`St��x�BMG!>��o56̐<�fB��tD�A�K�1�6���BQB��;X���-S�P}����|��T=������㰿�`
�1�َ����*�$rW��&�	�}��I�E�5ME͇E��ː-{��pіHX1�_��Az�+`,��j㬇*������+Eئ���8t]��x)ŀ�!��@`LKށ������������HίX��4���>w��|�5�/�-�z�A���)��gyL�+W�$�8z�8�fBDHr�P�c��-oL[Q!���+�S���u/<OK��0�"�����``�������r�W�nGݘ"��8�k��	R�8Kc
���e��Y3�Yx�Q6o��<N�|Z��U�,�%����<��+ t|n�Ȏ\X3{Y���C��u��-!�}!޶9f/��郞f��Qm�F��	n�~ܗc���d1P1�h��CR9]��l>S�?X�4��5�4�Sw���]0X�E\�r�������j ��>��Y����SŽׄ��vlc�=ү�P>�S����#��z{!���f����W      	   '  x�}T�n�:]K_1�l�o1�\���:���ν�l�mYȔKIگ�H�?v���:��M�C�̜sfD���>[�'�	#4�!�h�� y�X&�\N�R��&T$�vo�/aY�â\m`��>�P����b�a�Y<,֫7W�BЂ�,�"�t"�*D{͹�_�!���fk�ã��U;t`�����Y�~�o�`�2�v��`����&�������z`��q�nv&@xn�x���X�~��`����L�G�����j~Q��-��\��4��䩸c�u�u�1�RϘ��sew�k�Ƿ�\s5[��_�k�v=��
�頾r���P���ZTDeJSA�D(EyU����3��n�|���.�6��^��X�.��%\��PJ������g`�^l`�/�V��| 
����Z�GRt^� GVGo�Z[�o���D�۵�����u��#��ŀ�_ pQ��<g�O�R*N�Ϛ�B��,8�y��I�c2�{W�h�����8/�ΨPJ��P�E#4��u��u�5�@�Klu���[�;�����Wh.{	���8�s-'B)�B�)��`�k�nj,�a7a���������Uj���_�7DA� ��ȭLL�R�c��8@��ȷ��;=���_���m��#��P��#�6:�!�0xض��ޤr[�љ�4ъ�PJq��X/C��8�.�@v�̈D��P�H�u��w��Gg[?���8,`@:��w�+�p9��Yb�H�k���nqi��#��G�DIO�E���W{>B�hn^Gؙ�**�i!	��SI'B�c�����]ې      !	   ;  x����N�0�g�)��B"��4�He����X,�R��u�L�x�NH�F�&}�(��B��N�������k%*x�+��{��Mo��:�#4�e��<O�!�>�>�6�Z��˖,f�[Xkg`{�6��^�8�v�j���ll�F+a�V
AhcPX�P�5
�F�n#S��4i	,�h^�yT�i��g� &��/�
�Z|'b����%����{���l �����[o���
ḇ��t�������~�XR�ˊш���)H����FV�q�|���=��9~p��x�_O'����*�QD)K�">#/Q?u���      		     x��VKr�6]ç�q�(��eGۜ�R�䐔W�@d#ŏ����d��\�K$ŏ�*�h��z���u7gdFٛ���h>uIy��,O9��eyʘx���Y<g�����,e����B�J�/O�i.�*�gx+!��m�$1���z�Ydd����lFg��\�7�����r�
��YFT����f/��e�O%�	14 h��\2}p��$��Hh��g�ß�c]���!J��Dy2q+A3��EZ1g
hZ���&���&�q�EpH
t��U�\��G�o��GZ���E�ʠNaS��&�.M�\��i�{�fy�b��;/�V��!x����D�}�M���r�<��~�_�A䃿B#��A��	x��\����[���^�K�_�_.�P�&gnU$��`�Y�u�u�D5%���lb�N0�"iu���L�6�QbI^UЈ8�%#:���z:�'UHe�Ij�6�n63b�-3qI�
����z�U���3�D��q�Ӕ�,�2Ѐp��$G�Ȍ��^�\,�o����M���[��D�r(��$F:h ��$:־G���UH��B��KО�w-`����ʵz�J�uo �y!�{��Y�Lu���VK�:���֍��2�6ϰ"���I�㸣iJ��N��#�n@��\#`�3�R��Pp	�Q�lk4��Y���)��Xp,.��La�6\~���`�s֔�+�(�Q�M�>QL�=�,n��Y��։�$S|n�h�
����*�N �v	�8��T�^�sָ�R���� �u���á=��E�^VM���t{���{���v�p�Gw?�}�]n֋��]�Xu�v�x1�/�)�כrf"c$�Vh=������*ւ�8�o��8p�f�a�9� ��t����WBo<W���,�8nT�BHw���C��;'�)�����-;,ᕞC��Y�⽕�"�vGV��AO�k��'-ZqY��m�g����iR?А=%�|���ݫ�X3�e�d;C�LO�|���_.�*��*�?x���ج��H�.�o׫�����ju}�W��*����G�>�h��J;
�'w�R����9�Vð�;w͢�7Ys�3��䝀j�	qf�e�����E!��w�:�z�6�����&͈���7����!/&f��,���A�'d��yE>|u��W��XoNu/ە������&-3�ZC��rԶ�C\=Т�A9Yó�0&���g��`�\�۲F_���w_��N�;�a�U�b�o4������/..�����      	   �  x����n�H���O��*�>��;�4���f�Rˁ�0Y0�f�(�1/�ec�V
��oW���<�_��)��}��������[��s
��jo���uvMⱵv�>?��x�_���aw$�Q��O4�0):A4�/��~nR�5��`�vI�v=�;��^]V��%jo�fѧ�)|M�v�#9�S{pv��[*����Ĕi�TB�Rܹ��!uG��c��E(l���z��A�m����~�{��y�\)�?��+��b�CF��L0ڽXЄ�R��q�2�XQA�@��`�M25N��Ԫę��p�k]�!Di�m�u�奌��A�H3���DY%"<A�,���cI��e�F��	���R�z�2�>�@K�.��
�Q^��4i	ބ��!
��&�^r���~��`��zآ��X3�����!w�4�y�����[�*"����b�B������^y/�~���� �w��]9g_�-��O.�X��C����ɿ̮Y�����,���a�7�\á�YP̹6���!�h�M_A�����.�n]��a��.&��B�m_C�n�R>͒lUf��Y/`�6ݤO[w��+�w�-�a�1�� �^�����~@Ŋ��W��GwA����ޞOɮ�C�>X�Jҏ��b"΃d���v8oc!6aCw�1,�L�1ᨆ�`TJJJ�V@o�c����aɈ�V�:BГ�����~�:�gh��y�C3]b(����:B�\t`!Ns�+{�&}*�P�rӁ�d�y5��w���auX��K�y){S��ش$y�<�F��q4T��$�=A������� ��H�;�E��ūY�Bo1���w $��o��blF��Q<����u�;�zpNf��"�L���e'4�!)��w��]��ARL`r+ف�<�����+;E�٧�9?m����4�yy�0��G�v}���'C�H^^�������w���O���Jq�����G�s}	���u�5!$M0�����!�Ə�x>[<��V��)�y#��꣧��"���s���!�#����8~\�w>s��=n��
�_ŮKIB�z��Q����0�.���lZ?������K	�3y����I�X��E���`4���Z�x�%�T��!(ɻ���W{�}�Ķ���WKU�2P�Y�c:R�-g��H�/�RDIeB���|��&���@Z=��D֮�C���0N`jMa�Ɠxz�l��2ġ"aH;R��wG-ڰ,C��aB*��d0�%^#H�����i'<;�/�,v
��# U"�@H��8����r9ל`�3���%�i�P��iK��&)�ƨ.�4�T�l��(C�<@2Ek9�ҬJSY��h���Mv�� �ֈ���q�5��0�8�}��H.���e�,��`��bj���x��$��P3с��ǉou=n�`�ؙ1��f��v��g��p�!-�;)LBZU�pv�/�e�|���t�.{ݧv�vI�l\<ᆘ	��W�#�F�qI˃      	   �  x��Y]n9|n�"� �W��˞ � �10^�:�	��ST�;����C��%�H����'��xy��������_����u�\�s�Ϲ~�m�:��V~�/���C!D==�|z]➞__~>>}~,e֒�Ve�t�m�y(:գ��%On�I֓mj'QDs���u�r�u~_��BIK������5��׷������j#�2����7J�կ]�ΚSs�2��(G�'wP�9'&�V'��T��������}���/?�x}��2`Ȝ�K��i�^�q�
&$�jbQ�[�:�vk�zyΖrFK�E�=Z2HH�ss6�~�>�K���R&%�e`%�1-�Et6�4����7����-��gmy�b�;a`��E�M�⟆��"
����S%��Z��{
�D. Ls���h��["���I�	W�L��&��-r�呻��,�N�ʫzY��3z4!�%Q�q�0V���&c���a0�)���8C����\��hg<F10S��tR�x�	�(����ԡ�Dj�]�`�KĒ1=<�������w0��`�A�yԙ �0�^�=��Q��9�ފ�5CX����������h����t������PJ�q�h&�B6��z����𘇚ܖB-v�pt2yr�E��}�t�K4�e�0L<�p����)D#K�
:yM�w�^��@�W�YE���C'��yYa��Ke(2� �����&J����<�B�N�a6e�(�%��@��lZ ���TC�s�� 
-��8��)L% ���E+��G�DA(�jͥ����"��ݧ0N�>AYi|ʀ�BG�2ɠ+Mz
�$t F-%�։t$AcJ?&A>g�'���x��b�N���'*� eoa�&�E����o��$|�EXQ���[!MI��\�
z��MtP�-!�wixݐ8��}�;
��~eE}$�V�.]ҹ��qQ�3�+����v�q���\Q�1���(>�"q� >�&r�:�h�A�u���޻u��q��X<<��~C�x�_�1hjR�5�(�'qT� F\�TQ�]EZ@����.
2�9B�)X�x�: ޢǱ�B�[Fond�qg,,�V\UKO��t���U�+�0ܳ�gsA0LI�-������"q̦���DUpw�����-�>���mŇ��~���t��sų1�7ů��%[z�QoJ���(Ŭf������$H��ӎ��?l�(�
1�I�5.�+
ci,	��Xǩ��&{�T��LN`C4�-X�6I���Y�ŀ�b@t�~�i����s|uI��Y�d���՜Ô���aM&��)!�7u+ wW؊w��]j@�����?7&����)�<��\j4���{�v����5o����N���b�� -�렵 B�'��G��I�lT�hY�푲���K�48|#��߾ªb��e��$���H��J�X+X�l��c7y����[���E܅��k)�Z!�>>c�a9���b�3t��})��<��_�$���=D�ϚʺA�ќ����9�4�9�*{�ڇ�R,�����1�=��/%8U˔�#�Ј;�H��MV<em�q�w� EWS�vς�6u�֨�f�65pN��`�A���&%Ֆ����{b�.@�qgl�p��d�"���,�;�����K���������^�f���ǁ�����c4��^:aD�p�XQ"+K}���G�;){��}��)CsPNR[�>��G91�Kx�==�UV(�V�Kzxx�%hX      	   _
  x��Y�n�H]S_Q�����%1�� 9� @P��R5(RS$�vz�O��`6����|ɜ*>D=b)`$0Y��sϽ�lj���g��j_n�o4ϒ8Yqv��F�T�l�z�y��Xp��}�/ڬ����V�G<�Y"ڳd�}K�LЌ��EJ�O��,�#��!+��$&�g4#��GR�i�32,]��srI����$wT��\�(D~=b�2j��3�2Ss�:�3&�J�G�.���ܓ&u]�|��1�:d���ӌ�	�%f�^��g�Sg�׭�c�G_�'��1t�X�T�HE�WF��Hb*��Lfn����i��IC;�$���Bݙ�JR��ه���Ar'�!���P0K�"�㛳t���B�OʑRS
�8Y���}�k��$��g�[C��h���Q�����Ӹ܌&�m���拖�)�yj��T���Ox�񔑿�L��D�Ȫ��~�lK��^�>{�;�<[�8y�QS�(����`3���uM���8���R�1�|'8��wTD�1��*�X���{�I����d����/�m��{H��v�����U`��g���',�߱0%{d����]����PY 9_����xr���V�q�U�v�s��_%�㟑|�f��VyɛW����"_%���B����j�ģt^�Vd=��u;e�7 �g�,�~��\�cB��i���U>�uxE>'��gKE�4n�ft�"����&����I�K8��J�^͋d�D{��E�Vs֛�LgO�ı�@���6��2��`�)O+�Ik��ߑ�]�S�9{:'k�i��t�����o4��$����R�?R��)Wٹ	?�|���ӗx��}V鼖���"�\����W��r����F1qP� ���,��a��}��x��$މ��^t�W{-)��;� Ij��|�#���#E�i�`&�TkY,Q��3�Ğ^T$鿖"�_����.�
s�����#b��|�`c:/ڔ��m/h:�f�%��]�,{˪c�e�b��"4��˶Ξ�8�թC�o�`|mt�!�jS���'|+D�s���%&�cvʎYJ�=���Y/گ���
܄B|�d��P�m 1��ݍG�Yd8�����$@ 5�&�z���$�C�e��Mk���>g����4��/{k�╎:�<m/PYʊ��h��:��n�±4���V��g�$�?�/4�9SVH#w�X��s�?�d���sV�=�-��47�Ng�5�Wo6T8�g]�݃�}xޏ1���y@��n_����Q�{!}�0KdK����1���Fz�1�:�Ղ��
�zƉ�K��{�g�)xH�Cj(H	Nt���L�~*eZ�tP��nɭ��[���yFg T��H��PW*�<yL�kt4�&V�x]�=��L��	�|*ip_�yԹ�W4v��+ѣ�,p���7�g��E�ev�������ep?��!W��-!~"��O�	�+C=ƴ��zJ�6釓�f��p��" ���zs�����	�5\F���z�g������f� �z�+&|ܼJ�����	2�`�#���1\`���� U�*�R�aق�5��8G� ��ݲ:?���o'Ү�I{Ts%�]AX���;�1m'PJϰlӱMD�e;j�&�$dJ����F���;���i��nt\5$!*7�UO�{t�zDb��k�К|���&��e���.�=oM�p�6Oա��[U0�-A���Q������2j�1]�{��ay|�O�#�k���I��^��u��K�i�XsR��{M>�����7�������N.���ҷ!�����]��{x��u\����:$G��׵����1���2���y��+��˫��I���>Qd�P�����S��^Q2	"��>y�7����� �<7҂�ôt�q�T�%�D�����	�*��C��ks�u�z����oդ=a�!�-W��`��W�h~�;u`��r4���Wfҿ�&���/�ԝ�)Ѻ����z�����!kЭK^�&���:(�y:`�d�nu�������k2������Q����m���$�A���$���]I�;�n�J�a��?A*w��B17>ꮩ�{β���vܓp���j`ȗ���,,�4�����9���ȉ�9���.Xag�� ��'�{i.t|���k�y�ۑ��(^��:+MP��1�Y"��fҏ�;H:�ӳ�Ls��C춫�
�$	0�ڱTne�E'х]�u�J�&������|ܛ���A��|m"O=?beV�:���һ`��k%uf�R�-sd�/r4��J��W��pSi�#�_�=bW��7�Y&��i�M��L���j|2�J��=0����D��-X�_hcKS�]0���̊
���e1�X��JA�6�"��� ��g��d��UR���� -�Ɍ��PG�.�*F��V��
��H�ū�B���[hօ��VJ9��Z�T��0��BD�*���s�4)m)_n�{K&�"����~͟�Z�?�7a����a�5J��b��?�Q�զ$)<	����U�.��0���My�'�p�n���0�TS_}�I����{sV�<z7�`.&s�'N��^�K��j�uwS�      ,	      x�3�46�4�2�46�4����� �s      	   s  x���͍1��rn`��8E�����􏐔ˎs ?p��G�6jCh���n�7o�1�K�!UT.Q��5��>���=*�F���D�%�DSF�ZA0�ξ��X���ޣ����zUa�z��VA���^���x��R�`�ռ��]4h����~���O��3j����YNv����d{Lx_Wɵ�c���?�p� ,C�æ�2ʖ��E�#�?�¬3J[m�SHZ�~�;�AǄ�ܲ�b�o�V���D���
��d���آ���;Z��A�r�VI���y-��&>ڟ��V{K+[ע���LOԾ����ih���l��;g�|�����t����c��)�8��(#�`&�)��w�3��r`g�KU�z�#���J���&UU,���ۉr��ڥ��H�,��O�����)��<����k�#��IpW٥RJ��l�P�rB���KU�*˅&�'������\Z��Z��sw�Cb�׶X���-�:���t�h�O�c0�#�9%D}:�SVY�L4,�I��K*� D�ԧ�x�l���	�s��w���F�E�ʢ��090BIi��B�@y�(^����0.�I���>|��*=�����Hc�RY��q���fë3      	   �  x��XMo�8=+������M�YG[Y��vw��(�[�n���)ɔ"+A��L�Ǚy���eߚ��>�M�=�uu*����e!́��l!D�DNs��B/�P�+~�AA �������u#ҏ����e�Y�� �&`2��10�۵P�'`*��A0b%�@�	�N?~J��B	X�����Ӯ�١��ˣ�=�2�?@�&gNHxC�4�@�����n�'j'�Z(�Ŭ�w�?�u,�0���
'r c�Z�fB3v]u�u�}���w���c� n8z�Ć���BJ"�|���W)��I��?4LxQ��ϲ9t��c�7Ǫ�KO'�&���B�\
�o$a~&҄���l���'�ee�T=�D�Dơ-|�9e �`.���H��r���"���#2B�����q�mw��̟���}�ar=��A������)˵ƪIH�7Q���0I�ԡ��"\�Ô��]u�Te�7M���9��
��@��^2�O ���kyE^<e��C���ep+]h>Ӆ��s�\.V�R.x.����.�����xC�a
�@��LY-�Bxy�-��,;�M�^��7�ǲ��?C� g���
`ʱ;9p��{�t|l?�f��j.�٩������<�aZ�-'�����l���dZ����LZ\��ԧd�a�/m���=��Bj!��_7��<Fl&�8��f��eü?�����0�M��0Ap���Ga�R2��θH+�8v����揲>d����Οqn"��Y�S>��*$
P���Y�X?8%�x,�D�b���<g�Gm��A3��HiAt��KV�s��.�A1#�mO鰀��'��҈�P(\����i}���U�Kd���e�sx�x.�q������,m����������z sٍ��`��e9qK�����)?\�]�ʣ�d�t�8vׅkٷ��W0��-_�
���B��,V��5j;��Cy�V����2Ѩ�B�<sPw�䬈U�}��,�W	��Yݪ��|���+�a/�_*�u�`6K��T,������ˁ�@��,+�zW�	����B)���0i��� v�����%1�-��|3JY4�tL���-J�@��԰��l�ϵ��/�BV�k���_G�"�a��F�h�g��P���}����y�˶+�թ@�yL<Ѽ���7�K��h�	�EN9��?���P0G�*E�D����+t"V}HJ���.��~�`�F�E/T��*8��W��V[a��bp��Alɿ�Կ��/��N���̤b����k���^i�Y<T\������n��4Z�����a)�Uf-��)�8:4��msl�|2n�M��.�%%��+���J�B�ܯc-��-�8E�r�k"�s�z��@�t���I}�J��B��|�Dj��U�_����cr~���p��Z�%��8xoyM/�`������֤��k�K�l��>ø��X�@sG���4���]֔�o��_}�4Φ%��/�l1�U�+[H��Ti�l���^]ãM�����Lk�^�K�V��0�/� hi�`�1<�e��>��.���4*v�,��ڏO*��2��0��,�̬Ƨ6�0�L���4��?Ռ�e0��hO1!)2��o�5e2u�2�!��ġ�2�.������cPcd�0��e_G�j.7k�t��%fn���HZ'���XG�"��0~�Ot_�j-$9
��62�::����6������|ݲd�B�����n*mF      *	   r   x�}�;�0@��� �mLH���j-�UT���������}8,~�{��jo|�}�h3N����(�M � �cG����UR�%�Z����kC[|n��'G�=��~��qP)'~ ��g%(      	      x������ � �      	   L  x�M�K�� �5>��#�]f���u�)o�4I��UD�ǟ��,�\}�f�?3ʙ��#�����$��Z������#�2�7pFΰ��[g,���&ctz��N�JFy0�j#��v2Z� G��Y�ύ���������L���Y%c#��(kd\�y��޸2�Np�Z%����7���f��
�ɋ'Xʤ5�7i�9Yɨ�̎�C���MF�]�\���V�:o<�n�_�a'-8@/s8A�Ⱥ���J�}�OۋZp���J�gXj-c�E�����t����Nk���'�$�+=�G����x6��tW�ﶖn0�qH^D���뺾���o      	      x��[ͮ�Fv^�>w�0�L��,�dY��4q6��v�^a��\ȳ�6묲dk��&O�F^$O������m۲C_�;Ū�_�.�Ѝ]_�Xwm��⧮��!)�q�T��W�z��8qo�~��k[�Oz��U?�?+�<��4�e&��/���K�v�5h���n���ݟ�՗���>.��;��?�ke�U��Y��`���]���/9�'���]"������:�Ia�3N�~���T�����毓��B_�@��M=�U/��Ia2�h�K�O�f۔�jS�c��������~l����m���7�nZ}�@Wg�%(��W�Ʃ~��)Y�=ܩ���,cS��XW-ϥ�ю��.I���������5���ϓ5��%���k���o˧��u�%"�9%��Uy�@d`��X��U��U����
f;����ꇮm�-4ZY-H!]�}�����>�,6S*�Yr��������/�}�6��S��bx��T��py�Ĕ+l��]�D�i������ح�+��i�+��e�_]�F��vx��Mp�^����U���/�}=��ϸj�l��P|^1�D�� ԑ��P��R���]��XK\����;�'��U%V9RW�?ۧU���)~��Ԓ鱔i���(5�����R5p%m5}��Ck��
km �j���v�L*	*��$�D�T$�/�����Ӛx��g
��3"$)r(�c9�kZ=Ϣ�L�=���^O��]׮a���x�+���WS���X���V���*�e	'��'��O�.Gl�p��2��*����M�O�o���}N��5=<����
�%�ʌ���K��O��C�W7� ��I�T?���5ޫ)�-v�I���1S�]��0���B���{�F|OA��+W]1���� b�7�����K3����V�z��PQq��SfY��.�����3����-72�6�wf�����]D�n=�����'2�e��ܟ�;Y��5�Ǆu٬�yW�%���0Y���F�"�@��gI5��XR��CG5~h��<RK���:�Ly��������gd�o�B2�y��H���{��h���8o
��~���_�^�V��L	ۤ��!���"1�'�6���{Q�f�z��fy�:{�O��B��b�-,��7v5_�8�U��Y��C�����g�Yj����������U����'4I�	�G����o�&8O�� �q&V�t�����t/���*,;ex��I�Z:lM�pzB�ɯ�"���B'y��.���m�� qp����4��3I���⮚�P3���5R(x�����/�z&�J��HY�U!B�����r�_U�bO��%JxY�S

FD��A�H�|����P���,3�-���������
�<�%�B�D:�Psn����z���-v��z��ь��Zkdv$�q��w��E�K,�D,Tڴ������T9$F(�����7MN�π��9v�pF���RiBE�vP,	7����}�x^��H�E �墋>Vx�I��Dh�$�6�=�I�y�nA1���!vK*�3�0A��41��s�@���o�i��I�T�� �wH�%��k�y�4��]� &���K`(lʫk�@��'�Tn��)@c��P_n�TiS*A.2-E� ���O�@|�\OOdU�2f2r&*S�&n�U����3���]2�=@R�����笮C2���Q��}({.��F�x�w"��O�~��$NH�4��ɉ���~��"47@������,n���=��BȾ$H���n�q�V]�F�(��u�Q�=C/*�z�@��}�@ū�E��y%	��������RohxW��ȳyG ��9���OG���S&��� �0?'���Y�y<υO��\�3߳-�Kk�대��!B�����>@�]�/�a������
�3���-�"�#@�@�.�o�R�DAp83��xS���}� /�*}��C'~�ؗ�� ��U8��S�� 1so�	H3+�Z� ��& .��U�SZ=������Hy��$�S� A��i�����,���荈��y�L8��;c�M��-.�\�E�s�%��S65	o�az��o��6($�:&��0s�=�"��3�ЮmG����	�t���(��\j�<&�����A����X&��u�xk(-�a\���$�V I~���I����M}��������o�����ҋ��ݑB���ޔ"ȭ�Z'@�]�$��w�r�-��l���#�ڸ��o�oh�]�Z�e�Ko��r��6W��TBg����.���i���.�p�n5D�O�����
�C"�p��x�K�!@Dlb��s#�
~�Dd���d��P������ɿ�Iu]jͧ�"��ox��#�h�},��RFpw"���??�Q���噧Q�	�!"v׈�����q:�f���� �~)�G)�b]��uq���C?�]$��I��[E￢]��8�G!�vF'���"�����f���-� +J<ԌuhD�>8��PIq5��_3W��t>�t(H�D�̱��l%G �T���FoiPe��m���U��<��>���s2;����0�C)��n�4�BCU�'CC�����n:'�nO���B���:���I�kQ�j�jd�#���I���]���2[O������z��e��1�^S^��1�)���A�J���߻�E8��1�K��f������=�J���v�I�i���{SO-aː%��/�9t�3u'�7B���"Л$�#D�q�o�U&��<cG+��5K_.�Z\�]��3D���җ���w[��'�g�����.��g���,��s؀���c�����~ �М��W13r�
�.�xIE�9��Gh	�_B��0�\	��\Ҷ"ނѶ0�5L[�AI��G�ɡ��>C$�1B��I�$0	{��@�Β3���M���V�f�h?�i�Xx��T��M���u�R���cн�����?��#OE�	A��uv�"�4���|�m�HĹO����ιdC�ȦLD�|�ܵݦ��;D��8X��JЅ"�&��:į��]{	�°ED���r{$�~��QN��!6aˋ=B�9#���2�iy1���;g�=B�>�?Ts���N�~�[ȑI+�!�w�ҽ[<P�$)S9C�׉��[؜ml,	H�|��l�ZL�Մ( �Wgs�7�$��4u����V�r6�{P��o�-�*�������ߓ�s9��!9��+Z$���"Cb��P���^ӡ���] ���"�l\���?ʵ@���g�Q'�fӭ��/���L�7�D�4�/z8�z�+xǮ��'u��������3�&�~���yh{���-4�"� c:�-�����M1C��A�{n��i�e_�}�ǜ�h��1ʰחDb����	��Z ������۹�^����^OU3�|5.g�,"1F6+?�!A]���Ʉ�!@$�^qտN�B��{� �8��Ǫ�.�Vt-l��4�pů�)ə����ݳ�*1�N.�s��y/��5�G_Z�9��ɐuIrfr,�88;����?�>�K��F� D�|����&&V=CĮn=YLN)���d��v����F�-�	��
3Dܧq���\�P��m./I0�ў�1NJ D��s�W�T�������tx	β��=B�Í7EM-"�3@DZC���4<����_�'uZdB� ��	݈&L/����-@�r0�eR�g0~xz�nn�P9&�-6��N.	Q��6��IZ������gc'��ȳ��2�S���hD,���aY��	t�Z��!�3�t^k�yr�6Ŵ��`f�H��,��8�r���DBr�=��$)�Dh���jח�0���'�h���qs距��V����u�d� ���˴�׵Ե6��B @ĝ�s�K&_T�K	'�\�  �V�p�u{f�n�S񏪔��_ b͢��Z;�u�
�B��CG��nBX؄�Q^�)�1�-�s���o "  �o�_:�/��a�,�~�Y�Mza,��pv3D"�Y���k��'ɛ	�6CD*4���2���5�x�^���L��6U�����C߂�n$@$���X�f�>�;��@��K�������w�
Y�w6I
v(i�Hjz�S��n��܉�Ȅ�B����:)p?���� ɓx�.�*��d�m"�v��~����H� �>Qٛ�f��y[�ֲ���f�R�s|D���]6��@i?d�@D	{�9n{oE�,q�移o�w�3���r�L&XO�ƻx}ww��R<�      	   h  x�M�A�!C��a�	�]�������S���H]?c|f����@-$"A�Tbqj��U����3WM�N��s�|Lm�X��)v��X����k=0K9����<E��Lq�_^�np<�fG�F���'P(8�����l�yp��!�S����Σ�7���U6�ǰw�K{��&�΂?����Wn0�&�N�����l��'���'�LlO�(��M�#�V
Ea�y'��;�G!�2�^r��͓��r��$�%沼�P��u"�*�?�A�3��B���n#볤��i�`���5�Ж�AaC�gY�ײ�ǲ:_²���zn�6����P��#��|>�?����      	     x��Y�r��]C_ћ�=����R%ERf\�Wl�,���Ȧ8 ���̗������	џ�Krn����c�,�4��=��s�6�Jq��
Ay�	��9N�`y&���S��'���zg�zH�J΄�H3�"��x���n������X.�Oޟ5mQ��|��q2�Y�z�2������+��F[!��E�����߉v�N(��܍0����S)w�'R��i���	��r#�Ì�r��������͢(�|�,�@u�瑭��ew�]1�n�
 �sD�����{{�q�5�e-�1 "�&h���&���[+�r�y���>k���vyU�ݟa��Zp�L ﹐���.8�^ۋ�\55�2���w�n;��g�U�q�w�'� �.��UѕM�f=[VE=��-��Cl�+�-��-�Ud�'}��f��-.��X#>U�M��U�㲨W�]�Ꙁ�"w§��s�#��PJZ�9�!ݚ~VKc�<@[ʉ���܏�<@��`u�(ڮ�c>k�����,���J�h��`��@[H�]~	�<�����yv�I�IᤄJd���K�{�wE��Հ�� �_�	�k�حX��ˮ�E{S�Dˑ��5*�IQ`���Xx�k��;��(����p��yx��N"k���O�U��b~��u�)�w\�2�rl58FL���&L�����+�0���ˁ�G�T]��z����9��sΉ]��jUFbf���?�o��o����E�����Ŕ���͚Tf �a/�����iv�O��b٥��[V�+�lR�	ݶl�.��r�B�"��j��`]Sv}������cY߰�o~�����E���I��GDxq���!���2��uiC������d�c/ߜ_<?v!@�*���L���o a�(�Y�G�#A�$΍Ն�͹\[��H����_�k)��G�#��H��k���*�']��Y�l�6��-D�=�_ Țv�o)4B��S��R�_n��GP!!�9�!�V$T���0�̀
ʀ�hT8�w��`BL��p�+d�u�`��O9��^@�Z���2`3N�㊞̑�Cc��,R�,������m�����Z)�ҫL@;r�*os�b�֎���-���(?vq�n��ɵ��uS���m�||�j�tC͠b��[��&���"����v%�=g�#����z�U�5Q����q����_1P����d6+q����)0G�c�羼+*��ܠ"&Y�ܬ�)�X��_��	��pA�T`�GeR�)F�s��y��6�� O��F�B�?���$�62�(��M���Ŭc*�mzȝ�x}�{����7﮾JN.Qf��8ˤ�JRQ|�& �W�Ίh
<`���NlZ��h�s��;C�DC���lۛ9`��U��4���@: � �����0 Y�׳2�������r�$m<���m͒�Or+R;�6K�"#����R�L� �}��qX��m[k���Ǟ��B��P{`�� 9�ɥ�F�T�s#vz]�LH�3�4(#]����*8X�
��7W=]�1"��$��CI�Q:�(/3�RE��u \���p�v�1�1��p�U�)�ΐ��\#K5��ҧ�PsAU������UKJ;�#mL���j?���Mw�QJ½[����Ǫ��*	�3J�5� ���3-rc~G�����&d�|־5�Q�1~I�����0�+z�x�xØ��e+�)��"�gh5aK��J�XQPj�t�^�V@���
�:hE�d ��I�EPP�����AA⫉v����O�~z��O�/��=��U
�s�`z,r�*������sB*E�:I��wG7���q���2�T�x��I�A1����%;�R���}i-�b��ٳ�r��]�?��Ϭ�ď�_mQ�(���ig�j�e�hg|���l��E�0yqsS5ܻ^�5Q`�_����!�L�)�v� v;-���zS@�'�/�צ ���#+<n�p��U� �e����J:�ʓ��0O2�Ր��C�*l�c�U��$|�ڹ��01(�d��C�E�W��hUO!��9v��X-�Uc��nf�ܐ��سr�l��Ur�U����ژ����v�l���~�c��� �A�F�
݈E��
�Lj���3�OF��Ď�FMj��DOLl=.?
�f0Ad�X?��XŲ^�Gmw�l �/gU��J�?�~�JP�PK��t�U���~{8#%��_�CYc�O�D*���0�zR�u�����a��kn�s��<I���Wo���+���]^�8yyŮ޾c�W��]]e�K��I:�<�Tf��*a�r�GHc�o�M��F�SX�.#�F#"-N<����m%��D�zGqh;��`b������>�u���\4 �&ֳ��Ϧ�ۢ)#Ƚ�C����~7�<ˣ�;��PR�!�a�=��}8([�!-r�<w��̃ƅlV,P��*�UUF���l�k��Q#F�Q�ꨡ���Gl���Q/6V�KXI,�x:q�c���~yB�����.���Y���U2c���^�[��X,ѣ��R���'�_?T����>v�0��i
p�J��x�[��L�C��x�[#�҇�(�91ԏ�'W�_S�+�~)�b�4�w�'3v�Z�;�����ۆ�#���6�=�U��I��Ҏ~=�I%e��d[eCG󐲃+�N�^��-��=�A�xh���C��M�g�F;�Ԑ}���*��b3CT㎠�L�m��n�2����[ Ȩ�	0�A'�t0t�l�	s��'���u��rX�8�a�HZH��[�&�H;����ɀ�<��qךvm��V�,�!�Z�N�%���lzۖ�Y��N��U��i���3�!x��܄�H:���Ö!<�m����;t>�`�ސ���`�]%8�~�@��~�D��p���j�c��w��̒}�.]bp�Nm��� ��6�+��z����>�s�͹�pD�{]T��3�Xk"%�3vK$u:~�#�㖈�(�Q��9Sy�C����&�`@�ܢ
_D�S_�A1vL�L�:'7����M㴬b�,ѓ��/�d	���=N�0��$�.a�����J\N�%�qQ�3��gG�дt:Ʀp�;"Ɩm3��]z�4��o���]��hJ:@���@���"K�
�0OM�u6wD3�U9 aa-����i׆Nc��GugT�h
�8�-2�cn�Ua��C���ٓ7�6��3w�<���O�\Bz���5��������1���iD��� �g�=��PA��7Qq�-ܕPT��F��5�"8rw�H%	K����ONN��҇�      %	      x�31�4�21� �H��qqq .he      �   �  x�U�I$!E�u�F�����џT�^TF�Be!�2�e��,��4y<(B�QI��x� S��`a���L����Ͷ���n֊�Pˋ���x��H�������D�D���c��)N��l��.�Pc����K�����*�c�>�1��E;Rf�d���?�8�(��x4�U�.�w1j�8e���7 Ҙ��N<e�u4�3��#{�E�
!���%=�U]�9�kc
�H{P���E�J���4պ��&�<w�#�[*��Nd�"R��4�U�:X3�ȕ{dx^�n8R�����P=� VK���ā�(	���� ��z�?ҡ�p#�Fe�c�Ui���R�*�>�����}���f2�9DĤ�Z��0��&U�\�}�(������p�׍���V�����70�0P�n981���������Ǿ�U�i�#:�ڄ�_Vt���h��Թ<x'���)�A-E,zf#�kj�-#��_�T�"r�����Y����b[jU;n/Nz�����㋨~�J�\#�G�j���b�E�h�1qЅI�H��Gz�t��RK1].fO������Qc �j�A��T��)B��V�w$�H�¾�59���h5�mG�ke�����P:��+�vq`o#kM���[2�t�8��Qf��~�т�*      "	      x�3��42�26�1z\\\ �n      &	   E   x�5���@C�;�D6k�%��$f���
\�x�.��ˀ����3���K�����i�L4�i!�#"?}�^      	   Q   x�3�t,-�����L�2��R�J��K+�L8w���L9C �
9��E)�\f���
�
�%�%�
>�\1z\\\ ^X�      (	     x��T�n�@<�_�C�iz_|�$@���aQ.��`c06�~zЌ�E�K�T]�^���p�,Zy����ĉbউq��[�n�ch(���ݠ�,<&p�)�X�Q��x(G�A�TYt6���k���� C$� �C�Q�(�!T|!0� C�:�^"R���&U���p�I�Nr������tL���V�i=�E�a/~�����pf�iÍGv/W��tܟ�ڡ�㲘E���XPq��,B��BP�C�P�@�YT r��"���&5��3wB)��n��]�M����ٵx+;aV9����_Ų=����ﾏ�[�jQ|Y�_�|/�HRA�	��.L�8b?��ȐN��g���(�h�#��d'Dg�8��K2(����YU�f�٪]��M�J3��٨���"=5à9��*�� =e��XϠ�D��'�����1qڂ�rJi2#Kí�^�s��T��}?>��Y�1kgn5hzE�2�YV��x�U�^cl/���R s��G�#zȄP����GDݼ+j�%�&7����4�$�u�g^�C?�A0��yo���2
v~�%�ȃ��%,�q��v�F��{�	bѥ	���L ��I����!���%��C�������i��RP�     