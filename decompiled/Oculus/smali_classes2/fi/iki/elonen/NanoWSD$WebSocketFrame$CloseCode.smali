.class public final enum Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
.super Ljava/lang/Enum;
.source "NanoWSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoWSD$WebSocketFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum AbnormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum GoingAway:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum InternalServerError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum InvalidFramePayloadData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum MandatoryExt:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum MessageTooBig:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum NoStatusRcvd:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum NormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum PolicyViolation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum TLSHandshake:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

.field public static final enum UnsupportedData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 311
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "NormalClosure"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v4, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 312
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "GoingAway"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v5, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->GoingAway:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 313
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "ProtocolError"

    const/16 v2, 0x3ea

    invoke-direct {v0, v1, v6, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 314
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "UnsupportedData"

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, v7, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->UnsupportedData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 315
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "NoStatusRcvd"

    const/16 v2, 0x3ed

    invoke-direct {v0, v1, v8, v2}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NoStatusRcvd:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 316
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "AbnormalClosure"

    const/4 v2, 0x5

    const/16 v3, 0x3ee

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->AbnormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 317
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "InvalidFramePayloadData"

    const/4 v2, 0x6

    const/16 v3, 0x3ef

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InvalidFramePayloadData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 318
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "PolicyViolation"

    const/4 v2, 0x7

    const/16 v3, 0x3f0

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PolicyViolation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 319
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "MessageTooBig"

    const/16 v2, 0x8

    const/16 v3, 0x3f1

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MessageTooBig:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 320
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "MandatoryExt"

    const/16 v2, 0x9

    const/16 v3, 0x3f2

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MandatoryExt:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 321
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "InternalServerError"

    const/16 v2, 0xa

    const/16 v3, 0x3f3

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InternalServerError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 322
    new-instance v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    const-string v1, "TLSHandshake"

    const/16 v2, 0xb

    const/16 v3, 0x3f7

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->TLSHandshake:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    .line 310
    const/16 v0, 0xc

    new-array v0, v0, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v0, v4

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->GoingAway:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v0, v5

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->ProtocolError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v0, v6

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->UnsupportedData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v0, v7

    sget-object v1, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->NoStatusRcvd:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->AbnormalClosure:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InvalidFramePayloadData:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->PolicyViolation:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MessageTooBig:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->MandatoryExt:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->InternalServerError:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->TLSHandshake:Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    aput-object v2, v0, v1

    sput-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->$VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 336
    iput p3, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->code:I

    .line 337
    return-void
.end method

.method public static find(I)Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 5

    .prologue
    .line 325
    invoke-static {}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 326
    invoke-virtual {v0}, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 330
    :goto_1
    return-object v0

    .line 325
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 330
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 1

    .prologue
    .line 310
    const-class v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    return-object v0
.end method

.method public static values()[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->$VALUES:[Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lfi/iki/elonen/NanoWSD$WebSocketFrame$CloseCode;->code:I

    return v0
.end method
