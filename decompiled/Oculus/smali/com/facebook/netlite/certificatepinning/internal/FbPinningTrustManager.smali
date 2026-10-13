.class public Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;
.super Ljava/lang/Object;
.source "FbPinningTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final mEnforceUntilTimestampMillis:J

.field private final mKeyStore:Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

.field private final mPinTimeoutSet:Z

.field private final mPins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;->getInstance()Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;-><init>(JLorg/thoughtcrime/ssl/pinning/SystemKeyStore;)V

    .line 52
    return-void
.end method

.method constructor <init>(JLorg/thoughtcrime/ssl/pinning/SystemKeyStore;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->mPins:Ljava/util/Set;

    .line 55
    iput-object p3, p0, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->mKeyStore:Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    .line 56
    invoke-static {}, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->initializeSystemTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->mSystemTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 57
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->mPinTimeoutSet:Z

    .line 58
    const-wide v2, 0x757b12c00L

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->mEnforceUntilTimestampMillis:J

    .line 60
    sget-object v2, Lcom/facebook/netlite/certificatepinning/internal/CertificatePinningData;->FB_CERT_SHA256_PINS:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 61
    invoke-static {v4, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 62
    iget-object v5, p0, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->mPins:Ljava/util/Set;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 57
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method private checkPinTrust([Ljava/security/cert/X509Certificate;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->mPinTimeoutSet:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->mEnforceUntilTimestampMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 112
    :cond_0
    return-void

    .line 102
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    .line 103
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "pinning error: certificate chain empty"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->mKeyStore:Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;

    invoke-static {p1, v0}, Lorg/thoughtcrime/ssl/pinning/CertificateChainCleaner;->getCleanChain([Ljava/security/cert/Certificate;Lorg/thoughtcrime/ssl/pinning/SystemKeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 110
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 111
    invoke-direct {p0, v3}, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->isValidPin(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_3
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "pinning error: unknown_ca"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSystemTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v2, p0, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->mSystemTrustManagers:[Ljavax/net/ssl/TrustManager;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 92
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method private static initializeSystemTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    .prologue
    .line 68
    :try_start_0
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 69
    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 70
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failure initializing TrustManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private isValidPin(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->mPins:Ljava/util/Set;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Client certificates not supported!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->checkSystemTrust([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->checkPinTrust([Ljava/security/cert/X509Certificate;)V

    .line 87
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 132
    new-array v0, v2, [Ljava/security/cert/X509Certificate;

    .line 133
    iget-object v4, p0, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;->mSystemTrustManagers:[Ljavax/net/ssl/TrustManager;

    array-length v5, v4

    move v1, v2

    move-object v3, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    .line 134
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 135
    array-length v7, v3

    .line 136
    array-length v0, v6

    add-int/2addr v0, v7

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 137
    array-length v3, v6

    invoke-static {v6, v2, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    goto :goto_0

    .line 139
    :cond_0
    return-object v3
.end method
