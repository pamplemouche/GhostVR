.class public final enum Lcom/facebook/cameracore/common/VideoRecordingState;
.super Ljava/lang/Enum;
.source "VideoRecordingState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/cameracore/common/VideoRecordingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/cameracore/common/VideoRecordingState;

.field public static final enum PREPARED:Lcom/facebook/cameracore/common/VideoRecordingState;

.field public static final enum PREPARE_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

.field public static final enum RECORDING:Lcom/facebook/cameracore/common/VideoRecordingState;

.field public static final enum RECORDING_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

.field public static final enum STOPPED:Lcom/facebook/cameracore/common/VideoRecordingState;

.field public static final enum STOP_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/facebook/cameracore/common/VideoRecordingState;

    const-string v1, "PREPARE_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/cameracore/common/VideoRecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARE_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 14
    new-instance v0, Lcom/facebook/cameracore/common/VideoRecordingState;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/cameracore/common/VideoRecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARED:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 17
    new-instance v0, Lcom/facebook/cameracore/common/VideoRecordingState;

    const-string v1, "RECORDING_STARTED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/cameracore/common/VideoRecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->RECORDING_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 20
    new-instance v0, Lcom/facebook/cameracore/common/VideoRecordingState;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v6}, Lcom/facebook/cameracore/common/VideoRecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->RECORDING:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 26
    new-instance v0, Lcom/facebook/cameracore/common/VideoRecordingState;

    const-string v1, "STOP_STARTED"

    invoke-direct {v0, v1, v7}, Lcom/facebook/cameracore/common/VideoRecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->STOP_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 32
    new-instance v0, Lcom/facebook/cameracore/common/VideoRecordingState;

    const-string v1, "STOPPED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/cameracore/common/VideoRecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->STOPPED:Lcom/facebook/cameracore/common/VideoRecordingState;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/cameracore/common/VideoRecordingState;

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARE_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->PREPARED:Lcom/facebook/cameracore/common/VideoRecordingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->RECORDING_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->RECORDING:Lcom/facebook/cameracore/common/VideoRecordingState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/cameracore/common/VideoRecordingState;->STOP_STARTED:Lcom/facebook/cameracore/common/VideoRecordingState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/cameracore/common/VideoRecordingState;->STOPPED:Lcom/facebook/cameracore/common/VideoRecordingState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->$VALUES:[Lcom/facebook/cameracore/common/VideoRecordingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/cameracore/common/VideoRecordingState;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/facebook/cameracore/common/VideoRecordingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/cameracore/common/VideoRecordingState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/cameracore/common/VideoRecordingState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/facebook/cameracore/common/VideoRecordingState;->$VALUES:[Lcom/facebook/cameracore/common/VideoRecordingState;

    invoke-virtual {v0}, [Lcom/facebook/cameracore/common/VideoRecordingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/cameracore/common/VideoRecordingState;

    return-object v0
.end method
