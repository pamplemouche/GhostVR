.class public Lm51;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "PG"


# instance fields
.field public final synthetic a:Ls51;


# direct methods
.method public synthetic constructor <init>(Ls51;Lg51;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm51;->a:Ls51;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lm51;->a:Ls51;

    .line 2
    iget-object v0, p1, Ls51;->h:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Ls51;->h:Landroid/hardware/camera2/CameraCaptureSession;

    .line 4
    :cond_0
    iget-object p1, p0, Lm51;->a:Ls51;

    .line 5
    iget-object p1, p1, Ls51;->m:Landroid/os/ConditionVariable;

    .line 6
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCapture"

    const-string v2, "cameraDevice was closed unexpectedly"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 3
    iget-object p1, p0, Lm51;->a:Ls51;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Ls51;->g:Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p1, v0}, Ls51;->a(I)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCapture"

    const-string v2, "cameraDevice encountered an error"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 3
    iget-object p1, p0, Lm51;->a:Ls51;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Ls51;->g:Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p1, v0}, Ls51;->a(I)V

    .line 6
    iget-object p1, p0, Lm51;->a:Ls51;

    iget-wide v0, p1, Lorg/chromium/media/VideoCapture;->e:J

    const/16 v2, 0x45

    const-string v3, "Camera device error "

    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {v0, v1, p1, v2, p2}, LJ/N;->MhmwjISE(JLjava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoCapture"

    const-string v2, "CameraDevice.StateCallback onOpened"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lm51;->a:Ls51;

    .line 3
    iput-object p1, v0, Ls51;->g:Landroid/hardware/camera2/CameraDevice;

    .line 4
    iget-object p1, v0, Ls51;->m:Landroid/os/ConditionVariable;

    .line 5
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 6
    iget-object p1, p0, Lm51;->a:Ls51;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Ls51;->a(I)V

    .line 8
    iget-object p1, p0, Lm51;->a:Ls51;

    const/16 v0, 0x72

    invoke-static {p1, v0}, Ls51;->a(Ls51;I)V

    return-void
.end method
