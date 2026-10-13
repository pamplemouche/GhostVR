.class public Lcom/facebook/netlite/certificatepinning/FbPinningSSLContextFactory;
.super Ljava/lang/Object;
.source "FbPinningSSLContextFactory.java"


# instance fields
.field private final mTrustManagers:[Ljavax/net/ssl/X509TrustManager;

.field private sandboxEnabled:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/X509TrustManager;

    iput-object v0, p0, Lcom/facebook/netlite/certificatepinning/FbPinningSSLContextFactory;->mTrustManagers:[Ljavax/net/ssl/X509TrustManager;

    .line 16
    iput-boolean v2, p0, Lcom/facebook/netlite/certificatepinning/FbPinningSSLContextFactory;->sandboxEnabled:Z

    .line 19
    iget-object v0, p0, Lcom/facebook/netlite/certificatepinning/FbPinningSSLContextFactory;->mTrustManagers:[Ljavax/net/ssl/X509TrustManager;

    new-instance v1, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;

    invoke-direct {v1, p1, p2}, Lcom/facebook/netlite/certificatepinning/internal/FbPinningTrustManager;-><init>(J)V

    aput-object v1, v0, v2

    .line 20
    return-void
.end method


# virtual methods
.method public create()Ljavax/net/ssl/SSLContext;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Parameter Not Nullable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 37
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/facebook/netlite/certificatepinning/FbPinningSSLContextFactory;->mTrustManagers:[Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 39
    return-object v0
.end method

.method public enableSandbox()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    iget-boolean v0, p0, Lcom/facebook/netlite/certificatepinning/FbPinningSSLContextFactory;->sandboxEnabled:Z

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/facebook/netlite/certificatepinning/FbPinningSSLContextFactory;->mTrustManagers:[Ljavax/net/ssl/X509TrustManager;

    new-instance v1, Lcom/facebook/netlite/certificatepinning/internal/SandboxTrustManager;

    iget-object v2, p0, Lcom/facebook/netlite/certificatepinning/FbPinningSSLContextFactory;->mTrustManagers:[Ljavax/net/ssl/X509TrustManager;

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lcom/facebook/netlite/certificatepinning/internal/SandboxTrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    aput-object v1, v0, v3

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/netlite/certificatepinning/FbPinningSSLContextFactory;->sandboxEnabled:Z

    .line 27
    :cond_0
    return-void
.end method

.method public getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/netlite/certificatepinning/FbPinningSSLContextFactory;->mTrustManagers:[Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
