.class Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;
.super Ljava/lang/Object;
.source "VideoPlayer_Android.java"

# interfaces
.implements Lcom/oculus/video/audio/AudioSpatializerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/VideoPlayer_Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OculusAudioSpatializerController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/VideoPlayer_Android;

.field video:Lcom/oculus/video/Video;


# direct methods
.method private constructor <init>(Lcom/oculus/video/VideoPlayer_Android;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;->this$0:Lcom/oculus/video/VideoPlayer_Android;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/video/VideoPlayer_Android;Lcom/oculus/video/VideoPlayer_Android$1;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;-><init>(Lcom/oculus/video/VideoPlayer_Android;)V

    return-void
.end method


# virtual methods
.method public getFocusEnabled()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;->video:Lcom/oculus/video/Video;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/video/Video;->isSpatialAudioFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFocusWidthDegrees()F
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;->video:Lcom/oculus/video/Video;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/video/Video;->getSpatialAudioFocusWidthDegrees()D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeadOrientationMatrix()[F
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;->this$0:Lcom/oculus/video/VideoPlayer_Android;

    invoke-static {v0}, Lcom/oculus/video/VideoPlayer_Android;->access$000(Lcom/oculus/video/VideoPlayer_Android;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oculus/video/VideoPlayer_Android;->access$100(Lcom/oculus/video/VideoPlayer_Android;J)[F

    move-result-object v0

    return-object v0
.end method

.method public getOffFocusLeveldB()F
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;->video:Lcom/oculus/video/Video;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/video/Video;->getSpatialAudioOffFocusLevel()D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUseAsyncConsumer()Z
    .locals 1

    .line 182
    invoke-static {}, Lcom/oculus/video/Settings;->useSpatialAudioAsyncConsumer()Z

    move-result v0

    return v0
.end method

.method public onBufferUnderrun(I)V
    .locals 0

    return-void
.end method
