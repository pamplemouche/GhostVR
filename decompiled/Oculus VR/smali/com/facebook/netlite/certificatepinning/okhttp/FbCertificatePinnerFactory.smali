.class public Lcom/facebook/netlite/certificatepinning/okhttp/FbCertificatePinnerFactory;
.super Ljava/lang/Object;
.source "FbCertificatePinnerFactory.java"


# static fields
.field private static final FB_PINNED_DOMAINS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "facebook-hardware.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ghostvr.pamplemouche.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ghostvr.pamplemouche.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ghostvr.pamplemouche.com"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "freebasics.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "internet.org"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "instagram.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ghostvr.pamplemouche.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "whatsapp.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/netlite/certificatepinning/okhttp/FbCertificatePinnerFactory;->FB_PINNED_DOMAINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPinsToBuilder(Lokhttp3/CertificatePinner$Builder;[Ljava/lang/String;)V
    .locals 12

    .prologue

    return-void
.end method

.method public static create(J)Lokhttp3/CertificatePinner;
    .locals 4

    .prologue
    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public static createPinnerWithoutFallback()Lokhttp3/CertificatePinner;
    .locals 2

    .prologue
    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public static createWithRampart(J)Lokhttp3/CertificatePinner;
    .locals 6

    .prologue
    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    return-object v0
.end method
