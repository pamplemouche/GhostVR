.class public Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;
.super Ljava/lang/Object;
.source "SSLVerifier.java"


# instance fields
.field private final mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 23
    return-void
.end method

.method private checkSessionValid(Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "SSL Session is null"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "SSL_NULL_WITH_NULL_NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41
    const-string v1, "SSL handshake returned an invalid session. Socket state (%s, %s, %s, %s, %s, %s, %s)"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 44
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "closed"

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x1

    .line 45
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "connected"

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x2

    .line 46
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bound"

    :goto_2
    aput-object v0, v2, v3

    const/4 v3, 0x3

    .line 47
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "input_shutdown"

    :goto_3
    aput-object v0, v2, v3

    const/4 v3, 0x4

    .line 48
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "output_shutdown"

    :goto_4
    aput-object v0, v2, v3

    const/4 v0, 0x5

    aput-object p3, v2, v0

    const/4 v0, 0x6

    .line 50
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 42
    invoke-static {v1, v2}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_1
    const-string v0, "open"

    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "disconnected"

    goto :goto_1

    .line 46
    :cond_3
    const-string/jumbo v0, "unbound"

    goto :goto_2

    .line 47
    :cond_4
    const-string v0, "input_open"

    goto :goto_3

    .line 48
    :cond_5
    const-string v0, "output_open"

    goto :goto_4

    .line 54
    :cond_6
    return-void
.end method

.method private getCertificateDebugInfo(Ljavax/net/ssl/SSLSession;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 99
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 101
    const-string v1, "num: %d, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, v0

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 101
    invoke-static {v1, v2}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const-string v0, "No certificates"
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception getting certificates "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public verifySSLSocket(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    .line 87
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;->checkSessionValid(Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v1, p2, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "could not verify hostname for (%s, %s). (%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    .line 93
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;->getCertificateDebugInfo(Ljavax/net/ssl/SSLSession;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 91
    invoke-static {v2, v3}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    return-void
.end method
