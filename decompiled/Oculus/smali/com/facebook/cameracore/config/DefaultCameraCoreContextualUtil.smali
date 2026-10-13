.class public Lcom/facebook/cameracore/config/DefaultCameraCoreContextualUtil;
.super Ljava/lang/Object;
.source "DefaultCameraCoreContextualUtil.java"

# interfaces
.implements Lcom/facebook/cameracore/config/CameraCoreContextualUtil;


# static fields
.field public static final DEFAULT_USE_CUSTOM_VIDEO_RECORDER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/cameracore/config/DefaultCameraCoreContextualUtil;->DEFAULT_USE_CUSTOM_VIDEO_RECORDER:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioBufferMultiplier()I
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0xa

    return v0
.end method

.method public getEncodingProfile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 46
    const-string v0, "baseline"

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "high"

    goto :goto_0
.end method

.method public shouldUseCustomVideoRecorder()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/facebook/cameracore/config/DefaultCameraCoreContextualUtil;->DEFAULT_USE_CUSTOM_VIDEO_RECORDER:Z

    return v0
.end method
