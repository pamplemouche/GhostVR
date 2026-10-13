.class public Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;
.super Ljava/lang/Object;
.source "DefaultMqttClientCore.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/protocol/MqttClientCore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$HappyEyeballsState;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mAddressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

.field private final mClock:Lcom/facebook/rti/common/time/Clock;

.field private final mContext:Landroid/content/Context;

.field private volatile mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

.field private mHostName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mIsSslFinished:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastUsedLocalAddress:Ljava/net/InetAddress;

.field private mLastUsedRemoteAddress:Ljava/net/InetAddress;

.field private mMessageDecoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private mMessageEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private final mMessagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

.field private final mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private final mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field private final mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

.field private final mSSLSocketFactoryAdapterHelper:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSocket:Ljava/net/Socket;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "member reference guarded by this"
    .end annotation
.end field

.field private volatile mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/mqtt/protocol/MqttParameters;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/common/time/Clock;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/rti/mqtt/protocol/AddressResolver;Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mIsSslFinished:Z

    .line 117
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mSSLSocketFactoryAdapterHelper:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

    .line 118
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 119
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 120
    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 121
    iput-object p5, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mClock:Lcom/facebook/rti/common/time/Clock;

    .line 122
    iput-object p6, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 123
    iput-object p7, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mAddressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    .line 124
    iput-object p8, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    .line 125
    iput-object p9, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mContext:Landroid/content/Context;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;Ljava/lang/String;IZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;IZ)Lcom/facebook/rti/mqtt/protocol/ConnectResult;
    .locals 1

    .prologue
    .line 64
    invoke-direct/range {p0 .. p6}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->connectInternal(Ljava/lang/String;IZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;IZ)Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;)Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->networkThreadLoop()V

    return-void
.end method

.method private connectInternal(Ljava/lang/String;IZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;IZ)Lcom/facebook/rti/mqtt/protocol/ConnectResult;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 352
    const-string v0, "DefaultMqttClientCore"

    const-string v1, "connection/connecting"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v2, 0x0

    .line 359
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->getHostAddress(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    :try_end_0
    .catch Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 372
    :try_start_1
    invoke-direct {p0, p6, p1, v6, p2}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->tryConnectOnPort(ZLjava/lang/String;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;I)Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 385
    if-nez v7, :cond_0

    .line 386
    const-string v0, "DefaultMqttClientCore"

    const-string v1, "connection/socket/failed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mAddressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v0, v6}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->markAddressFail(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    if-eqz v7, :cond_2

    const-string v0, "SSL"

    :goto_0
    const-string v2, ""

    invoke-interface {v1, v0, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->onWriteMessageComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {v7}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    monitor-enter p0

    .line 396
    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mIsSslFinished:Z

    if-eqz v0, :cond_9

    .line 397
    const-string v0, "DefaultMqttClientCore"

    const-string v1, "connection/connecting/aborted before sending connect"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_STOPPED_BEFORE_SSL:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 454
    :goto_1
    return-object v0

    .line 360
    :catch_0
    move-exception v1

    .line 361
    const-string v0, "DefaultMqttClientCore"

    const-string v2, "connection/dns/unresolved; status=%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;->getDNSResolveStatus()Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    sget-object v0, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->TimedOut:Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;->getDNSResolveStatus()Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/common/network/DNSResolveStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_DNS_RESOLVE_TIMEOUT:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V

    goto :goto_1

    .line 365
    :cond_1
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_DNS_UNRESOLVED:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V

    goto :goto_1

    .line 389
    :cond_2
    const-string v0, "SSL-failed"

    goto :goto_0

    .line 373
    :catch_1
    move-exception v1

    .line 374
    :try_start_3
    instance-of v0, v1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_4

    .line 375
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_SOCKET_CONNECT_TIMEOUT:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v3, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    :goto_2
    if-nez v2, :cond_3

    .line 386
    const-string v1, "DefaultMqttClientCore"

    const-string v3, "connection/socket/failed"

    invoke-static {v1, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mAddressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v6}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->markAddressFail(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 389
    :cond_3
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    if-eqz v2, :cond_7

    const-string v1, "SSL"

    :goto_3
    const-string v2, ""

    invoke-interface {v3, v1, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->onWriteMessageComplete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 376
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->isSslClockSkewFailure(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 377
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_SOCKET_CONNECT_ERROR_SSL_CLOCK_SKEW:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v3, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 385
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-nez v2, :cond_5

    .line 386
    const-string v0, "DefaultMqttClientCore"

    const-string v3, "connection/socket/failed"

    invoke-static {v0, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mAddressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v0, v6}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->markAddressFail(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 389
    :cond_5
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    if-eqz v2, :cond_8

    const-string v0, "SSL"

    :goto_4
    const-string v2, ""

    invoke-interface {v3, v0, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->onWriteMessageComplete(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_6
    :try_start_5
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_SOCKET_CONNECT_ERROR:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v3, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 389
    :cond_7
    const-string v1, "SSL-failed"

    goto :goto_3

    :cond_8
    const-string v0, "SSL-failed"

    goto :goto_4

    .line 400
    :cond_9
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mIsSslFinished:Z

    .line 402
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 406
    :try_start_7
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;

    new-instance v0, Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;-><init>()V

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 410
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getPublishCompression()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;-><init>(Lcom/facebook/rti/mqtt/protocol/serialization/MessageFactory;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;ILcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;)V

    .line 412
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 414
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getPublishCompression()I

    move-result v0

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessagePayloadEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

    invoke-direct {v1, v0, v3, v4}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;-><init>(ILcom/facebook/rti/mqtt/protocol/serialization/MessagePayloadEncoder;Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 417
    :try_start_8
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->init(Ljava/io/DataInputStream;)V

    .line 418
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 419
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 418
    invoke-virtual {v1, v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->init(Ljava/io/DataOutputStream;)V

    .line 422
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getConnectTimeoutMs()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 424
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->connectAndReadAck(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;ZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;I)Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    move-result-object v0

    .line 426
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 432
    :try_start_9
    iget-boolean v3, v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;->mSucceeded:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-nez v3, :cond_a

    .line 447
    invoke-static {v7}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->closeSocketQuietly(Ljava/net/Socket;)V

    .line 448
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mAddressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v6}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->markAddressFail(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    goto/16 :goto_1

    .line 402
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    .line 427
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 428
    :try_start_b
    const-string v0, "DefaultMqttClientCore"

    const-string v2, "connection/connecting/failed_io"

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 429
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CREATE_IOSTREAM:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 447
    invoke-static {v7}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->closeSocketQuietly(Ljava/net/Socket;)V

    .line 448
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mAddressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v6}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->markAddressFail(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    goto/16 :goto_1

    .line 433
    :cond_a
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 434
    :try_start_d
    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    sget-object v4, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->DISCONNECTED:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    invoke-interface {v3, v4}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->checkConnectionState(Lcom/facebook/rti/mqtt/protocol/ConnectionState;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 435
    const-string v0, "DefaultMqttClientCore"

    const-string v1, "connection/connecting/unexpected_disconnect"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_UNEXPECTED_DISCONNECT:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 447
    invoke-static {v7}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->closeSocketQuietly(Ljava/net/Socket;)V

    .line 448
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mAddressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v6}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->markAddressFail(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    goto/16 :goto_1

    .line 438
    :cond_b
    :try_start_e
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mHostName:Ljava/lang/String;

    .line 439
    invoke-direct {p0, v7, v2, v1}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->reset(Ljava/net/Socket;Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;)V

    .line 440
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 441
    :try_start_f
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    invoke-interface {v1}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->wakeUpAllThreadInObject()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 450
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mAddressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v6}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->markAddressSuccess(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    goto/16 :goto_1

    .line 440
    :catchall_2
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 444
    :catchall_3
    move-exception v0

    .line 447
    invoke-static {v7}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->closeSocketQuietly(Ljava/net/Socket;)V

    .line 448
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mAddressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1, v6}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->markAddressFail(Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;)V

    .line 450
    throw v0
.end method

.method private getHostAddress(Ljava/lang/String;)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/rti/mqtt/common/network/DNSUnresolvedException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    .line 616
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mAddressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 617
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getDnsTimeoutMs()J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->getBestAddress(Ljava/lang/String;J)Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 619
    invoke-interface {v4}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 620
    invoke-interface {v4}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->getMqttSessionId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 621
    invoke-interface {v6}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->getNetworkSessionId()J

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 622
    invoke-interface {v8}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 618
    invoke-virtual/range {v1 .. v8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttConnectionEventDnsLookupDuration(JJJLandroid/net/NetworkInfo;)V

    .line 623
    return-object v0
.end method

.method private getMessageTopicNameForAnalytics(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)Lcom/facebook/rti/common/guavalite/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;",
            ")",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    if-eqz p1, :cond_0

    .line 751
    instance-of v0, p1, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    if-eqz v0, :cond_0

    .line 752
    check-cast p1, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->mTopicName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 755
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    goto :goto_0
.end method

.method private getSocketFromMultipleAddressFamily(IILjava/net/InetAddress;Ljava/net/InetAddress;Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;)Ljava/net/Socket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 738
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getHappyEyeballsDelayMs()I

    move-result v7

    move-object v1, p3

    move-object v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;IILcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;Ljava/util/concurrent/ScheduledExecutorService;I)V

    .line 739
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method private handleNextMessageException(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 759
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 760
    invoke-static {p1}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->getFromReadException(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    move-result-object v1

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/Operation;->NETWORK_THREAD_LOOP:Lcom/facebook/rti/mqtt/protocol/Operation;

    .line 759
    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->disconnectOnError(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    .line 761
    return-void
.end method

.method private static isSslClockSkewFailure(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 703
    if-nez p0, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v0

    .line 707
    :cond_1
    const-string v1, "Could not validate certificate: current time"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    const-string/jumbo v1, "validation time: Thu Aug 28"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "validation time: Wed Aug 27"

    .line 709
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private networkThreadLoop()V
    .locals 2

    .prologue
    .line 563
    :goto_0
    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->CONNECTED:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->checkConnectionState(Lcom/facebook/rti/mqtt/protocol/ConnectionState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :goto_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->DISCONNECTED:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->notifyStateChange(Lcom/facebook/rti/mqtt/protocol/ConnectionState;)V

    .line 586
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->wakeUpAllThreadInObject()V

    .line 587
    const-string v0, "DefaultMqttClientCore"

    const-string/jumbo v1, "thread/exiting"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void

    .line 567
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessageDecoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;

    .line 568
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    :try_start_2
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->readNextMessage()Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    invoke-interface {v1, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->messageReceived(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->handleNextMessageException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 576
    :catch_1
    move-exception v0

    .line 577
    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->handleNextMessageException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 579
    :catch_2
    move-exception v0

    .line 580
    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->handleNextMessageException(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private reset(Ljava/net/Socket;Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;)V
    .locals 2

    .prologue
    .line 743
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mSocket:Ljava/net/Socket;

    .line 744
    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessageEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    .line 745
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessageDecoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;

    .line 746
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->CONNECTED:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->notifyStateChange(Lcom/facebook/rti/mqtt/protocol/ConnectionState;)V

    .line 747
    return-void
.end method

.method private sendConnectMessage(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;ZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 548
    new-instance v6, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v0, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->CONNECT:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v6, v0}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V

    .line 549
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;

    const/4 v1, 0x3

    if-nez p2, :cond_0

    move v3, v2

    :goto_0
    move v4, v2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;-><init>(IZZZI)V

    .line 556
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;

    invoke-direct {v1, v6, v0, p3}, Lcom/facebook/rti/mqtt/protocol/messages/ConnectMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnectVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;)V

    .line 557
    invoke-direct {p0, p1, v1}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->writeMessage(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    .line 558
    return-void

    .line 549
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private tryConnectOnPort(ZLjava/lang/String;Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;I)Ljava/net/Socket;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    const/4 v9, 0x0

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v16

    .line 631
    const/4 v14, 0x0

    .line 632
    sget-object v8, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$HappyEyeballsState;->UNKNOWN:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$HappyEyeballsState;

    .line 635
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getPreferredAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 636
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/rti/mqtt/protocol/dns/AddressEntry;->getAddressFromNonPreferredFamily()Ljava/net/InetAddress;

    move-result-object v6

    .line 638
    if-eqz p1, :cond_5

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v10

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mSSLSocketFactoryAdapterHelper:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;

    .line 641
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapterHelper;->getSocketFactory()Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;

    move-result-object v7

    .line 642
    if-eqz v6, :cond_2

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 646
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getSocketTimeoutMs()I

    move-result v4

    move-object/from16 v2, p0

    move/from16 v3, p4

    .line 644
    invoke-direct/range {v2 .. v7}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->getSocketFromMultipleAddressFamily(IILjava/net/InetAddress;Ljava/net/InetAddress;Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 650
    :try_start_1
    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 651
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    sget-object v8, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$HappyEyeballsState;->HE_PREFERRED:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$HappyEyeballsState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v2, v8

    move-object v8, v3

    .line 668
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getSocketTimeoutMs()I

    move-result v3

    int-to-long v4, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v3}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v12

    sub-long v10, v12, v10

    sub-long v11, v4, v10

    .line 669
    const-wide/16 v4, 0x0

    cmp-long v3, v11, v4

    if-gtz v3, :cond_3

    .line 670
    new-instance v3, Ljava/net/SocketTimeoutException;

    const-string v4, "connectSocket already timeout"

    invoke-direct {v3, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 679
    :catch_0
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v8

    move-object v8, v2

    move-object/from16 v2, v18

    .line 680
    :goto_1
    :try_start_3
    const-string v4, "DefaultMqttClientCore"

    const-string v5, "connection/close/IOException"

    invoke-static {v4, v2, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 681
    invoke-static {v3}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->closeSocketQuietly(Ljava/net/Socket;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 683
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 685
    :catchall_0
    move-exception v4

    move-object v13, v4

    move-object v5, v2

    move-object v14, v3

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 686
    invoke-interface {v3}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v6

    sub-long v3, v6, v16

    .line 688
    invoke-virtual {v8}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$HappyEyeballsState;->name()Ljava/lang/String;

    move-result-object v6

    .line 689
    invoke-static {v5}, Lcom/facebook/rti/common/guavalite/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 690
    invoke-interface {v5}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->getMqttSessionId()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 691
    invoke-interface {v5}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->getNetworkSessionId()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 692
    invoke-interface {v5}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    move/from16 v5, p4

    .line 685
    invoke-virtual/range {v2 .. v12}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttConnectionEventSocketConnectResult(JILjava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;)V

    .line 693
    if-eqz v14, :cond_0

    .line 694
    invoke-virtual {v14}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mLastUsedLocalAddress:Ljava/net/InetAddress;

    .line 695
    invoke-virtual {v14}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mLastUsedRemoteAddress:Ljava/net/InetAddress;

    :cond_0
    throw v13

    .line 653
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 654
    sget-object v8, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$HappyEyeballsState;->HE_NONPREFERRED:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$HappyEyeballsState;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v2, v8

    move-object v8, v3

    goto/16 :goto_0

    .line 658
    :cond_2
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 662
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getSocketTimeoutMs()I

    move-result v2

    .line 659
    move/from16 v0, p4

    invoke-static {v5, v0, v2, v7}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->getSocketByAddress(Ljava/net/InetAddress;IILcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;)Ljava/net/Socket;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    .line 664
    :try_start_7
    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 665
    sget-object v8, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$HappyEyeballsState;->DEFAULT:Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$HappyEyeballsState;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v2, v8

    move-object v8, v3

    goto/16 :goto_0

    :cond_3
    move-object/from16 v9, p2

    move/from16 v10, p4

    .line 672
    :try_start_8
    invoke-virtual/range {v7 .. v12}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;->handshakeAndVerifySocket(Ljava/net/Socket;Ljava/lang/String;IJ)Ljava/net/Socket;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v3

    move-object v5, v2

    move-object v13, v3

    .line 685
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 686
    invoke-interface {v3}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v6

    sub-long v3, v6, v16

    .line 688
    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$HappyEyeballsState;->name()Ljava/lang/String;

    move-result-object v6

    .line 689
    invoke-static {v14}, Lcom/facebook/rti/common/guavalite/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 690
    invoke-interface {v5}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->getMqttSessionId()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 691
    invoke-interface {v5}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->getNetworkSessionId()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 692
    invoke-interface {v5}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    move/from16 v5, p4

    .line 685
    invoke-virtual/range {v2 .. v12}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttConnectionEventSocketConnectResult(JILjava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;)V

    .line 693
    if-eqz v13, :cond_4

    .line 694
    invoke-virtual {v13}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mLastUsedLocalAddress:Ljava/net/InetAddress;

    .line 695
    invoke-virtual {v13}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mLastUsedRemoteAddress:Ljava/net/InetAddress;

    .line 699
    :cond_4
    return-object v13

    .line 674
    :cond_5
    :try_start_9
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 675
    :try_start_a
    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->configSocket(Ljava/net/Socket;)V

    .line 676
    new-instance v3, Ljava/net/InetSocketAddress;

    move/from16 v0, p4

    invoke-direct {v3, v5, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    .line 677
    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getSocketTimeoutMs()I

    move-result v4

    .line 676
    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v5, v8

    move-object v13, v2

    goto :goto_3

    .line 685
    :catchall_1
    move-exception v2

    move-object v13, v2

    move-object v5, v14

    move-object v14, v9

    goto/16 :goto_2

    :catchall_2
    move-exception v2

    move-object v13, v2

    move-object v5, v14

    move-object v14, v3

    goto/16 :goto_2

    :catchall_3
    move-exception v3

    move-object v13, v3

    move-object v5, v14

    move-object v14, v8

    move-object v8, v2

    goto/16 :goto_2

    :catchall_4
    move-exception v3

    move-object v13, v3

    move-object v5, v14

    move-object v14, v2

    goto/16 :goto_2

    :catchall_5
    move-exception v2

    move-object v13, v2

    move-object v5, v14

    move-object v14, v3

    goto/16 :goto_2

    .line 679
    :catch_1
    move-exception v2

    move-object v3, v9

    goto/16 :goto_1

    :catch_2
    move-exception v2

    goto/16 :goto_1

    :catch_3
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    goto/16 :goto_1

    :cond_6
    move-object v2, v8

    move-object v8, v3

    goto/16 :goto_0
.end method

.method private writeMessage(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    if-nez p1, :cond_0

    .line 594
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No message encoder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->getMessageTopicNameForAnalytics(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v1

    .line 597
    const-string v0, ""

    .line 598
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/thrift/MqttTopic;->decodeTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    if-nez v0, :cond_1

    .line 601
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 605
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;->writeMessage(Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->onWriteMessageComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return-void

    .line 606
    :catch_0
    move-exception v1

    .line 607
    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    invoke-interface {v2, v3, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->onWriteMessageComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    throw v1
.end method


# virtual methods
.method public cleanUpStates()V
    .locals 2

    .prologue
    .line 181
    const-string v0, "DefaultMqttClientCore"

    const-string v1, "connection/cleanup_failure"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->closeSocketQuietly(Ljava/net/Socket;)V

    .line 183
    monitor-enter p0

    .line 184
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mSocket:Ljava/net/Socket;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mHostName:Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessageDecoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessageEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    .line 188
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->DISCONNECTED:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->notifyStateChange(Lcom/facebook/rti/mqtt/protocol/ConnectionState;)V

    .line 189
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->wakeUpAllThreadInObject()V

    .line 191
    return-void

    .line 189
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized connect(Ljava/lang/String;IZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;IZ)V
    .locals 9

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore$1;-><init>(Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;Ljava/lang/String;IZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;IZ)V

    const-string v1, "MqttClient-Network-Thread"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 174
    const-string v0, "DefaultMqttClientCore"

    const-string/jumbo v1, "thread/set_priority; priority=%d"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getThreadPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttParameters:Lcom/facebook/rti/mqtt/protocol/MqttParameters;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/MqttParameters;->getThreadPriority()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 176
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method connectAndReadAck(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;ZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;I)Lcom/facebook/rti/mqtt/protocol/ConnectResult;
    .locals 10

    .prologue
    .line 464
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    .line 466
    :try_start_0
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->sendConnectMessage(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;ZLcom/facebook/rti/mqtt/protocol/messages/ConnectPayload;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :try_start_1
    invoke-virtual {p2}, Lcom/facebook/rti/mqtt/protocol/serialization/MessageDecoder;->readNextMessage()Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v9

    .line 488
    invoke-virtual {v9}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v0

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->CONNACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    if-eq v0, v1, :cond_0

    .line 489
    const-string v0, "DefaultMqttClientCore"

    const-string/jumbo v1, "receive/unexpected; type=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v9}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;->getMessageType()Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_INVALID_CONACK:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;)V

    .line 536
    :goto_0
    return-object v0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    const-string v0, "DefaultMqttClientCore"

    const-string v2, "exception/send_connect_failed"

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 469
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECT_MESSAGE:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V

    goto :goto_0

    .line 474
    :catch_1
    move-exception v1

    .line 475
    const-string v0, "DefaultMqttClientCore"

    const-string v2, "exception/read_conack_timeout"

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 476
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_MQTT_CONACK_TIMEOUT:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V

    goto :goto_0

    .line 477
    :catch_2
    move-exception v1

    .line 478
    const-string v0, "DefaultMqttClientCore"

    const-string v2, "exception/read_conack_failed"

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 479
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNACK_READ:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V

    goto :goto_0

    .line 480
    :catch_3
    move-exception v1

    .line 481
    const-string v0, "DefaultMqttClientCore"

    const-string v2, "exception/deserialize_failed"

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 482
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNACK_READ:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V

    goto :goto_0

    .line 483
    :catch_4
    move-exception v1

    .line 484
    const-string v0, "DefaultMqttClientCore"

    const-string v2, "exception/compression_error"

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 485
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNACK_READ:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;Ljava/lang/Exception;)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->CONNECT:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 494
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 495
    invoke-interface {v4}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 496
    invoke-interface {v4}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->getMqttSessionId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 497
    invoke-interface {v6}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->getNetworkSessionId()J

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 498
    invoke-interface {v8}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 493
    invoke-virtual/range {v0 .. v8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttMessageEventResponseTime(Ljava/lang/String;JJJLandroid/net/NetworkInfo;)V

    move-object v0, v9

    .line 500
    check-cast v0, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;

    .line 501
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;

    move-result-object v1

    iget-byte v1, v1, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckVariableHeader;->mReturnCode:B

    .line 502
    if-eqz v1, :cond_5

    .line 503
    const-string v0, "DefaultMqttClientCore"

    const-string v2, "connection/refused; rc=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    const/16 v0, 0x11

    if-ne v1, v0, :cond_1

    .line 506
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_SERVER_SHEDDING_LOAD:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;B)V

    goto/16 :goto_0

    .line 508
    :cond_1
    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    .line 509
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_NOT_AUTHORIZED:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;B)V

    goto/16 :goto_0

    .line 511
    :cond_2
    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    .line 514
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED_BAD_USER_NAME_OR_PASSWORD:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;B)V

    goto/16 :goto_0

    .line 517
    :cond_3
    const/16 v0, 0x13

    if-ne v1, v0, :cond_4

    .line 518
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_UNKNOWN_CONNECT_HASH:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;B)V

    goto/16 :goto_0

    .line 521
    :cond_4
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;->FAILED_CONNECTION_REFUSED:Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;

    invoke-direct {v0, v2, v1}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/protocol/ConnectionFailureReason;B)V

    goto/16 :goto_0

    .line 524
    :cond_5
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckMqttMessage;->getPayload()Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;

    move-result-object v2

    .line 525
    const-string v0, "DefaultMqttClientCore"

    const-string v1, "connection/conack; payload=%s"

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    iget-object v0, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mDeviceSecret:Ljava/lang/String;

    .line 528
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 529
    :cond_6
    sget-object v0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;->EMPTY:Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    .line 534
    :goto_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    iget-object v3, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mRefCode:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->updateRefCode(Ljava/lang/String;)V

    .line 535
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/ConnectResult;

    iget-object v3, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mConnectionKey:Ljava/lang/String;

    .line 537
    invoke-static {v3}, Lcom/facebook/rti/common/util/StringUtil;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mConnectionSecret:Ljava/lang/String;

    .line 538
    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-static {v3, v2}, Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/rti/mqtt/protocol/ConnectResult;-><init>(Lcom/facebook/rti/mqtt/credentials/MqttAuthenticationKeySecretPair;Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 531
    :cond_7
    new-instance v0, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;

    iget-object v1, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mDeviceId:Ljava/lang/String;

    iget-object v3, v2, Lcom/facebook/rti/mqtt/protocol/messages/ConnAckPayload;->mDeviceSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mClock:Lcom/facebook/rti/common/time/Clock;

    .line 532
    invoke-interface {v4}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v4

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/facebook/rti/mqtt/credentials/MqttDeviceIdAndSecret;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public decodeTopicName(Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 320
    invoke-virtual {p1}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;->getVariableHeader()Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;->mTopicName:Ljava/lang/String;

    .line 321
    invoke-static {v0}, Lcom/facebook/rti/common/thrift/MqttTopic;->decodeTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    if-nez v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    const/4 v2, 0x0

    const-string v3, "mqtt_enum_topic"

    const-string v4, "Failed to decode topic %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 327
    invoke-static {v4, v5}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-interface {v1, v2, v3, v4}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getClientStack()B
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x3

    return v0
.end method

.method public getConnectInfoForUserReport()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mLastUsedRemoteAddress:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 306
    const-string v1, "Remote:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mLastUsedRemoteAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mLastUsedLocalAddress:Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    .line 311
    const-string v1, "Local:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mLastUsedLocalAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mAddressResolver:Lcom/facebook/rti/mqtt/protocol/AddressResolver;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/protocol/AddressResolver;->getCachedAddressDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getRemoteSocketAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_1

    .line 293
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mHostName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mHostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 299
    :goto_0
    monitor-exit p0

    return-object v0

    .line 296
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_1
    const-string v0, "N/A"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendPingReqMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGREQ:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V

    .line 277
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessageEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->writeMessage(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendPingRespMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGRESP:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V

    .line 284
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessageEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->writeMessage(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendPubAck(ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 231
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/ConnectionState;->CONNECTED:Lcom/facebook/rti/mqtt/protocol/ConnectionState;

    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->checkConnectionState(Lcom/facebook/rti/mqtt/protocol/ConnectionState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    const/4 v1, 0x0

    const-string v2, "not_connected"

    invoke-interface {v0, v1, v2, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->notifyPubAckResult(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 234
    monitor-exit p0

    .line 250
    :goto_0
    return-void

    .line 237
    :cond_0
    const-string v0, "DefaultMqttClientCore"

    const-string/jumbo v1, "send/puback; id=%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBACK:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V

    .line 239
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    invoke-direct {v1, p1}, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;-><init>(I)V

    .line 240
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;

    invoke-direct {v2, v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/PubAckMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;)V

    .line 241
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessageEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    invoke-direct {p0, v0, v2}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->writeMessage(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V

    .line 242
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :try_start_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->notifyPubAckResult(ZLjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    const-string v1, "DefaultMqttClientCore"

    const-string v2, "exception/puback"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 247
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->getFromWriteException(Ljava/lang/Throwable;)Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    move-result-object v2

    sget-object v3, Lcom/facebook/rti/mqtt/protocol/Operation;->PUBACK:Lcom/facebook/rti/mqtt/protocol/Operation;

    .line 246
    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->disconnectOnError(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    .line 248
    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "puback_exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0, p2}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->notifyPubAckResult(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public declared-synchronized sendPublishMessage(Ljava/lang/String;[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/rti/common/thrift/MqttTopic;->encodeTopic(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    :goto_0
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PUBLISH:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v0, v1, p3}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;I)V

    .line 223
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;

    invoke-direct {v1, p1, p4}, Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;-><init>(Ljava/lang/String;I)V

    .line 224
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;

    invoke-direct {v2, v0, v1, p2}, Lcom/facebook/rti/mqtt/protocol/messages/PublishMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/PublishVariableHeader;[B)V

    .line 225
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessageEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    invoke-direct {p0, v0, v2}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->writeMessage(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 217
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    const/4 v1, 0x0

    const-string v2, "mqtt_enum_topic"

    const-string v3, "Failed to encode topic %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 220
    invoke-static {v3, v4}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendSubscribeMessage(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->SUBSCRIBE:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V

    .line 256
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    invoke-direct {v1, p2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;-><init>(I)V

    .line 257
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;

    invoke-direct {v2, p1}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;-><init>(Ljava/util/List;)V

    .line 258
    new-instance v3, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/SubscribePayload;)V

    .line 260
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessageEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    invoke-direct {p0, v0, v3}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->writeMessage(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendUnsubscribeMessage(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;

    sget-object v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->UNSUBSCRIBE:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    invoke-direct {v0, v1}, Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/MessageType;)V

    .line 267
    new-instance v1, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;

    invoke-direct {v1, p2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;-><init>(I)V

    .line 268
    new-instance v2, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;

    invoke-direct {v2, p1}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;-><init>(Ljava/util/List;)V

    .line 269
    new-instance v3, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribeMqttMessage;-><init>(Lcom/facebook/rti/mqtt/protocol/messages/FixedHeader;Lcom/facebook/rti/mqtt/protocol/messages/MessageIdVariableHeader;Lcom/facebook/rti/mqtt/protocol/messages/UnsubscribePayload;)V

    .line 271
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mMessageEncoder:Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;

    invoke-direct {p0, v0, v3}, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->writeMessage(Lcom/facebook/rti/mqtt/protocol/serialization/MessageEncoder;Lcom/facebook/rti/mqtt/protocol/messages/MqttMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallbacks(Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    .line 131
    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mStatsCallback:Lcom/facebook/rti/mqtt/common/analytics/RTStatsCallback;

    .line 132
    return-void
.end method

.method public stopConnectingIfConnectNotSent()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 195
    const/4 v1, 0x0

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mIsSslFinished:Z

    if-nez v2, :cond_1

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mIsSslFinished:Z

    .line 201
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/DefaultMqttClientCore;->mCoreCallback:Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;->ABORTED_PREEMPTIVE_RECONNECT:Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/Operation;->NETWORK_THREAD_LOOP:Lcom/facebook/rti/mqtt/protocol/Operation;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/MqttClientCoreCallback;->disconnectOnError(Lcom/facebook/rti/mqtt/common/analytics/DisconnectDetailReason;Lcom/facebook/rti/mqtt/protocol/Operation;Ljava/lang/Throwable;)V

    .line 206
    :cond_0
    return-void

    .line 201
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
