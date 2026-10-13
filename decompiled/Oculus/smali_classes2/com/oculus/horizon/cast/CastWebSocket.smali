.class Lcom/oculus/horizon/cast/CastWebSocket;
.super Lfi/iki/elonen/NanoWSD$WebSocket;
.source "CastWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mListener:Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lfi/iki/elonen/NanoWSD$WebSocket;-><init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V

    .line 12
    const-class v0, Lcom/oculus/horizon/cast/CastWebSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/cast/CastWebSocket;->TAG:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/oculus/horizon/cast/CastWebSocket;->mListener:Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;

    .line 29
    return-void
.end method


# virtual methods
.method protected onClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method protected onException(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/cast/CastWebSocket;->TAG:Ljava/lang/String;

    const-string v1, "onException: "

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method protected onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getTextPayload()Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/oculus/horizon/cast/CastWebSocket;->TAG:Ljava/lang/String;

    const-string v2, "onMessage: %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-static {v0}, Lcom/oculus/horizon/cast/Message;->fromJSONString(Ljava/lang/String;)Lcom/oculus/horizon/cast/Message;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/oculus/horizon/cast/CastWebSocket$1;->$SwitchMap$com$oculus$horizon$cast$Message$Type:[I

    iget-object v2, v0, Lcom/oculus/horizon/cast/Message;->mType:Lcom/oculus/horizon/cast/Message$Type;

    invoke-virtual {v2}, Lcom/oculus/horizon/cast/Message$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/cast/CastWebSocket;->TAG:Ljava/lang/String;

    const-string v1, "unknown message type"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v1, p0, Lcom/oculus/horizon/cast/CastWebSocket;->mListener:Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;

    iget-object v2, v0, Lcom/oculus/horizon/cast/Message;->mSessionId:Ljava/lang/String;

    iget-object v0, v0, Lcom/oculus/horizon/cast/Message;->mSpec:Lcom/oculus/horizon/cast/VideoSpec;

    invoke-interface {v1, v2, v0}, Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;->onStartCast(Ljava/lang/String;Lcom/oculus/horizon/cast/VideoSpec;)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v1, p0, Lcom/oculus/horizon/cast/CastWebSocket;->mListener:Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;

    iget-object v2, v0, Lcom/oculus/horizon/cast/Message;->mSessionId:Ljava/lang/String;

    iget-object v0, v0, Lcom/oculus/horizon/cast/Message;->mData:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;->onAnswer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v1, p0, Lcom/oculus/horizon/cast/CastWebSocket;->mListener:Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;

    iget-object v0, v0, Lcom/oculus/horizon/cast/Message;->mSessionId:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;->onStopCast(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :pswitch_3
    iget-object v1, v0, Lcom/oculus/horizon/cast/Message;->mErrorCode:Lcom/oculus/horizon/cast/Message$ErrorCode;

    sget-object v2, Lcom/oculus/horizon/cast/Message$ErrorCode;->UNKNOWN_MESSAGE:Lcom/oculus/horizon/cast/Message$ErrorCode;

    if-eq v1, v2, :cond_0

    .line 58
    iget-object v1, p0, Lcom/oculus/horizon/cast/CastWebSocket;->mListener:Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;

    iget-object v2, v0, Lcom/oculus/horizon/cast/Message;->mSessionId:Ljava/lang/String;

    iget-object v0, v0, Lcom/oculus/horizon/cast/Message;->mData:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/oculus/horizon/cast/CastWebSocket$SocketMessageListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onOpen()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/cast/CastWebSocket;->TAG:Ljava/lang/String;

    const-string v1, "onOpen()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method protected onPong(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
