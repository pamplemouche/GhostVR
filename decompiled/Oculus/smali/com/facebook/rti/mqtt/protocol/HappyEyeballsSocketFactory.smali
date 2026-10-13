.class public Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;
.super Ljava/lang/Object;
.source "HappyEyeballsSocketFactory.java"


# instance fields
.field private final mAddressFromNonPreferredFamily:Ljava/net/InetAddress;

.field private final mHappyEyeballsDelayMs:I

.field private final mPort:I

.field private final mPreferredAddress:Ljava/net/InetAddress;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSocket:Ljava/net/Socket;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mSocketFactoryAdapter:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;

.field private final mTimeoutMs:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;IILcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mSocketFactoryAdapter:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;

    .line 64
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mPreferredAddress:Ljava/net/InetAddress;

    .line 65
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mAddressFromNonPreferredFamily:Ljava/net/InetAddress;

    .line 66
    iput p3, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mPort:I

    .line 67
    iput p4, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mTimeoutMs:I

    .line 68
    iput-object p6, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 69
    iput p7, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mHappyEyeballsDelayMs:I

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;)Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mAddressFromNonPreferredFamily:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;Ljava/net/Socket;Ljava/net/InetAddress;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->connect(Ljava/net/Socket;Ljava/net/InetAddress;Ljava/net/Socket;)V

    return-void
.end method

.method private connect(Ljava/net/Socket;Ljava/net/InetAddress;Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p1}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->configSocket(Ljava/net/Socket;)V

    .line 125
    const-string v0, "HappyEyeballsSocketFactory"

    const-string v1, "Connecting to %s"

    invoke-static {v0, v1, p2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mPort:I

    invoke-direct {v0, p2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v1, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mTimeoutMs:I

    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 127
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mSocket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 130
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mSocket:Ljava/net/Socket;

    .line 131
    invoke-static {p3}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->closeSocketQuietly(Ljava/net/Socket;)V

    .line 133
    :cond_0
    monitor-exit p0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getSocket()Ljava/net/Socket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 73
    const-string v0, "HappyEyeballsSocketFactory"

    const-string v1, "getSocket for %s and %s"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mPreferredAddress:Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mAddressFromNonPreferredFamily:Ljava/net/InetAddress;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mSocketFactoryAdapter:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;->createSocket()Ljava/net/Socket;

    move-result-object v1

    .line 76
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mSocketFactoryAdapter:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;->createSocket()Ljava/net/Socket;

    move-result-object v2

    .line 79
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;-><init>(Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;Ljava/net/Socket;Ljava/net/Socket;)V

    iget v4, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mHappyEyeballsDelayMs:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 80
    invoke-interface {v0, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mPreferredAddress:Ljava/net/InetAddress;

    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->connect(Ljava/net/Socket;Ljava/net/InetAddress;Ljava/net/Socket;)V

    .line 95
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const-string v0, "HappyEyeballsSocketFactory"

    const-string v1, "HE is returning socket connected to %s"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->mSocket:Ljava/net/Socket;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-static {v1}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->closeSocketQuietly(Ljava/net/Socket;)V

    .line 100
    :try_start_2
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    .line 102
    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->closeSocketQuietly(Ljava/net/Socket;)V

    .line 103
    const-string v2, "HappyEyeballsSocketFactory"

    const-string v3, "Failed to connect to both sockets: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, v0, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 105
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to connect to both sockets: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 107
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect to both sockets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "socket connect call succeeded but socket is not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
