.class Lorg/webrtc/VideoCapturerAndroid$2;
.super Ljava/lang/Object;
.source "VideoCapturerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoCapturerAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private freezePeriodCount:I

.field final synthetic this$0:Lorg/webrtc/VideoCapturerAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/VideoCapturerAndroid;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lorg/webrtc/VideoCapturerAndroid$2;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 115
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid$2;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/VideoCapturerAndroid;->access$100(Lorg/webrtc/VideoCapturerAndroid;)Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lorg/webrtc/VideoCapturerAndroid$CameraStatistics;->getAndResetFrameCount()I

    move-result v0

    .line 116
    mul-int/lit16 v1, v0, 0x3e8

    add-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v1, v1, 0x7d0

    .line 119
    const-string v2, "VideoCapturerAndroid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-nez v0, :cond_1

    .line 121
    iget v0, p0, Lorg/webrtc/VideoCapturerAndroid$2;->freezePeriodCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/VideoCapturerAndroid$2;->freezePeriodCount:I

    .line 122
    iget v0, p0, Lorg/webrtc/VideoCapturerAndroid$2;->freezePeriodCount:I

    mul-int/lit16 v0, v0, 0x7d0

    const/16 v1, 0x1770

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid$2;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    .line 123
    invoke-static {v0}, Lorg/webrtc/VideoCapturerAndroid;->access$000(Lorg/webrtc/VideoCapturerAndroid;)Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    const-string v0, "VideoCapturerAndroid"

    const-string v1, "Camera freezed."

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid$2;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    iget-object v0, v0, Lorg/webrtc/VideoCapturerAndroid;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid$2;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/VideoCapturerAndroid;->access$000(Lorg/webrtc/VideoCapturerAndroid;)Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    move-result-object v0

    const-string v1, "Camera failure. Client must return video buffers."

    invoke-interface {v0, v1}, Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;->onCameraFreezed(Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid$2;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/VideoCapturerAndroid;->access$000(Lorg/webrtc/VideoCapturerAndroid;)Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;

    move-result-object v0

    const-string v1, "Camera failure."

    invoke-interface {v0, v1}, Lorg/webrtc/VideoCapturerAndroid$CameraEventsHandler;->onCameraFreezed(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/VideoCapturerAndroid$2;->freezePeriodCount:I

    .line 136
    :cond_2
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid$2;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    invoke-static {v0}, Lorg/webrtc/VideoCapturerAndroid;->access$200(Lorg/webrtc/VideoCapturerAndroid;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
