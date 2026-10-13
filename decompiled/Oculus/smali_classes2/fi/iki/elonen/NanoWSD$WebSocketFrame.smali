.class public Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.super Ljava/lang/Object;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebSocketFrame"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;,
        Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;,
        Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    }
.end annotation


# static fields
.field public static final TEXT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private transient _payloadLength:I

.field private transient _payloadString:Ljava/lang/String;

.field private fin:Z

.field private maskingKey:[B

.field private opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field private payload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 417
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->TEXT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;",
            "Ljava/util/List",
            "<",
            "Lfi/iki/elonen/NanoWSD$WebSocketFrame;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfi/iki/elonen/NanoWSD$WebSocketException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setOpCode(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;)V

    .line 502
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setFin(Z)V

    .line 505
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    .line 506
    invoke-virtual {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 507
    goto :goto_0

    .line 508
    :cond_0
    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 509
    :cond_1
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MessageTooBig:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Max frame length has been exceeded."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_2
    long-to-int v0, v2

    iput v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 512
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    new-array v2, v0, [B

    .line 514
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v6

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    .line 515
    invoke-virtual {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v4

    invoke-virtual {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v6, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    invoke-virtual {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    .line 517
    goto :goto_1

    .line 518
    :cond_3
    invoke-virtual {p0, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setBinaryPayload([B)V

    .line 519
    return-void
.end method

.method private constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    invoke-virtual {p0, p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setOpCode(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;)V

    .line 477
    invoke-virtual {p0, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setFin(Z)V

    .line 478
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;ZLjava/lang/String;[B)V

    .line 492
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;ZLjava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-direct {p0, p1, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z)V

    .line 496
    invoke-virtual {p0, p4}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setMaskingKey([B)V

    .line 497
    invoke-virtual {p0, p3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setTextPayload(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B)V
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B[B)V

    .line 482
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z[B[B)V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0, p1, p2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z)V

    .line 486
    invoke-virtual {p0, p4}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setMaskingKey([B)V

    .line 487
    invoke-virtual {p0, p3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setBinaryPayload([B)V

    .line 488
    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;)V
    .locals 1

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setOpCode(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;)V

    .line 523
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isFin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setFin(Z)V

    .line 524
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setBinaryPayload([B)V

    .line 525
    invoke-virtual {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getMaskingKey()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->setMaskingKey([B)V

    .line 526
    return-void
.end method

.method public static binary2Text([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->TEXT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static binary2Text([BII)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 424
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->TEXT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static checkedRead(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    if-gez p0, :cond_0

    .line 429
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 431
    :cond_0
    return p0
.end method

.method private payloadToString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/16 v4, 0x32

    const/4 v0, 0x0

    .line 562
    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    if-nez v1, :cond_0

    .line 563
    const-string v0, "null"

    .line 583
    :goto_0
    return-object v0

    .line 565
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "b] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v2

    sget-object v3, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Text:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v2, v3, :cond_3

    .line 568
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getTextPayload()Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 570
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 572
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 575
    :cond_3
    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :goto_2
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length v2, v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 577
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 579
    :cond_4
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length v0, v0

    if-le v0, v4, :cond_1

    .line 580
    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static read(Ljava/io/InputStream;)Lfi/iki/elonen/NanoWSD$WebSocketFrame;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    int-to-byte v1, v0

    .line 436
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 437
    :goto_0
    and-int/lit8 v2, v1, 0xf

    int-to-byte v2, v2

    invoke-static {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->find(B)Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v2

    .line 438
    and-int/lit8 v3, v1, 0x70

    if-eqz v3, :cond_1

    .line 439
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The reserved bits ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") must be 0."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 441
    :cond_1
    if-nez v2, :cond_2

    .line 442
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received frame with reserved/unknown opcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_2
    invoke-virtual {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->isControlFrame()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 444
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Fragmented control frame."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_3
    new-instance v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame;

    invoke-direct {v1, v2, v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;Z)V

    .line 448
    invoke-direct {v1, p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->readPayloadInfo(Ljava/io/InputStream;)V

    .line 449
    invoke-direct {v1, p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->readPayload(Ljava/io/InputStream;)V

    .line 450
    invoke-virtual {v1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v2, :cond_4

    .line 451
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseFrame;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame;Lfi/iki/elonen/NanoWSD$1;)V

    .line 453
    :goto_1
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private readPayload(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 588
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    move v0, v1

    .line 590
    :goto_0
    iget v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    if-ge v0, v2, :cond_0

    .line 591
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    iget v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    invoke-static {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    :goto_1
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 596
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    aget-byte v2, v0, v1

    iget-object v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    rem-int/lit8 v4, v1, 0x4

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 601
    :cond_1
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Text:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v0, v1, :cond_2

    .line 602
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->binary2Text([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    .line 604
    :cond_2
    return-void
.end method

.method private readPayloadInfo(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x7e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 609
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    int-to-byte v3, v0

    .line 610
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    .line 612
    :goto_0
    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    iput v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 613
    iget v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    if-ne v3, v5, :cond_1

    .line 615
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    invoke-static {v4}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v4

    or-int/2addr v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    iput v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 616
    iget v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    if-ge v3, v5, :cond_5

    .line 617
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Invalid data frame 2byte length. (not using minimal length encoding)"

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 610
    goto :goto_0

    .line 619
    :cond_1
    iget v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_5

    .line 621
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v3

    int-to-long v4, v3

    const/16 v3, 0x38

    shl-long/2addr v4, v3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v3

    int-to-long v6, v3

    const/16 v3, 0x30

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v3

    int-to-long v6, v3

    const/16 v3, 0x28

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v3

    int-to-long v6, v3

    const/16 v3, 0x20

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    .line 622
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    int-to-long v6, v3

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    int-to-long v6, v3

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    int-to-long v6, v3

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-static {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v3

    int-to-long v6, v3

    or-long/2addr v4, v6

    .line 623
    const-wide/32 v6, 0x10000

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 624
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Invalid data frame 4byte length. (not using minimal length encoding)"

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 627
    :cond_3
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MessageTooBig:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Max frame length has been exceeded."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_4
    long-to-int v3, v4

    iput v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 632
    :cond_5
    iget-object v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    invoke-virtual {v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->isControlFrame()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 633
    iget v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    const/16 v4, 0x7d

    if-le v3, v4, :cond_6

    .line 634
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Control frame with payload length > 125 bytes."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_6
    iget-object v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    sget-object v4, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne v3, v4, :cond_7

    iget v3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    if-ne v3, v1, :cond_7

    .line 637
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketException;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v2, "Received close frame with payload len 1."

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoWSD$WebSocketException;-><init>(Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_7
    if-eqz v0, :cond_8

    .line 642
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    .line 644
    :goto_1
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    array-length v0, v0

    if-ge v2, v0, :cond_8

    .line 645
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    iget-object v1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    array-length v1, v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->checkedRead(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 648
    :cond_8
    return-void
.end method

.method public static text2Binary(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 458
    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->TEXT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBinaryPayload()[B
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    return-object v0
.end method

.method public getMaskingKey()[B
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    return-object v0
.end method

.method public getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    return-object v0
.end method

.method public getTextPayload()Ljava/lang/String;
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 545
    :try_start_0
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    invoke-static {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->binary2Text([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    return-object v0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Undetected CharacterCodingException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isFin()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->fin:Z

    return v0
.end method

.method public isMasked()Z
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBinaryPayload([B)V
    .locals 1

    .prologue
    .line 651
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    .line 652
    array-length v0, p1

    iput v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    .line 654
    return-void
.end method

.method public setFin(Z)V
    .locals 0

    .prologue
    .line 657
    iput-boolean p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->fin:Z

    .line 658
    return-void
.end method

.method public setMaskingKey([B)V
    .locals 3

    .prologue
    .line 661
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaskingKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasn\'t length 4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    .line 665
    return-void
.end method

.method public setOpCode(Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 669
    return-void
.end method

.method public setTextPayload(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-static {p1}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->text2Binary(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payload:[B

    .line 673
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 674
    iput-object p1, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadString:Ljava/lang/String;

    .line 675
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "WS["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getOpCode()Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 687
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isFin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fin"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "masked"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->payloadToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 687
    :cond_0
    const-string v0, "inter"

    goto :goto_0

    .line 688
    :cond_1
    const-string v0, "unmasked"

    goto :goto_1
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 698
    iget-boolean v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->fin:Z

    if-eqz v0, :cond_7

    .line 699
    const/16 v0, 0x80

    int-to-byte v0, v0

    .line 701
    :goto_0
    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->opCode:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    invoke-virtual {v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->getValue()B

    move-result v2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v0, v2

    int-to-byte v0, v0

    .line 702
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 704
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    .line 705
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    const/16 v2, 0x7d

    if-gt v0, v2, :cond_1

    .line 706
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    int-to-byte v0, v0

    or-int/lit16 v0, v0, 0x80

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 725
    :goto_2
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 726
    iget-object v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 727
    :goto_3
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    if-ge v1, v0, :cond_6

    .line 728
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    aget-byte v0, v0, v1

    iget-object v2, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->maskingKey:[B

    rem-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 706
    :cond_0
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    int-to-byte v0, v0

    goto :goto_1

    .line 707
    :cond_1
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    const v2, 0xffff

    if-gt v0, v2, :cond_3

    .line 708
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xfe

    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 709
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 710
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    .line 708
    :cond_2
    const/16 v0, 0x7e

    goto :goto_4

    .line 712
    :cond_3
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->isMasked()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xff

    :goto_5
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 713
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v0, v0, 0x38

    and-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 716
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v0, v0, 0x30

    and-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 717
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v0, v0, 0x28

    and-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 718
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v0, v0, 0x20

    and-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 719
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v0, v0, 0x18

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 720
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 721
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 722
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->_payloadLength:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_2

    .line 712
    :cond_4
    const/16 v0, 0x7f

    goto :goto_5

    .line 731
    :cond_5
    invoke-virtual {p0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame;->getBinaryPayload()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 733
    :cond_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 734
    return-void

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method
