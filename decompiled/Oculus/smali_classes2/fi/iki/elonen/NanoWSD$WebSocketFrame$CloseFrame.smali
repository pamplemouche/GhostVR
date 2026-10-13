.class public Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;
.super Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseFrame"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _closeCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field private _closeReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 344
    const-class v0, Lfi/iki/elonen/NanoWSD;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 364
    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->generatePayload(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V

    .line 365
    return-void
.end method

.method private constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 368
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    .line 369
    sget-boolean v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 370
    :cond_0
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    array-length v0, v0

    if-lt v0, v3, :cond_1

    .line 371
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v1

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->find(I)Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->_closeCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 372
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->getBinaryPayload()[B

    move-result-object v0

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->getBinaryPayload()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v3, v1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->binary2Text([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->_closeReason:Ljava/lang/String;

    .line 374
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;Lfi/iki/elonen/NanoWSD$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V

    return-void
.end method

.method private static generatePayload(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 347
    if-eqz p0, :cond_0

    .line 348
    invoke-static {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->text2Binary(Ljava/lang/String;)[B

    move-result-object v1

    .line 349
    array-length v0, v1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 350
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->getValue()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 351
    const/4 v2, 0x1

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->getValue()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 352
    const/4 v2, 0x2

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v4, [B

    goto :goto_0
.end method


# virtual methods
.method public getCloseCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->_closeCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    return-object v0
.end method

.method public getCloseReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;->_closeReason:Ljava/lang/String;

    return-object v0
.end method
