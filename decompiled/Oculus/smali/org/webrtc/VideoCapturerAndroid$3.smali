.class Lorg/webrtc/VideoCapturerAndroid$3;
.super Ljava/lang/Object;
.source "VideoCapturerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/VideoCapturerAndroid;->switchCamera(Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/VideoCapturerAndroid;

.field final synthetic val$handler:Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;


# direct methods
.method constructor <init>(Lorg/webrtc/VideoCapturerAndroid;Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lorg/webrtc/VideoCapturerAndroid$3;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    iput-object p2, p0, Lorg/webrtc/VideoCapturerAndroid$3;->val$handler:Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid$3;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    invoke-static {v2}, Lorg/webrtc/VideoCapturerAndroid;->access$300(Lorg/webrtc/VideoCapturerAndroid;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    .line 238
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid$3;->val$handler:Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/webrtc/VideoCapturerAndroid$3;->val$handler:Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;

    const-string v1, "Camera is stopped."

    invoke-interface {v0, v1}, Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid$3;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    invoke-static {v2}, Lorg/webrtc/VideoCapturerAndroid;->access$400(Lorg/webrtc/VideoCapturerAndroid;)V

    .line 244
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid$3;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    invoke-static {v2}, Lorg/webrtc/VideoCapturerAndroid;->access$500(Lorg/webrtc/VideoCapturerAndroid;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 245
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/VideoCapturerAndroid$3;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/webrtc/VideoCapturerAndroid;->access$602(Lorg/webrtc/VideoCapturerAndroid;Z)Z

    .line 246
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid$3;->val$handler:Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lorg/webrtc/VideoCapturerAndroid$3;->val$handler:Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;

    iget-object v3, p0, Lorg/webrtc/VideoCapturerAndroid$3;->this$0:Lorg/webrtc/VideoCapturerAndroid;

    .line 249
    invoke-static {v3}, Lorg/webrtc/VideoCapturerAndroid;->access$700(Lorg/webrtc/VideoCapturerAndroid;)Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v0, :cond_2

    .line 248
    :goto_1
    invoke-interface {v2, v0}, Lorg/webrtc/VideoCapturerAndroid$CameraSwitchHandler;->onCameraSwitchDone(Z)V

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 249
    goto :goto_1
.end method
