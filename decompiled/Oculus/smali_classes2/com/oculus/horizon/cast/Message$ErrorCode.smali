.class public final enum Lcom/oculus/horizon/cast/Message$ErrorCode;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cast/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/cast/Message$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/cast/Message$ErrorCode;

.field public static final enum GENERIC_ERROR:Lcom/oculus/horizon/cast/Message$ErrorCode;

.field public static final enum NONE:Lcom/oculus/horizon/cast/Message$ErrorCode;

.field public static final enum UNKNOWN_MESSAGE:Lcom/oculus/horizon/cast/Message$ErrorCode;


# instance fields
.field public final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/oculus/horizon/cast/Message$ErrorCode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/oculus/horizon/cast/Message$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/cast/Message$ErrorCode;->NONE:Lcom/oculus/horizon/cast/Message$ErrorCode;

    .line 11
    new-instance v0, Lcom/oculus/horizon/cast/Message$ErrorCode;

    const-string v1, "GENERIC_ERROR"

    invoke-direct {v0, v1, v3, v3}, Lcom/oculus/horizon/cast/Message$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/cast/Message$ErrorCode;->GENERIC_ERROR:Lcom/oculus/horizon/cast/Message$ErrorCode;

    .line 12
    new-instance v0, Lcom/oculus/horizon/cast/Message$ErrorCode;

    const-string v1, "UNKNOWN_MESSAGE"

    invoke-direct {v0, v1, v4, v4}, Lcom/oculus/horizon/cast/Message$ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/cast/Message$ErrorCode;->UNKNOWN_MESSAGE:Lcom/oculus/horizon/cast/Message$ErrorCode;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/cast/Message$ErrorCode;

    sget-object v1, Lcom/oculus/horizon/cast/Message$ErrorCode;->NONE:Lcom/oculus/horizon/cast/Message$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/cast/Message$ErrorCode;->GENERIC_ERROR:Lcom/oculus/horizon/cast/Message$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/cast/Message$ErrorCode;->UNKNOWN_MESSAGE:Lcom/oculus/horizon/cast/Message$ErrorCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/horizon/cast/Message$ErrorCode;->$VALUES:[Lcom/oculus/horizon/cast/Message$ErrorCode;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/oculus/horizon/cast/Message$ErrorCode;->mValue:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/cast/Message$ErrorCode;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/oculus/horizon/cast/Message$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cast/Message$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/cast/Message$ErrorCode;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/oculus/horizon/cast/Message$ErrorCode;->$VALUES:[Lcom/oculus/horizon/cast/Message$ErrorCode;

    invoke-virtual {v0}, [Lcom/oculus/horizon/cast/Message$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/cast/Message$ErrorCode;

    return-object v0
.end method
