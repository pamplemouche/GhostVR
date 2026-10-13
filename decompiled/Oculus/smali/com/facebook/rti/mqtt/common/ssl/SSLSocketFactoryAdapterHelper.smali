.class public Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;
.super Ljava/lang/Object;
.source "SSLSocketFactoryAdapterHelper.java"


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mSSLVerifier:Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 19
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->mSSLVerifier:Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;

    .line 20
    return-void
.end method


# virtual methods
.method public getSocketFactory()Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;
    .locals 4

    .prologue
    .line 23
    new-instance v1, Lcom/facebook/rti/mqtt/common/ssl/JavaSSLSocketFactoryAdapter;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 24
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->mSSLVerifier:Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/rti/mqtt/common/ssl/JavaSSLSocketFactoryAdapter;-><init>(Ljava/util/concurrent/ExecutorService;Ljavax/net/ssl/SSLSocketFactory;Lcom/facebook/rti/mqtt/common/ssl/socket/SSLVerifier;)V

    return-object v1
.end method
