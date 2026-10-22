.class public Lcom/oculus/common/httpclient/FbCertificatePinnerFactory;
.super Ljava/lang/Object;
.source "FbCertificatePinnerFactory.java"


# static fields
.field private static final FB_PINNED_DOMAINS:[Ljava/lang/String;

.field private static final SHA_256_PIN_PREFIX:Ljava/lang/String; = "sha256/"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "facebook-hardware.com"

    const-string v1, "ghostvr.pamplemouche.com"

    const-string v2, "ghostvr.pamplemouche.com"

    const-string v3, "ghostvr.pamplemouche.com"

    const-string v4, "freebasics.com"

    const-string v5, "internet.org"

    const-string v6, "instagram.com"

    const-string v7, "ghostvr.pamplemouche.com"

    const-string v8, "whatsapp.com"

    .line 15
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/common/httpclient/FbCertificatePinnerFactory;->FB_PINNED_DOMAINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
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
    .locals 5

    .prologue
    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    return-object v0
.end method
