.class public final enum Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;
.super Ljava/lang/Enum;
.source "LivestreamingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/home/module/LivestreamingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LiveStreamingMicrophoneStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

.field public static final enum MICROPHONE_OFF:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

.field public static final enum MICROPHONE_ON:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;


# instance fields
.field public final mVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 56
    new-instance v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    const-string v1, "MICROPHONE_ON"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;->MICROPHONE_ON:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    .line 57
    new-instance v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    const-string v1, "MICROPHONE_OFF"

    invoke-direct {v0, v1, v2, v4}, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;->MICROPHONE_OFF:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    .line 55
    new-array v0, v4, [Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    sget-object v1, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;->MICROPHONE_ON:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;->MICROPHONE_OFF:Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;->$VALUES:[Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;->mVal:I

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    return-object v0
.end method

.method public static values()[Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;->$VALUES:[Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/home/module/LivestreamingModule$LiveStreamingMicrophoneStatus;

    return-object v0
.end method
