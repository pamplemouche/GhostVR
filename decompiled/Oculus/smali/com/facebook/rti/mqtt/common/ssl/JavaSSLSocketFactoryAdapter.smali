.class public Lcom/facebook/rti/mqtt/common/ssl/JavaSSLSocketFactoryAdapter;
.super Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;
.source "JavaSSLSocketFactoryAdapter.java"


# instance fields
.field private final mSSLVerifier:Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;

.field private final mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljavax/net/ssl/SSLSocketFactory;Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 22
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/ssl/JavaSSLSocketFactoryAdapter;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 23
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/ssl/JavaSSLSocketFactoryAdapter;->mSSLVerifier:Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;

    .line 24
    return-void
.end method


# virtual methods
.method public handshakeAndVerifySocket(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkArgument(Z)V

    .line 31
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/JavaSSLSocketFactoryAdapter;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 32
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/ssl/JavaSSLSocketFactoryAdapter;->mSSLVerifier:Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;

    invoke-virtual {v1, v0, p2}, Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;->verifySSLSocket(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 33
    return-object v0
.end method
