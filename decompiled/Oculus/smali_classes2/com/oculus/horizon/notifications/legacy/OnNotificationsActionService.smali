.class public Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;
.super Landroid/app/IntentService;
.source "OnNotificationsActionService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;)V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->$ul_$xXXcom_oculus_horizon_notifications_legacy_OculusNotifications$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "OnNotificationsActionService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private static newDeeplinkIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 138
    return-object v0
.end method

.method private reportNotificationAction(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-static {p1}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->getNotificationUUID(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {p1}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->getNotificationFBID(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {p1}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->getNotificationType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {p1}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->getNotificationCustomData(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    .line 90
    if-eqz p2, :cond_4

    .line 91
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 92
    const-string v5, "item_id"

    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 93
    const-string v5, "referrer"

    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    :goto_0
    const-string v8, ""

    .line 99
    if-eqz v9, :cond_0

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 104
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 106
    :try_start_1
    const-string v7, "notif_request_id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 112
    :goto_2
    const-string v0, "action_content"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual/range {v0 .. v7}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    :goto_3
    return-void

    .line 100
    :catch_0
    move-exception v7

    .line 101
    sget-object v9, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->TAG:Ljava/lang/String;

    const-string v10, "Cannot parse the custom data object"

    invoke-static {v9, v10, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    .line 108
    sget-object v7, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->TAG:Ljava/lang/String;

    const-string v9, "Cannot parse the custom data object"

    invoke-static {v7, v9, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v7, v8

    goto :goto_2

    .line 121
    :cond_3
    const-string v0, "action_dismiss"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual/range {v0 .. v7}, Lcom/oculus/horizon/logging/OculusLogger;->reportNotificationDismissed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v6, v0

    move-object v5, v0

    move-object v4, v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 23
    invoke-static {p0, p0}, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;)V

    .line 38
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->removeNotification(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-direct {p0, p1, v1, v0}, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->reportNotificationAction(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 56
    const-string v2, "action_content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->mOculusNotifications:Lcom/oculus/horizon/notifications/legacy/OculusNotifications;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/notifications/legacy/OculusNotifications;->markNotificationRead(Landroid/content/Intent;)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    const-string v0, "extra_notification_deeplink_intent"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 62
    if-nez v0, :cond_2

    .line 63
    invoke-static {v1}, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->newDeeplinkIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 66
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :cond_3
    if-eqz v1, :cond_4

    .line 69
    sget-object v0, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->TAG:Ljava/lang/String;

    const-string v2, "Deeplinking intent URI %s has no Activity"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    new-instance v1, Landroid/content/ComponentName;

    .line 74
    invoke-virtual {p0}, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oculus.horizon.main.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/notifications/legacy/OnNotificationsActionService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
