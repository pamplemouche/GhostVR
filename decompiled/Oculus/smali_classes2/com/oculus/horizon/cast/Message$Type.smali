.class public final enum Lcom/oculus/horizon/cast/Message$Type;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cast/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/cast/Message$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/cast/Message$Type;

.field public static final enum ANSWER:Lcom/oculus/horizon/cast/Message$Type;

.field public static final enum ERROR:Lcom/oculus/horizon/cast/Message$Type;

.field public static final enum OFFER:Lcom/oculus/horizon/cast/Message$Type;

.field public static final enum START:Lcom/oculus/horizon/cast/Message$Type;

.field public static final enum STOP:Lcom/oculus/horizon/cast/Message$Type;


# instance fields
.field public final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/oculus/horizon/cast/Message$Type;

    const-string v1, "START"

    invoke-direct {v0, v1, v2, v2}, Lcom/oculus/horizon/cast/Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/cast/Message$Type;->START:Lcom/oculus/horizon/cast/Message$Type;

    .line 23
    new-instance v0, Lcom/oculus/horizon/cast/Message$Type;

    const-string v1, "OFFER"

    invoke-direct {v0, v1, v3, v3}, Lcom/oculus/horizon/cast/Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/cast/Message$Type;->OFFER:Lcom/oculus/horizon/cast/Message$Type;

    .line 24
    new-instance v0, Lcom/oculus/horizon/cast/Message$Type;

    const-string v1, "ANSWER"

    invoke-direct {v0, v1, v4, v4}, Lcom/oculus/horizon/cast/Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/cast/Message$Type;->ANSWER:Lcom/oculus/horizon/cast/Message$Type;

    .line 25
    new-instance v0, Lcom/oculus/horizon/cast/Message$Type;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v5, v5}, Lcom/oculus/horizon/cast/Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/cast/Message$Type;->STOP:Lcom/oculus/horizon/cast/Message$Type;

    .line 26
    new-instance v0, Lcom/oculus/horizon/cast/Message$Type;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6, v6}, Lcom/oculus/horizon/cast/Message$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/cast/Message$Type;->ERROR:Lcom/oculus/horizon/cast/Message$Type;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oculus/horizon/cast/Message$Type;

    sget-object v1, Lcom/oculus/horizon/cast/Message$Type;->START:Lcom/oculus/horizon/cast/Message$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/cast/Message$Type;->OFFER:Lcom/oculus/horizon/cast/Message$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/cast/Message$Type;->ANSWER:Lcom/oculus/horizon/cast/Message$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/cast/Message$Type;->STOP:Lcom/oculus/horizon/cast/Message$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/horizon/cast/Message$Type;->ERROR:Lcom/oculus/horizon/cast/Message$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oculus/horizon/cast/Message$Type;->$VALUES:[Lcom/oculus/horizon/cast/Message$Type;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/oculus/horizon/cast/Message$Type;->mValue:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/cast/Message$Type;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oculus/horizon/cast/Message$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cast/Message$Type;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/cast/Message$Type;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oculus/horizon/cast/Message$Type;->$VALUES:[Lcom/oculus/horizon/cast/Message$Type;

    invoke-virtual {v0}, [Lcom/oculus/horizon/cast/Message$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/cast/Message$Type;

    return-object v0
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/oculus/horizon/cast/Message$1;->$SwitchMap$com$oculus$horizon$cast$Message$Type:[I

    invoke-virtual {p0}, Lcom/oculus/horizon/cast/Message$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unexpected message type."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_0
    const-string v0, "START"

    .line 45
    :goto_0
    return-object v0

    .line 39
    :pswitch_1
    const-string v0, "OFFER"

    goto :goto_0

    .line 41
    :pswitch_2
    const-string v0, "ANSWER"

    goto :goto_0

    .line 43
    :pswitch_3
    const-string v0, "STOP"

    goto :goto_0

    .line 45
    :pswitch_4
    const-string v0, "ERROR"

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
