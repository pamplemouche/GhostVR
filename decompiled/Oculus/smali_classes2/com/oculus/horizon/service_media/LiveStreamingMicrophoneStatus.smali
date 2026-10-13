.class final enum Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;
.super Ljava/lang/Enum;
.source "OVRMediaServiceEnums.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

.field public static final INTENT_KEY:Ljava/lang/String; = "microphone_status"

.field public static final enum MICROPHONE_OFF:Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

.field public static final enum MICROPHONE_ON:Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 27
    new-instance v0, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    const-string v1, "MICROPHONE_ON"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->MICROPHONE_ON:Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    .line 28
    new-instance v0, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    const-string v1, "MICROPHONE_OFF"

    invoke-direct {v0, v1, v2, v4}, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->MICROPHONE_OFF:Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    .line 26
    new-array v0, v4, [Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    sget-object v1, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->MICROPHONE_ON:Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->MICROPHONE_OFF:Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->$VALUES:[Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->value:I

    .line 35
    return-void
.end method

.method public static fromValue(I)Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;
    .locals 5

    .prologue
    .line 42
    invoke-static {}, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->values()[Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 43
    invoke-virtual {v3}, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 44
    return-object v3

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->$VALUES:[Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    invoke-virtual {v0}, [Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/oculus/horizon/service_media/LiveStreamingMicrophoneStatus;->value:I

    return v0
.end method
