.class public abstract Lfi/iki/elonen/NanoWSD;
.super Lfi/iki/elonen/NanoHTTPD;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoWSD$WebSocketFrame;,
        Lfi/iki/elonen/NanoWSD$WebSocketException;,
        Lfi/iki/elonen/NanoWSD$WebSocket;,
        Lfi/iki/elonen/NanoWSD$State;
    }
.end annotation


# static fields
.field private static final ALPHABET:[C

.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 740
    const-class v0, Lfi/iki/elonen/NanoWSD;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoWSD;->LOG:Ljava/util/logging/Logger;

    .line 762
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoWSD;->ALPHABET:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    .line 811
    return-void
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lfi/iki/elonen/NanoWSD;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static encodeBase64([B)Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x3d

    const/4 v1, 0x0

    .line 777
    array-length v5, p0

    .line 778
    add-int/lit8 v0, v5, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v6, v0, [C

    move v2, v1

    move v3, v1

    .line 781
    :goto_0
    if-ge v2, v5, :cond_2

    .line 782
    add-int/lit8 v0, v2, 0x1

    aget-byte v7, p0, v2

    .line 783
    if-ge v0, v5, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    move v4, v0

    move v0, v2

    .line 784
    :goto_1
    if-ge v0, v5, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    .line 786
    :goto_2
    const/16 v8, 0x3f

    .line 787
    add-int/lit8 v9, v3, 0x1

    sget-object v10, Lfi/iki/elonen/NanoWSD;->ALPHABET:[C

    shr-int/lit8 v11, v7, 0x2

    and-int/2addr v11, v8

    aget-char v10, v10, v11

    aput-char v10, v6, v3

    .line 788
    add-int/lit8 v3, v9, 0x1

    sget-object v10, Lfi/iki/elonen/NanoWSD;->ALPHABET:[C

    shl-int/lit8 v7, v7, 0x4

    and-int/lit16 v11, v4, 0xff

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v7, v11

    and-int/2addr v7, v8

    aget-char v7, v10, v7

    aput-char v7, v6, v9

    .line 789
    add-int/lit8 v7, v3, 0x1

    sget-object v9, Lfi/iki/elonen/NanoWSD;->ALPHABET:[C

    shl-int/lit8 v4, v4, 0x2

    and-int/lit16 v10, v0, 0xff

    shr-int/lit8 v10, v10, 0x6

    or-int/2addr v4, v10

    and-int/2addr v4, v8

    aget-char v4, v9, v4

    aput-char v4, v6, v3

    .line 790
    add-int/lit8 v3, v7, 0x1

    sget-object v4, Lfi/iki/elonen/NanoWSD;->ALPHABET:[C

    and-int/2addr v0, v8

    aget-char v0, v4, v0

    aput-char v0, v6, v7

    goto :goto_0

    :cond_0
    move v4, v1

    .line 783
    goto :goto_1

    :cond_1
    move v2, v0

    move v0, v1

    .line 784
    goto :goto_2

    .line 792
    :cond_2
    rem-int/lit8 v0, v5, 0x3

    packed-switch v0, :pswitch_data_0

    .line 798
    :goto_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 794
    :pswitch_0
    add-int/lit8 v0, v3, -0x1

    aput-char v12, v6, v0

    .line 796
    :goto_4
    add-int/lit8 v0, v0, -0x1

    aput-char v12, v6, v0

    goto :goto_3

    :pswitch_1
    move v0, v3

    goto :goto_4

    .line 792
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isWebSocketConnectionHeader(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 818
    const-string v0, "connection"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 819
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeAcceptKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 802
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 804
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 805
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 806
    invoke-static {v0}, Lfi/iki/elonen/NanoWSD;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected isWebsocketRequested(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Z
    .locals 3

    .prologue
    .line 823
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 824
    const-string v0, "upgrade"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 825
    invoke-direct {p0, v1}, Lfi/iki/elonen/NanoWSD;->isWebSocketConnectionHeader(Ljava/util/Map;)Z

    move-result v1

    .line 826
    const-string v2, "websocket"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 827
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract openWebSocket(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;
.end method

.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 5

    .prologue
    .line 836
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 837
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD;->isWebsocketRequested(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 838
    const-string v1, "13"

    const-string v0, "sec-websocket-version"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v3, "text/plain"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Websocket-Version "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v0, "sec-websocket-version"

    .line 840
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-static {v1, v3, v0}, Lfi/iki/elonen/NanoWSD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    .line 862
    :goto_0
    return-object v0

    .line 843
    :cond_0
    const-string v0, "sec-websocket-key"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 844
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    const-string v2, "Missing Websocket-Key"

    invoke-static {v0, v1, v2}, Lfi/iki/elonen/NanoWSD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_0

    .line 847
    :cond_1
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD;->openWebSocket(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoWSD$WebSocket;

    move-result-object v0

    .line 848
    invoke-virtual {v0}, Lfi/iki/elonen/NanoWSD$WebSocket;->getHandshakeResponse()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v1

    .line 850
    :try_start_0
    const-string v3, "sec-websocket-accept"

    const-string v0, "sec-websocket-key"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD;->makeAcceptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    const-string v0, "sec-websocket-protocol"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 857
    const-string v3, "sec-websocket-protocol"

    const-string v0, "sec-websocket-protocol"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v3, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    .line 860
    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v1, "text/plain"

    const-string v2, "The SHA-1 Algorithm required for websockets is not available on the server."

    invoke-static {v0, v1, v2}, Lfi/iki/elonen/NanoWSD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_0

    .line 862
    :cond_3
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD;->serveHttp(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_0
.end method

.method protected serveHttp(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .prologue
    .line 867
    invoke-super {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method protected useGzipWhenAccepted(Lfi/iki/elonen/NanoHTTPD$Response;)Z
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x0

    return v0
.end method
