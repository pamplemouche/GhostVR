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

    const-string v2, "facebook.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fbcdn.net"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fbsbx.com"

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

    const-string v2, "oculus.com"

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
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 63
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    .line 64
    sget-object v5, Lcom/facebook/netlite/certificatepinning/okhttp/FbCertificatePinnerFactory;->FB_PINNED_DOMAINS:[Ljava/lang/String;

    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 65
    new-array v8, v11, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sha256/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {p0, v7, v8}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sha256/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {p0, v7, v8}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method public static create(J)Lokhttp3/CertificatePinner;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    sub-long/2addr v0, v2

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 32
    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    .line 34
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/netlite/certificatepinning/okhttp/FbCertificatePinnerFactory;->createPinnerWithoutFallback()Lokhttp3/CertificatePinner;

    move-result-object v0

    goto :goto_0
.end method

.method public static createPinnerWithoutFallback()Lokhttp3/CertificatePinner;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    .line 57
    sget-object v1, Lcom/facebook/netlite/certificatepinning/internal/CertificatePinningData;->FB_CERT_SHA256_PINS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/netlite/certificatepinning/okhttp/FbCertificatePinnerFactory;->addPinsToBuilder(Lokhttp3/CertificatePinner$Builder;[Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    return-object v0
.end method

.method public static createWithRampart(J)Lokhttp3/CertificatePinner;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x757b12c00L

    sub-long/2addr v2, v4

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    .line 44
    sget-object v1, Lcom/facebook/netlite/certificatepinning/internal/CertificatePinningData;->FB_CERT_SHA256_PINS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/netlite/certificatepinning/okhttp/FbCertificatePinnerFactory;->addPinsToBuilder(Lokhttp3/CertificatePinner$Builder;[Ljava/lang/String;)V

    .line 46
    :cond_0
    sget-object v1, Lcom/facebook/netlite/certificatepinning/internal/CertificatePinningData;->FB_INTERNAL_CERT_SHA256_PINS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/netlite/certificatepinning/okhttp/FbCertificatePinnerFactory;->addPinsToBuilder(Lokhttp3/CertificatePinner$Builder;[Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    return-object v0
.end method
