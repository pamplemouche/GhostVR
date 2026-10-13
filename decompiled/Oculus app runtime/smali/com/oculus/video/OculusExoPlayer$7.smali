.class Lcom/oculus/video/OculusExoPlayer$7;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/OculusExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/OculusExoPlayer;


# direct methods
.method constructor <init>(Lcom/oculus/video/OculusExoPlayer;)V
    .locals 0

    .line 1122
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer$7;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadata(Lcom/oculus/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1125
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1126
    invoke-virtual {p1, v0}, Lcom/oculus/android/exoplayer2/metadata/Metadata;->get(I)Lcom/oculus/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1127
    :goto_1
    instance-of v0, p1, Lcom/oculus/video/metadata/CameraMotionData;

    if-eqz v0, :cond_2

    .line 1128
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$7;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v0

    check-cast p1, Lcom/oculus/video/metadata/CameraMotionData;

    invoke-interface {v0, p1}, Lcom/oculus/video/VideoPlayer$EventListener;->onCameraMotionData(Lcom/oculus/video/metadata/CameraMotionData;)V

    :cond_2
    return-void
.end method
