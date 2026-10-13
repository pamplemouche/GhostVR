.class public abstract Lcom/oculus/horizon/push/FbnsPushNotificationHandler;
.super Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;
.source "FbnsPushNotificationHandler.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mFbnsPushProcessor:Lcom/oculus/horizon/push/FbnsPushProcessor;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/push/FbnsPushNotificationHandler;)V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/push/FbnsPushNotificationHandler;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/push/FbnsPushNotificationHandler;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-static {p0}, Lcom/oculus/horizon/push/FbnsPushProcessor;->$ul_$xXXcom_oculus_horizon_push_FbnsPushProcessor$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/push/FbnsPushProcessor;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->mFbnsPushProcessor:Lcom/oculus/horizon/push/FbnsPushProcessor;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/push/FbnsPushNotificationHandler;)Lcom/oculus/errorreporting/ErrorReporter;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    return-object v0
.end method

.method private static parseCustomData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 158
    :try_start_0
    const-string v0, "extra_data"

    .line 159
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "extra_data"

    .line 160
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    :goto_0
    return-object v0

    .line 160
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    sget-object v1, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->TAG:Ljava/lang/String;

    const-string v2, "Malformed custom data payload sent from server"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->onCreate()V

    .line 26
    invoke-static {p0, p0}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/push/FbnsPushNotificationHandler;)V

    .line 56
    return-void
.end method

.method protected final onMessage(Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->mFbnsPushProcessor:Lcom/oculus/horizon/push/FbnsPushProcessor;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/push/FbnsPushProcessor;->processIntent(Landroid/content/Intent;)V

    .line 63
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v0, "type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v0, "params"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    sget-object v2, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    :goto_0
    const-string v2, "message"

    .line 71
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    :goto_1
    const-string v2, "persisted_id"

    .line 73
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "persisted_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    :goto_2
    const-string v2, "PushNotifID"

    .line 75
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "PushNotifID"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    :goto_3
    const-string v2, "ndid"

    .line 77
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ndid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 78
    :goto_4
    const-string v2, "deeplink_uri"

    .line 79
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "deeplink_uri"

    .line 80
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 84
    :cond_0
    invoke-static {v0}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->parseCustomData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 85
    const-string v3, "is_in_feed"

    .line 86
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "is_in_feed"

    .line 87
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "is_in_feed"

    .line 88
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_5
    const-string v3, "is_in_feed"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    .line 94
    invoke-virtual/range {v0 .. v10}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->onMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_6
    invoke-static {p0, p1}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->ackNotification(Landroid/content/Context;Landroid/content/Intent;)V

    .line 108
    return-void

    :cond_1
    move-object v4, v10

    .line 69
    goto :goto_0

    :cond_2
    move-object v5, v10

    .line 71
    goto :goto_1

    :cond_3
    move-object v6, v10

    .line 73
    goto :goto_2

    :cond_4
    move-object v7, v10

    .line 75
    goto :goto_3

    :cond_5
    move-object v9, v10

    .line 77
    goto :goto_4

    .line 88
    :cond_6
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 104
    :catch_0
    move-exception v0

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v1, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t parse the notification message"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method protected abstract onMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected onMessageDeleted(I)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method protected onRegistered(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/util/device/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 128
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 129
    sget v0, Lcom/facebook/common/android/AndroidModule$UL_id;->$ul_$xXXandroid_content_pm_PackageInfo$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v0, v3}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 130
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    new-instance v4, Lcom/oculus/horizon/api/push/RegisterPushTokenRequest;

    invoke-direct {v4, p1, v1, v2, v0}, Lcom/oculus/horizon/api/push/RegisterPushTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/push/FbnsPushNotificationHandler$1;-><init>(Lcom/oculus/horizon/push/FbnsPushNotificationHandler;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Lcom/oculus/horizon/api/ApiRequestManager;->post(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V

    .line 145
    return-void
.end method

.method protected onRegistrationError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v1, Lcom/oculus/horizon/push/FbnsPushNotificationHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method protected onUnregistered()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method
