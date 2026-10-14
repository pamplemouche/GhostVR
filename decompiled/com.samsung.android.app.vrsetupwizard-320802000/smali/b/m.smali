.class public final Lb/m;
.super Ljava/lang/Object;


# static fields
.field public static final A:Lb/m;

.field public static final B:Lb/m;

.field public static final C:Lb/m;

.field public static final D:Lb/m;

.field public static final E:Lb/m;

.field public static final F:Lb/m;

.field public static final G:Lb/m;

.field public static final H:Lb/m;

.field public static final I:Lb/m;

.field public static final J:Lb/m;

.field public static final K:Lb/m;

.field public static final L:Lb/m;

.field public static final M:Lb/m;

.field public static final N:Lb/m;

.field public static final O:Lb/m;

.field public static final P:Lb/m;

.field public static final Q:Lb/m;

.field public static final R:Lb/m;

.field public static final S:Lb/m;

.field public static final T:Lb/m;

.field public static final U:Lb/m;

.field public static final V:Lb/m;

.field public static final W:Lb/m;

.field public static final X:Lb/m;

.field public static final Y:Lb/m;

.field public static final Z:Lb/m;

.field static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final aA:Lb/m;

.field public static final aB:Lb/m;

.field public static final aC:Lb/m;

.field public static final aD:Lb/m;

.field public static final aE:Lb/m;

.field public static final aF:Lb/m;

.field public static final aG:Lb/m;

.field public static final aH:Lb/m;

.field public static final aI:Lb/m;

.field public static final aJ:Lb/m;

.field public static final aK:Lb/m;

.field public static final aL:Lb/m;

.field public static final aM:Lb/m;

.field public static final aN:Lb/m;

.field public static final aO:Lb/m;

.field public static final aP:Lb/m;

.field public static final aQ:Lb/m;

.field public static final aR:Lb/m;

.field public static final aS:Lb/m;

.field public static final aT:Lb/m;

.field public static final aU:Lb/m;

.field public static final aV:Lb/m;

.field public static final aW:Lb/m;

.field public static final aX:Lb/m;

.field public static final aY:Lb/m;

.field public static final aZ:Lb/m;

.field public static final aa:Lb/m;

.field public static final ab:Lb/m;

.field public static final ac:Lb/m;

.field public static final ad:Lb/m;

.field public static final ae:Lb/m;

.field public static final af:Lb/m;

.field public static final ag:Lb/m;

.field public static final ah:Lb/m;

.field public static final ai:Lb/m;

.field public static final aj:Lb/m;

.field public static final ak:Lb/m;

.field public static final al:Lb/m;

.field public static final am:Lb/m;

.field public static final an:Lb/m;

.field public static final ao:Lb/m;

.field public static final ap:Lb/m;

.field public static final aq:Lb/m;

.field public static final ar:Lb/m;

.field public static final as:Lb/m;

.field public static final at:Lb/m;

.field public static final au:Lb/m;

.field public static final av:Lb/m;

.field public static final aw:Lb/m;

.field public static final ax:Lb/m;

.field public static final ay:Lb/m;

.field public static final az:Lb/m;

.field public static final b:Lb/m;

.field public static final ba:Lb/m;

.field public static final bb:Lb/m;

.field public static final bc:Lb/m;

.field public static final bd:Lb/m;

.field public static final be:Lb/m;

.field public static final bf:Lb/m;

.field public static final bg:Lb/m;

.field public static final bh:Lb/m;

.field public static final bi:Lb/m;

.field private static final bk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lb/m;

.field public static final d:Lb/m;

.field public static final e:Lb/m;

.field public static final f:Lb/m;

.field public static final g:Lb/m;

.field public static final h:Lb/m;

.field public static final i:Lb/m;

.field public static final j:Lb/m;

.field public static final k:Lb/m;

.field public static final l:Lb/m;

.field public static final m:Lb/m;

.field public static final n:Lb/m;

.field public static final o:Lb/m;

.field public static final p:Lb/m;

.field public static final q:Lb/m;

.field public static final r:Lb/m;

.field public static final s:Lb/m;

.field public static final t:Lb/m;

.field public static final u:Lb/m;

.field public static final v:Lb/m;

.field public static final w:Lb/m;

.field public static final x:Lb/m;

.field public static final y:Lb/m;

.field public static final z:Lb/m;


# instance fields
.field final bj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/n;

    invoke-direct {v0}, Lb/n;-><init>()V

    sput-object v0, Lb/m;->a:Ljava/util/Comparator;

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lb/m;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lb/m;->bk:Ljava/util/Map;

    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->b:Lb/m;

    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->c:Lb/m;

    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->d:Lb/m;

    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->e:Lb/m;

    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->f:Lb/m;

    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->g:Lb/m;

    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->h:Lb/m;

    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->i:Lb/m;

    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->j:Lb/m;

    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->k:Lb/m;

    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->l:Lb/m;

    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->m:Lb/m;

    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->n:Lb/m;

    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->o:Lb/m;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->p:Lb/m;

    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->q:Lb/m;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->r:Lb/m;

    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->s:Lb/m;

    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->t:Lb/m;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->u:Lb/m;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->v:Lb/m;

    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->w:Lb/m;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    const/16 v1, 0x22

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->x:Lb/m;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->y:Lb/m;

    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->z:Lb/m;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    const/16 v1, 0x26

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->A:Lb/m;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->B:Lb/m;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    const/16 v1, 0x29

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->C:Lb/m;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x2b

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->D:Lb/m;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x2f

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->E:Lb/m;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->F:Lb/m;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x33

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->G:Lb/m;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x34

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->H:Lb/m;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->I:Lb/m;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->J:Lb/m;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->K:Lb/m;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x3a

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->L:Lb/m;

    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->M:Lb/m;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->N:Lb/m;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x3d

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->O:Lb/m;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->P:Lb/m;

    const-string v0, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x41

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->Q:Lb/m;

    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x44

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->R:Lb/m;

    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x45

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->S:Lb/m;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->T:Lb/m;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->U:Lb/m;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6b

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->V:Lb/m;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x6c

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->W:Lb/m;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->X:Lb/m;

    const-string v0, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x84

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->Y:Lb/m;

    const-string v0, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->Z:Lb/m;

    const-string v0, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aa:Lb/m;

    const-string v0, "TLS_PSK_WITH_RC4_128_SHA"

    const/16 v1, 0x8a

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ab:Lb/m;

    const-string v0, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x8b

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ac:Lb/m;

    const-string v0, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x8c

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ad:Lb/m;

    const-string v0, "TLS_PSK_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x8d

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ae:Lb/m;

    const-string v0, "TLS_RSA_WITH_SEED_CBC_SHA"

    const/16 v1, 0x96

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->af:Lb/m;

    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9c

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ag:Lb/m;

    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9d

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ah:Lb/m;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9e

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ai:Lb/m;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9f

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aj:Lb/m;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa2

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ak:Lb/m;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa3

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->al:Lb/m;

    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa6

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->am:Lb/m;

    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa7

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->an:Lb/m;

    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ao:Lb/m;

    const-string v0, "TLS_FALLBACK_SCSV"

    const/16 v1, 0x5600

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ap:Lb/m;

    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const v1, 0xc001

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aq:Lb/m;

    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc002

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ar:Lb/m;

    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc003

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->as:Lb/m;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc004

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->at:Lb/m;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc005

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->au:Lb/m;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const v1, 0xc006

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->av:Lb/m;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc007

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aw:Lb/m;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc008

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ax:Lb/m;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc009

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ay:Lb/m;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00a

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->az:Lb/m;

    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const v1, 0xc00b

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aA:Lb/m;

    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const v1, 0xc00c

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aB:Lb/m;

    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc00d

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aC:Lb/m;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc00e

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aD:Lb/m;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00f

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aE:Lb/m;

    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const v1, 0xc010

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aF:Lb/m;

    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const v1, 0xc011

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aG:Lb/m;

    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc012

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aH:Lb/m;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc013

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aI:Lb/m;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc014

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aJ:Lb/m;

    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    const v1, 0xc015

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aK:Lb/m;

    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const v1, 0xc016

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aL:Lb/m;

    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc017

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aM:Lb/m;

    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const v1, 0xc018

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aN:Lb/m;

    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const v1, 0xc019

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aO:Lb/m;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc023

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aP:Lb/m;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc024

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aQ:Lb/m;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc025

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aR:Lb/m;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc026

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aS:Lb/m;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc027

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aT:Lb/m;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc028

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aU:Lb/m;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc029

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aV:Lb/m;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc02a

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aW:Lb/m;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02b

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aX:Lb/m;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02c

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aY:Lb/m;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02d

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->aZ:Lb/m;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02e

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->ba:Lb/m;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02f

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->bb:Lb/m;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc030

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->bc:Lb/m;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc031

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->bd:Lb/m;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc032

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->be:Lb/m;

    const-string v0, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const v1, 0xc035

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->bf:Lb/m;

    const-string v0, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    const v1, 0xc036

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->bg:Lb/m;

    const-string v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const v1, 0xcca8

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->bh:Lb/m;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    const v1, 0xcca9

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;I)Lb/m;

    move-result-object v0

    sput-object v0, Lb/m;->bi:Lb/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/m;->bj:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lb/m;
    .locals 3

    const-class v0, Lb/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lb/m;->bk:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/m;

    if-nez v1, :cond_0

    new-instance v1, Lb/m;

    invoke-direct {v1, p0}, Lb/m;-><init>(Ljava/lang/String;)V

    sget-object v2, Lb/m;->bk:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/String;I)Lb/m;
    .locals 0

    invoke-static {p0}, Lb/m;->a(Ljava/lang/String;)Lb/m;

    move-result-object p0

    return-object p0
.end method

.method static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lb/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Lb/m;->a(Ljava/lang/String;)Lb/m;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/m;->bj:Ljava/lang/String;

    return-object v0
.end method
