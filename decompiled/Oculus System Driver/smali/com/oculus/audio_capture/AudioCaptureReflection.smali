.class public Lcom/oculus/audio_capture/AudioCaptureReflection;
.super Ljava/lang/Object;
.source "AudioCaptureReflection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioCaptureReflection"

.field private static sIsRegistered:Z

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oculus/audio_capture/AudioCaptureReflection;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/oculus/audio_capture/AudioCaptureReflection;->sIsRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/oculus/audio_capture/AudioCaptureReflection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static canRegisterCallbacksWithReflection()Z
    .locals 1

    .line 33
    invoke-static {}, Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;->areAllReflectionMethodsPresent()Z

    move-result v0

    return v0
.end method

.method public static native nativeOnTrackHasNewPCM(JJIIII)V
.end method

.method public static startAudioCapture()V
    .locals 5

    .line 39
    invoke-static {}, Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;->getTrackPCMListenerClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/oculus/audio_capture/AudioCaptureReflection;->TAG:Ljava/lang/String;

    const-string v1, "Failed to find TrackPCMListener. Did you check canRegisterCallbacksWithReflection? "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 45
    :cond_0
    const-class v1, Lcom/oculus/audio_capture/AudioService;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v4, Lcom/oculus/audio_capture/AudioCaptureReflection$1;

    invoke-direct {v4}, Lcom/oculus/audio_capture/AudioCaptureReflection$1;-><init>()V

    .line 45
    invoke-static {v1, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 80
    sget-object v3, Lcom/oculus/audio_capture/AudioCaptureReflection;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 81
    :try_start_0
    sget-boolean v4, Lcom/oculus/audio_capture/AudioCaptureReflection;->sIsRegistered:Z

    if-nez v4, :cond_1

    .line 82
    invoke-static {v0, v1}, Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;->registerAudioTrackListenerMethod(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 85
    :cond_1
    sput-boolean v2, Lcom/oculus/audio_capture/AudioCaptureReflection;->sIsRegistered:Z

    .line 86
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static stopAudioCapture()V
    .locals 2

    .line 22
    sget-object v0, Lcom/oculus/audio_capture/AudioCaptureReflection;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-boolean v1, Lcom/oculus/audio_capture/AudioCaptureReflection;->sIsRegistered:Z

    if-eqz v1, :cond_0

    .line 24
    invoke-static {}, Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;->unregisterAudioTrackListenerMethod()V

    :cond_0
    const/4 v1, 0x0

    .line 26
    sput-boolean v1, Lcom/oculus/audio_capture/AudioCaptureReflection;->sIsRegistered:Z

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
