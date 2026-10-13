.class public abstract Lfi/iki/elonen/NanoWSD$WebSocket;
.super Ljava/lang/Object;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WebSocket"
.end annotation


# instance fields
.field private final continuousFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfi/iki/elonen/NanoWSD$WebSocketFrame;",
            ">;"
        }
    .end annotation
.end field

.field private continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field private final handshakeRequest:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

.field private final handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

.field private final in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private state:Lfi/iki/elonen/NanoWSD$State;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v4, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    .line 75
    sget-object v0, Lfi/iki/elonen/NanoWSD$State;->UNCONNECTED:Lfi/iki/elonen/NanoWSD$State;

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    .line 79
    new-instance v1, Lfi/iki/elonen/NanoWSD$WebSocket$1;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->SWITCH_PROTOCOL:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-object v5, v4

    check-cast v5, Ljava/io/InputStream;

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lfi/iki/elonen/NanoWSD$WebSocket$1;-><init>(Lfi/iki/elonen/NanoWSD$WebSocket;Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    iput-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

    .line 93
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeRequest:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    .line 94
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->in:Ljava/io/InputStream;

    .line 96
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

    const-string v1, "upgrade"

    const-string v2, "websocket"

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

    const-string v1, "connection"

    const-string v2, "Upgrade"

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method static synthetic access$002(Lfi/iki/elonen/NanoWSD$WebSocket;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->out:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$102(Lfi/iki/elonen/NanoWSD$WebSocket;Lfi/iki/elonen/NanoWSD$State;)Lfi/iki/elonen/NanoWSD$State;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    return-object p1
.end method

.method static synthetic access$200(Lfi/iki/elonen/NanoWSD$WebSocket;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lfi/iki/elonen/NanoWSD$WebSocket;->readWebsocket()V

    return-void
.end method

.method private doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->CLOSED:Lfi/iki/elonen/NanoWSD$State;

    if-ne v0, v1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 149
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_1
    :goto_1
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 156
    :try_start_1
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    :cond_2
    :goto_2
    sget-object v0, Lfi/iki/elonen/NanoWSD$State;->CLOSED:Lfi/iki/elonen/NanoWSD$State;

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lfi/iki/elonen/NanoWSD$WebSocket;->onClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-static {}, Lfi/iki/elonen/NanoWSD;->access$300()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "close failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 157
    :catch_1
    move-exception v0

    .line 158
    invoke-static {}, Lfi/iki/elonen/NanoWSD;->access$300()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "close failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private handleCloseFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 177
    const-string v0, ""

    .line 178
    instance-of v2, p1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 179
    check-cast v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    invoke-virtual {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->getCloseCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object v1

    .line 180
    check-cast p1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->getCloseReason()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v3, Lfi/iki/elonen/NanoWSD$State;->CLOSING:Lfi/iki/elonen/NanoWSD$State;

    if-ne v2, v3, :cond_1

    .line 184
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lfi/iki/elonen/NanoWSD$WebSocket;->close(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private handleFrameFragment(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Continuation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eq v0, v1, :cond_1

    .line 193
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Previous continuous frame sequence not completed."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 197
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isFin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-nez v0, :cond_2

    .line 202
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Continuous frame sequence was not started."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_2
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 207
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 208
    :cond_3
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-nez v0, :cond_4

    .line 210
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Continuous frame sequence was not started."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_4
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private handleWebsocketFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->debugFrameReceived(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 219
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->handleCloseFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 234
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Ping:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_1

    .line 222
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Pong:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Pong:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_2

    .line 224
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->onPong(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isFin()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Continuation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_4

    .line 226
    :cond_3
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->handleFrameFragment(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_0

    .line 227
    :cond_4
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->continuousOpCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eqz v0, :cond_5

    .line 228
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Continuous frame sequence not completed."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_5
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Text:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Binary:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_7

    .line 230
    :cond_6
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    goto :goto_0

    .line 232
    :cond_7
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Non control or continuous frame expected."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0
.end method

.method private readWebsocket()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    :goto_0
    :try_start_0
    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    sget-object v2, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    if-ne v1, v2, :cond_0

    .line 248
    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->in:Ljava/io/InputStream;

    invoke-static {v1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->read(Ljava/io/InputStream;)Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    move-result-object v1

    invoke-direct {p0, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->handleWebsocketFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    :try_start_1
    invoke-virtual {p0, v1}, Lfi/iki/elonen/NanoWSD$WebSocket;->onException(Ljava/io/IOException;)V

    .line 252
    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InvalidFramePayloadData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-virtual {v1}, Ljava/nio/charset/CharacterCodingException;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InternalServerError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Handler terminated without closing the connection."

    invoke-direct {p0, v1, v2, v4}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    .line 261
    :goto_1
    return-void

    .line 259
    :cond_0
    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InternalServerError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Handler terminated without closing the connection."

    invoke-direct {p0, v1, v2, v4}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    goto :goto_1

    .line 253
    :catch_1
    move-exception v2

    .line 254
    :try_start_2
    invoke-virtual {p0, v2}, Lfi/iki/elonen/NanoWSD$WebSocket;->onException(Ljava/io/IOException;)V

    .line 255
    instance-of v1, v2, Lfi/iki/elonen/NanoWSD$WebSocketException;

    if-eqz v1, :cond_1

    .line 256
    move-object v0, v2

    check-cast v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    move-object v1, v0

    invoke-virtual {v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;->getCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object v1

    check-cast v2, Lfi/iki/elonen/NanoWSD$WebSocketException;

    invoke-virtual {v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;->getReason()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :cond_1
    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InternalServerError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Handler terminated without closing the connection."

    invoke-direct {p0, v1, v2, v4}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InternalServerError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v3, "Handler terminated without closing the connection."

    invoke-direct {p0, v2, v3, v4}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    throw v1
.end method


# virtual methods
.method public close(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    .line 135
    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->CLOSING:Lfi/iki/elonen/NanoWSD$State;

    iput-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->state:Lfi/iki/elonen/NanoWSD$State;

    .line 136
    sget-object v1, Lfi/iki/elonen/NanoWSD$State;->OPEN:Lfi/iki/elonen/NanoWSD$State;

    if-ne v0, v1, :cond_0

    .line 137
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    invoke-direct {v0, p1, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoWSD$WebSocket;->doClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected debugFrameReceived(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method protected debugFrameSent(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public getHandshakeResponse()Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

    return-object v0
.end method

.method protected abstract onClose(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;Z)V
.end method

.method protected abstract onException(Ljava/io/IOException;)V
.end method

.method protected abstract onMessage(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
.end method

.method protected abstract onOpen()V
.end method

.method protected abstract onPong(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
.end method

.method public send(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Text:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 269
    return-void
.end method

.method public declared-synchronized sendFrame(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocket;->debugFrameSent(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 273
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocket;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
