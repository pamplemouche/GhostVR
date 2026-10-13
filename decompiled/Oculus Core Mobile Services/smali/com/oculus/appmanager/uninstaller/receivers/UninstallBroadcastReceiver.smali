.class public Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mUninstallCompleteEventProvider:Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEventProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;)V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent;->$ul_$xXXcom_oculus_appmanager_uninstaller_events_UninstallCompleteEventProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEventProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->mUninstallCompleteEventProvider:Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEventProvider;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;

    sput-object v0, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onCallbackPackageRemoved(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 58
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v0, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 60
    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->TAG:Ljava/lang/Class;

    const-string v1, "No package name specified."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "extra_calling_package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    const-string v0, "result_receiver"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/ResultReceiver;

    .line 70
    if-nez v3, :cond_1

    .line 71
    sget-object v0, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->TAG:Ljava/lang/Class;

    const-string v2, "Successfully uninstalled %s"

    invoke-static {v0, v2, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->mUninstallCompleteEventProvider:Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEventProvider;

    const-string v2, "provider"

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 79
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 74
    invoke-virtual/range {v0 .. v6}, Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEventProvider;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent;->report()V

    goto :goto_0

    .line 86
    :cond_1
    sget-object v0, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->TAG:Ljava/lang/Class;

    const-string v5, "Failed to uninstall %s. Status:%d. Message: %s."

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 86
    invoke-static {v0, v5, v1, v8, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->mUninstallCompleteEventProvider:Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEventProvider;

    const-string v2, "provider"

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    .line 99
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 94
    invoke-virtual/range {v0 .. v6}, Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEventProvider;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/oculus/appmanager/uninstaller/events/UninstallCompleteEvent;->report()V

    .line 103
    invoke-static {}, Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;->getInstance()Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;

    move-result-object v0

    sget-object v2, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 105
    invoke-static {v1, v2, v7}, Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;->failure(Ljava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResultError;Landroid/os/ResultReceiver;)Lcom/oculus/appmanager/uninstaller/events/UninstallResponse;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 27
    invoke-static {p1, p0}, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;)V

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    sget-object v0, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->TAG:Ljava/lang/Class;

    const-string v1, "Empty or missing action."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v1, "com.oculus.action.UNINSTALL_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.oculus.action.PROXY_UNINSTALL_COMPLETE"

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    :cond_1
    invoke-direct {p0, p2}, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->onCallbackPackageRemoved(Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    :cond_2
    sget-object v1, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->TAG:Ljava/lang/Class;

    const-string v2, "Unsupported action: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
