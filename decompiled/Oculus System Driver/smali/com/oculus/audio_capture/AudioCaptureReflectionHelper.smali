.class public Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;
.super Ljava/lang/Object;
.source "AudioCaptureReflectionHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioCaptureReflectionHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areAllReflectionMethodsPresent()Z
    .locals 5

    .line 23
    invoke-static {}, Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;->getTrackPCMListenerClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "registerAudioTrackPCMListener"

    const/4 v3, 0x1

    .line 31
    new-array v4, v3, [Ljava/lang/Class;

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;->getAudioTrackMethodByName(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v0, "unregisterAudioTrackPCMListener"

    .line 35
    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;->getAudioTrackMethodByName(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method private static getAudioTrackMethodByName(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    .line 59
    :try_start_0
    const-class v0, Landroid/media/AudioTrack;

    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTrackPCMListenerClass()Ljava/lang/Class;
    .locals 6

    .line 81
    const-class v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 82
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "android.media.AudioTrack$AudioTrackPCMListener"

    .line 83
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method private static varargs invokeStaticMethodWithResponse(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 71
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 74
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static registerAudioTrackListenerMethod(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4

    if-nez p0, :cond_0

    .line 44
    sget-object p0, Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;->TAG:Ljava/lang/String;

    const-string p1, "Failed to find TrackPCMListener. Did you check areAllReflectionMethodsPresent? "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "registerAudioTrackPCMListener"

    const/4 v1, 0x1

    .line 47
    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;->getAudioTrackMethodByName(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 48
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {p0, v0}, Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;->invokeStaticMethodWithResponse(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static unregisterAudioTrackListenerMethod()V
    .locals 3

    const-string v0, "unregisterAudioTrackPCMListener"

    const/4 v1, 0x0

    .line 52
    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;->getAudioTrackMethodByName(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/oculus/audio_capture/AudioCaptureReflectionHelper;->invokeStaticMethodWithResponse(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
