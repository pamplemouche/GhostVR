.class public Lfi/iki/elonen/NanoHTTPD$ServerRunnable;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerRunnable"
.end annotation


# instance fields
.field private bindException:Ljava/io/IOException;

.field private hasBinded:Z

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;I)V
    .locals 1

    .prologue
    .line 1954
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z

    .line 1955
    iput p2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    .line 1956
    return-void
.end method

.method static synthetic access$1300(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Z
    .locals 1

    .prologue
    .line 1946
    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z

    return v0
.end method

.method static synthetic access$1400(Lfi/iki/elonen/NanoHTTPD$ServerRunnable;)Ljava/io/IOException;
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1961
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$1100(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$900(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$900(Lfi/iki/elonen/NanoHTTPD;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->access$1000(Lfi/iki/elonen/NanoHTTPD;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 1962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->hasBinded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1969
    :cond_0
    :try_start_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$1100(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 1970
    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    if-lez v1, :cond_1

    .line 1971
    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->timeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1973
    :cond_1
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1974
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    iget-object v2, v2, Lfi/iki/elonen/NanoHTTPD;->asyncRunner:Lfi/iki/elonen/NanoHTTPD$AsyncRunner;

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v3, v0, v1}, Lfi/iki/elonen/NanoHTTPD;->createClientHandler(Ljava/net/Socket;Ljava/io/InputStream;)Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    move-result-object v0

    invoke-interface {v2, v0}, Lfi/iki/elonen/NanoHTTPD$AsyncRunner;->exec(Lfi/iki/elonen/NanoHTTPD$ClientHandler;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1978
    :goto_1
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->access$1100(Lfi/iki/elonen/NanoHTTPD;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    :goto_2
    return-void

    .line 1961
    :cond_2
    :try_start_2
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD;->access$1000(Lfi/iki/elonen/NanoHTTPD;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1963
    :catch_0
    move-exception v0

    .line 1964
    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$ServerRunnable;->bindException:Ljava/io/IOException;

    goto :goto_2

    .line 1975
    :catch_1
    move-exception v0

    .line 1976
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Communication with the client broken"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
