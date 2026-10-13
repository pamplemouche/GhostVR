.class public Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;
.super Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletBaseViewV2;
.source "AnytimeTabletSharingViewV2.java"


# static fields
.field private static final BEGIN_VIDEO_CAPTURE_VRDRIVER_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.BEGIN_VIDEO_CAPTURE"

.field private static final CAPTURE_COMPONENT_NAME:Ljava/lang/String; = "com.oculus.horizon.service_media.OVRMediaService"

.field private static final CAPTURE_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.horizon"

.field private static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field private static final SCREENSHOT_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.SCREENSHOT"

.field private static final SCREENSHOT_HORIZON_ACTION:Ljava/lang/String; = "com.oculus.vrshell.intent.action.TAKE_SCREENSHOT"

.field private static final START_VIDEO_CAPTURE_HORIZON_ACTION:Ljava/lang/String; = "com.oculus.horizon.START_CAPTURE_TO_DISK"

.field private static final STOP_VIDEO_CAPTURE_HORIZON_ACTION:Ljava/lang/String; = "com.oculus.horizon.STOP_CAPTURE_TO_DISK"

.field private static final STOP_VIDEO_CAPTURE_VRDRIVER_ACTION:Ljava/lang/String; = "com.oculus.systemactivities.STOP_VIDEO_CAPTURE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBlacklistedForVideoCapture:Z

.field private final mBlacklistedPackagesForCapture:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureAllowedIds:[I

.field private final mLiveStreamAllowedIds:[I

.field private final mObserver:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;

.field private mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field private mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletBaseViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 51
    new-array p1, p1, [I

    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->share_videocapture:I

    const/4 v0, 0x0

    aput p2, p1, v0

    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->share_screenshot:I

    const/4 v1, 0x1

    aput p2, p1, v1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mCaptureAllowedIds:[I

    .line 54
    new-array p1, v1, [I

    sget p2, Lcom/oculus/panelapp/anytimeui/R$id;->share_livestream:I

    aput p2, p1, v0

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mLiveStreamAllowedIds:[I

    .line 58
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/anytimeui/R$array;->video_capture_blacklisted_apps:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mBlacklistedPackagesForCapture:Ljava/util/List;

    .line 66
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 67
    new-instance p2, Ljava/util/HashSet;

    sget v0, Lcom/oculus/panelapp/anytimeui/R$array;->video_capture_blacklisted_A_series_devices:I

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 70
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mBlacklistedForVideoCapture:Z

    .line 73
    new-instance p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$1;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$1;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mObserver:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->updateEnabledViews()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->setLiveStreamingButtonState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->setVideoCaptureButtonState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->setLocalStreamButtonState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->takeScreenshot()V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->startVideoCapture()V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->stopVideoCapture()V

    return-void
.end method

.method private setCaptureButtonState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;II)V
    .locals 2

    .line 246
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 247
    invoke-virtual {p0, p3}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 248
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->Capturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 250
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 251
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-virtual {p3}, Landroid/view/View;->clearAnimation()V

    :goto_0
    return-void
.end method

.method private setLiveStreamingButtonState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V
    .locals 2

    .line 241
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->share_livestream:I

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_livestream_stop:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->setCaptureButtonState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;II)V

    return-void
.end method

.method private setLocalStreamButtonState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V
    .locals 2

    .line 233
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->share_localstream:I

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_localstream_stop:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->setCaptureButtonState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;II)V

    return-void
.end method

.method private setVideoCaptureButtonState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V
    .locals 2

    .line 237
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->share_videocapture:I

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_videocapture_stop:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->setCaptureButtonState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;II)V

    return-void
.end method

.method private startVideoCapture()V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getReturnComponent()Ljava/lang/String;

    move-result-object v0

    .line 204
    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->TAG:Ljava/lang/String;

    const-string v2, "VideoCapture V2 Path"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 206
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oculus.horizon"

    const-string v4, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "message_type"

    const-string v3, "com.oculus.horizon.START_CAPTURE_TO_DISK"

    .line 207
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":startVideoCapture()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-static {v1, v2, v3}, Lcom/oculus/vrshell/util/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v1, "com.oculus.vrshell"

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionQuitAndHide()V

    goto :goto_0

    .line 217
    :cond_0
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->Capturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->setVideoCaptureButtonState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    :goto_0
    return-void
.end method

.method private stopVideoCapture()V
    .locals 4

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.horizon"

    const-string v3, "com.oculus.horizon.service_media.OVRMediaService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "message_type"

    const-string v2, "com.oculus.horizon.STOP_CAPTURE_TO_DISK"

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":stopVideoCapture()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {v0, v1, v2}, Lcom/oculus/vrshell/util/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 229
    sget-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->NotCapturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->setVideoCaptureButtonState(Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;)V

    return-void
.end method

.method private takeScreenshot()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getReturnComponent()Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "delayInSeconds"

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    .line 182
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 184
    sget-object v2, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->TAG:Ljava/lang/String;

    const-string v3, "Screenshot V2 Path"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 186
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "systemux://dialog/permission-request/write_storage/screenshot"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "com.oculus.vrshell.intent.action.TAKE_SCREENSHOT"

    .line 192
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.oculus.vrshell"

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "dstPackage"

    .line 194
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionQuitAndHide()V

    :cond_1
    return-void
.end method

.method private updateEnabledViews()V
    .locals 11

    .line 153
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    .line 154
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->getVideoCaptureAllowed()Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    move-result-object v0

    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->Allowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    .line 155
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->getLiveStreamCaptureState()Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    move-result-object v0

    sget-object v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;->NotCapturing:Lcom/oculus/panelapp/anytimeui/v2/tablet/CaptureState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mBlacklistedPackagesForCapture:Ljava/util/List;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 156
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getReturnComponent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mCaptureAllowedIds:[I

    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e99999a    # 0.3f

    if-ge v5, v4, :cond_3

    aget v8, v1, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 158
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 159
    iget-boolean v10, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mBlacklistedForVideoCapture:Z

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget v10, Lcom/oculus/panelapp/anytimeui/R$id;->share_videocapture:I

    if-ne v8, v10, :cond_1

    .line 160
    invoke-virtual {v9, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 161
    invoke-virtual {v9, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 163
    :cond_1
    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const v6, 0x3e99999a    # 0.3f

    .line 164
    :goto_2
    invoke-virtual {v9, v6}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    .line 171
    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->getLiveStreamAllowed()Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    move-result-object v1

    sget-object v4, Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;->Allowed:Lcom/oculus/panelapp/anytimeui/v2/tablet/AllowedState;

    if-ne v1, v4, :cond_4

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 172
    :goto_4
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mLiveStreamAllowedIds:[I

    array-length v1, v0

    :goto_5
    if-ge v3, v1, :cond_6

    aget v4, v0, v3

    .line 173
    invoke-virtual {p0, v4}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 174
    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v2, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_5
    const v5, 0x3e99999a    # 0.3f

    .line 175
    :goto_6
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mObserver:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->removeObserver(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;)V

    return-void
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 108
    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    .line 112
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->share_screenshot:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$2;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$2;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;)V

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->share_videocapture:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$3;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$3;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;)V

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->share_videocapture_stop:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$4;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2$4;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;)V

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->mObserver:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;->addObserver(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2$ChangeObserver;)V

    .line 143
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletSharingViewV2;->updateEnabledViews()V

    return-void
.end method
