.class public Lcom/oculus/antipiracy/AntiPiracyIntentService;
.super Landroid/app/IntentService;
.source "AntiPiracyIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAntiPiracyManager:Lcom/oculus/antipiracy/AntiPiracyManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/antipiracy/AntiPiracyIntentService;)V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/antipiracy/AntiPiracyIntentService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/antipiracy/AntiPiracyIntentService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/antipiracy/AntiPiracyIntentService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/antipiracy/AntiPiracyIntentService;)V
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/util/device/DeviceUtils;->$ul_$xXXcom_oculus_util_device_DeviceUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/antipiracy/AntiPiracyIntentService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-static {p0}, Lcom/oculus/antipiracy/AntiPiracyManager;->$ul_$xXXcom_oculus_antipiracy_AntiPiracyManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/antipiracy/AntiPiracyManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/antipiracy/AntiPiracyIntentService;->mAntiPiracyManager:Lcom/oculus/antipiracy/AntiPiracyManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oculus/antipiracy/AntiPiracyIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/antipiracy/AntiPiracyIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/antipiracy/AntiPiracyIntentService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private processDeveloperStatusQuery(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 62
    const-string v0, "result_receiver"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 63
    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/oculus/antipiracy/AntiPiracyIntentService;->TAG:Ljava/lang/String;

    const-string v1, "Received Null receiver. Aborting"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/oculus/antipiracy/AntiPiracyIntentService;->mAntiPiracyManager:Lcom/oculus/antipiracy/AntiPiracyManager;

    .line 68
    invoke-virtual {v1}, Lcom/oculus/antipiracy/AntiPiracyManager;->fetchDeveloperStatusFromBackend()Lcom/oculus/antipiracy/OculusDeveloperQueryResponse;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/oculus/antipiracy/OculusDeveloperQueryResponse;->mOculusDeveloperStatus:Lcom/oculus/antipiracy/OculusDeveloperQueryResponse$OculusDeveloperStatus;

    if-nez v2, :cond_2

    .line 70
    :cond_1
    sget-object v1, Lcom/oculus/antipiracy/AntiPiracyIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to fetch developer status from backend"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 73
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string v3, "is_developer_mode_blocked"

    iget-object v1, v1, Lcom/oculus/antipiracy/OculusDeveloperQueryResponse;->mOculusDeveloperStatus:Lcom/oculus/antipiracy/OculusDeveloperQueryResponse$OculusDeveloperStatus;

    iget-boolean v1, v1, Lcom/oculus/antipiracy/OculusDeveloperQueryResponse$OculusDeveloperStatus;->is_oculus_developer_blocked:Z

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 17
    invoke-static {p0, p0}, Lcom/oculus/antipiracy/AntiPiracyIntentService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/antipiracy/AntiPiracyIntentService;)V

    .line 37
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 41
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyIntentService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-virtual {v0}, Lcom/oculus/util/device/DeviceUtils;->supportESig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const-string v0, "result_receiver"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 43
    if-eqz v0, :cond_0

    .line 44
    sget-object v1, Lcom/oculus/antipiracy/AntiPiracyIntentService;->TAG:Ljava/lang/String;

    const-string v2, "AntiPiracy feature is only supported on Quest"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 59
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    sget-object v0, Lcom/oculus/antipiracy/AntiPiracyIntentService;->TAG:Ljava/lang/String;

    const-string v1, "Null or Empty action received"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    const-string v1, "get_backend_developer_status"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    invoke-direct {p0, p1}, Lcom/oculus/antipiracy/AntiPiracyIntentService;->processDeveloperStatusQuery(Landroid/content/Intent;)V

    goto :goto_0

    .line 57
    :cond_2
    sget-object v1, Lcom/oculus/antipiracy/AntiPiracyIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Received unrecognized action: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
