.class public final enum Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
.super Ljava/lang/Enum;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field public static final enum Binary:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field public static final enum Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field public static final enum Continuation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field public static final enum Ping:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field public static final enum Pong:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

.field public static final enum Text:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;


# instance fields
.field private final code:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 386
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const-string v1, "Continuation"

    invoke-direct {v0, v1, v4, v4}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Continuation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 387
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const-string v1, "Text"

    invoke-direct {v0, v1, v5, v5}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Text:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 388
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const-string v1, "Binary"

    invoke-direct {v0, v1, v6, v6}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Binary:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 389
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const-string v1, "Close"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 390
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const-string v1, "Ping"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Ping:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 391
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    const-string v1, "Pong"

    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Pong:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    .line 385
    const/4 v0, 0x6

    new-array v0, v0, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Continuation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    aput-object v1, v0, v4

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Text:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    aput-object v1, v0, v5

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Binary:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    aput-object v1, v0, v6

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    aput-object v1, v0, v7

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Ping:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Pong:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    aput-object v2, v0, v1

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->$VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 404
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 405
    int-to-byte v0, p3

    iput-byte v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->code:B

    .line 406
    return-void
.end method

.method public static find(B)Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .locals 5

    .prologue
    .line 394
    invoke-static {}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 395
    invoke-virtual {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->getValue()B

    move-result v4

    if-ne v4, p0, :cond_0

    .line 399
    :goto_1
    return-object v0

    .line 394
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 399
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .locals 1

    .prologue
    .line 385
    const-class v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    return-object v0
.end method

.method public static values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->$VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .prologue
    .line 409
    iget-byte v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->code:B

    return v0
.end method

.method public isControlFrame()Z
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Close:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Ping:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;->Pong:Lfi/iki/elonen/NanoWSD$WebSocketFrame$OpCode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
