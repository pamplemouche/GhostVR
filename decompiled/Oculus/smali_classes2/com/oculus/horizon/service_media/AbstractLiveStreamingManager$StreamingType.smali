.class public final enum Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;
.super Ljava/lang/Enum;
.source "AbstractLiveStreamingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

.field public static final enum CAST:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

.field public static final enum FACEBOOK:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

.field public static final enum PARTY:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;


# instance fields
.field public final mVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 13
    new-instance v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    const-string v1, "FACEBOOK"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->FACEBOOK:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    .line 14
    new-instance v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    const-string v1, "PARTY"

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->PARTY:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    .line 15
    new-instance v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    const-string v1, "CAST"

    invoke-direct {v0, v1, v3, v5}, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->CAST:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    .line 12
    new-array v0, v5, [Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    sget-object v1, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->FACEBOOK:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->PARTY:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->CAST:Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->$VALUES:[Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->mVal:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->$VALUES:[Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    invoke-virtual {v0}, [Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/service_media/AbstractLiveStreamingManager$StreamingType;

    return-object v0
.end method
