.class public Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;
.super Ljava/lang/Object;
.source "MqttSocketUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeSocketQuietly(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 21
    if-eqz p0, :cond_0

    .line 23
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static configSocket(Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 15
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 16
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 17
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 18
    return-void
.end method

.method static getSocketByAddress(Ljava/net/InetAddress;IILcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p3}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttSocketUtil;->configSocket(Ljava/net/Socket;)V

    .line 35
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 36
    return-object v0
.end method
