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

    const-string v1, "facebook.com"

    const-string v2, "fbcdn.net"

    const-string v3, "fbsbx.com"

    const-string v4, "freebasics.com"

    const-string v5, "internet.org"

    const-string v6, "instagram.com"

    const-string v7, "oculus.com"

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

    .line 66
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 67
    sget-object v4, Lcom/oculus/common/httpclient/FbCertificatePinnerFactory;->FB_PINNED_DOMAINS:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    const/4 v8, 0x1

    .line 68
    new-array v9, v8, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sha256/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-virtual {p0, v7, v9}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    .line 69
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {p0, v7, v8}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    sub-long/2addr v0, v2

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 35
    sget-object p0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    return-object p0

    .line 37
    :cond_0
    invoke-static {}, Lcom/oculus/common/httpclient/FbCertificatePinnerFactory;->createPinnerWithoutFallback()Lokhttp3/CertificatePinner;

    move-result-object p0

    return-object p0
.end method

.method public static createPinnerWithoutFallback()Lokhttp3/CertificatePinner;
    .locals 2

    .line 59
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    .line 60
    sget-object v1, Lcom/oculus/common/httpclient/CertificatePinningData;->FB_CERT_SHA256_PINS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/common/httpclient/FbCertificatePinnerFactory;->addPinsToBuilder(Lokhttp3/CertificatePinner$Builder;[Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    return-object v0
.end method

.method public static createWithRampart(J)Lokhttp3/CertificatePinner;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .line 44
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x757b12c00L

    sub-long/2addr v1, v3

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    .line 47
    sget-object p0, Lcom/oculus/common/httpclient/CertificatePinningData;->FB_CERT_SHA256_PINS:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oculus/common/httpclient/FbCertificatePinnerFactory;->addPinsToBuilder(Lokhttp3/CertificatePinner$Builder;[Ljava/lang/String;)V

    .line 49
    :cond_0
    sget-object p0, Lcom/oculus/common/httpclient/CertificatePinningData;->FB_INTERNAL_CERT_SHA256_PINS:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oculus/common/httpclient/FbCertificatePinnerFactory;->addPinsToBuilder(Lokhttp3/CertificatePinner$Builder;[Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object p0

    return-object p0
.end method
