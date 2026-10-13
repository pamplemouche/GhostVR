.class public final Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;
.super Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;
.source "AnytimeUIShareButtonBarView.java"


# static fields
.field private static final SCREENSHOT_HORIZON_ACTION:Ljava/lang/String; = "com.oculus.vrshell.intent.action.TAKE_SCREENSHOT"

.field private static final START_VIDEO_HORIZON_ACTION:Ljava/lang/String; = "com.oculus.vrshell.intent.action.TAKE_VIDEO"

.field private static final STOP_VIDEO_HORIZON_ACTION:Ljava/lang/String; = "com.oculus.vrshell.intent.action.STOP_VIDEO"

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

.field private mCaptureAllowed:Z

.field private final mCaptureAllowedIds:[I

.field private mLiveStreamAllowed:Z

.field private final mLiveStreamAllowedIds:[I

.field private mLiveStreaming:Z

.field private mLocalStreaming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mCaptureAllowed:Z

    .line 248
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mLiveStreamAllowed:Z

    const/4 p2, 0x0

    .line 249
    iput-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mLiveStreaming:Z

    .line 250
    iput-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mLocalStreaming:Z

    .line 255
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$array;->video_capture_blacklisted_apps:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mBlacklistedPackagesForCapture:Ljava/util/List;

    const/4 v0, 0x2

    .line 258
    new-array v0, v0, [I

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_videocapture:I

    aput v1, v0, p2

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_screenshot:I

    aput v1, v0, p1

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mCaptureAllowedIds:[I

    .line 262
    new-array p1, p1, [I

    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_livestream:I

    aput v0, p1, p2

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mLiveStreamAllowedIds:[I

    .line 31
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 34
    new-instance p2, Ljava/util/HashSet;

    sget v0, Lcom/oculus/panelapp/anytimeui/R$array;->video_capture_blacklisted_A_series_devices:I

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 37
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mBlacklistedForVideoCapture:Z

    return-void
.end method

.method private setCaptureButtonState(ZII)V
    .locals 2

    .line 233
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 234
    invoke-virtual {p0, p3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 237
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 238
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 242
    invoke-virtual {p3}, Landroid/view/View;->clearAnimation()V

    :goto_0
    return-void
.end method

.method private setLivestreamingButtonState(Z)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isLiveStreamingEnabled:Z

    if-eqz v0, :cond_0

    .line 227
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_livestream:I

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_livestream_stop:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->setCaptureButtonState(ZII)V

    :cond_0
    return-void
.end method

.method private setLocalStreamButtonState(Z)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isCastingEnabled:Z

    if-eqz v0, :cond_0

    .line 215
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_localstream:I

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_localstream_stop:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->setCaptureButtonState(ZII)V

    :cond_0
    return-void
.end method

.method private setVideoCaptureButtonState(Z)V
    .locals 2

    .line 221
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_videocapture:I

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_videocapture_stop:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->setCaptureButtonState(ZII)V

    return-void
.end method

.method private startVideoCapture()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getReturnComponent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->stripReturnComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.oculus.vrshell.intent.action.TAKE_VIDEO"

    .line 187
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.oculus.vrshell"

    .line 188
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "dstPackage"

    .line 189
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.oculus.systemux"

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionQuitAndHide()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 198
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->setVideoCaptureButtonState(Z)V

    :goto_0
    return-void
.end method

.method private stopVideoCapture()V
    .locals 2

    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oculus.vrshell.intent.action.STOP_VIDEO"

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oculus.vrshell"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->setVideoCaptureButtonState(Z)V

    return-void
.end method

.method private stripReturnComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method

.method private takeScreenshot()V
    .locals 7

    .line 154
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getReturnComponent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->stripReturnComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->isStandaloneVr()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 157
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "systemux://dialog/permission-request/write_storage/screenshot"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.oculus.vrshell.intent.action.TAKE_SCREENSHOT"

    .line 165
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.oculus.vrshell"

    .line 166
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "dstPackage"

    .line 167
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 169
    invoke-virtual {v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v3

    sget-object v4, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    const/16 v5, 0x5a0

    const/16 v6, 0x400

    if-ne v3, v4, :cond_1

    const/16 v3, 0x5a0

    goto :goto_0

    :cond_1
    const/16 v3, 0x400

    :goto_0
    const-string v4, "screenshotHeight"

    .line 168
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 171
    invoke-virtual {v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v3

    sget-object v4, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v5, 0x400

    :goto_1
    const-string v3, "screenshotWidth"

    .line 170
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.oculus.systemux"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionQuitAndHide()V

    :cond_3
    return-void
.end method

.method private updateEnabledViews()V
    .locals 11

    .line 121
    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mCaptureAllowed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mLiveStreaming:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mLocalStreaming:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mBlacklistedPackagesForCapture:Ljava/util/List;

    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 125
    invoke-virtual {v3}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getReturnComponent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    iget-object v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mCaptureAllowedIds:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e99999a    # 0.3f

    if-ge v5, v4, :cond_3

    aget v8, v3, v5

    .line 127
    invoke-virtual {p0, v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 128
    iget-boolean v10, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mBlacklistedForVideoCapture:Z

    if-eqz v10, :cond_1

    sget v10, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_videocapture:I

    if-ne v8, v10, :cond_1

    .line 129
    invoke-virtual {v9, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    invoke-virtual {v9, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    .line 132
    :cond_1
    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const v6, 0x3e99999a    # 0.3f

    .line 133
    :goto_2
    invoke-virtual {v9, v6}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 139
    :cond_3
    iget-boolean v3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mLiveStreamAllowed:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 140
    :goto_4
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mLiveStreamAllowedIds:[I

    array-length v3, v0

    :goto_5
    if-ge v2, v3, :cond_6

    aget v4, v0, v2

    .line 141
    invoke-virtual {p0, v4}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 142
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v1, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_5
    const v5, 0x3e99999a    # 0.3f

    .line 143
    :goto_6
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V

    .line 86
    iget-object v0, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isCastingEnabled:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 87
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_localstream:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    iget-object v0, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean v0, v0, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isLiveStreamingEnabled:Z

    if-nez v0, :cond_1

    .line 90
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_livestream:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_1
    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->config:Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;

    iget-boolean p1, p1, Lcom/oculus/panelapp/anytimeui/config/SystemUXConfiguration;->isCameraRollEnabled:Z

    if-nez p1, :cond_2

    .line 93
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_cameraroll:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V
    .locals 2

    .line 99
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getId()I

    move-result v0

    .line 101
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_screenshot:I

    if-ne v0, v1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->takeScreenshot()V

    goto :goto_1

    .line 103
    :cond_0
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_videocapture:I

    if-ne v0, v1, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->startVideoCapture()V

    goto :goto_1

    .line 105
    :cond_1
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_videocapture_stop:I

    if-ne v0, v1, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->stopVideoCapture()V

    goto :goto_1

    .line 107
    :cond_2
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_livestream:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_livestream_stop:I

    if-eq v0, v1, :cond_4

    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->share_detail_cameraroll:I

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 114
    :cond_3
    invoke-super {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButtonBarView;->onDetailButtonClicked(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    goto :goto_1

    .line 111
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getReturnComponent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public updateActiveComponent(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->updateEnabledViews()V

    return-void
.end method

.method public updateCaptureAllowed(ZZ)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mCaptureAllowed:Z

    .line 57
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->updateEnabledViews()V

    .line 58
    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mCaptureAllowed:Z

    if-eqz p1, :cond_0

    .line 59
    invoke-direct {p0, p2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->setVideoCaptureButtonState(Z)V

    :cond_0
    return-void
.end method

.method public updateLiveStreamStatus(ZZ)V
    .locals 0

    .line 70
    iput-boolean p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mLiveStreamAllowed:Z

    .line 71
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mLiveStreaming:Z

    .line 72
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->updateEnabledViews()V

    .line 75
    iget-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mLiveStreaming:Z

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->setLivestreamingButtonState(Z)V

    return-void
.end method

.method public updateLocalStreamState(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->mLocalStreaming:Z

    .line 65
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->setLocalStreamButtonState(Z)V

    .line 66
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->updateEnabledViews()V

    return-void
.end method

.method public updateVideoCaptureState(Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIShareButtonBarView;->setVideoCaptureButtonState(Z)V

    return-void
.end method
