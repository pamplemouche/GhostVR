.class public Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PreloadInstallerBroadcastReceiver.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mStandaloneDefaultAppSetupManager:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private triggeredSetupInstalls:Z


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;)V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/oculus/standalone/StandalonePrefs;->$ul_$xXXcom_oculus_standalone_StandalonePrefs$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/standalone/StandalonePrefs;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-static {p0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->$ul_$xXXcom_oculus_standalone_StandaloneDefaultAppSetupManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandaloneDefaultAppSetupManager:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-static {p0}, Lcom/oculus/util/device/DeviceUtils;->$ul_$xXXcom_oculus_util_device_DeviceUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->triggeredSetupInstalls:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->handleAppInstallBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->handlePreloadInstallerCompleteEvent()V

    return-void
.end method

.method private handleAppInstallBroadcast(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 87
    const-string v0, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 88
    const-string v3, "android.content.pm.extra.LEGACY_STATUS"

    const/16 v4, -0x6e

    .line 89
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 91
    if-eqz v0, :cond_0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    const/16 v0, -0x19

    if-ne v3, v0, :cond_2

    :cond_0
    move v0, v2

    .line 95
    :goto_0
    const-string v3, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    sget-object v5, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Got app install result broadcast. Install of package %s was%s successful."

    if-eqz v0, :cond_3

    const-string v3, ""

    :goto_1
    invoke-static {v5, v6, v4, v3}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    .line 106
    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->getCompletedPreloadInstallerApps()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v3, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v3, v0}, Lcom/oculus/standalone/StandalonePrefs;->setCompletedPreloadInstallerApps(Ljava/util/Collection;)V

    .line 116
    :goto_2
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->areHighPriorityAppsFetched()Z

    move-result v0

    if-nez v0, :cond_5

    .line 147
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v1

    .line 91
    goto :goto_0

    .line 97
    :cond_3
    const-string v3, " not"

    goto :goto_1

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    .line 111
    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->getFailedPreloadInstallerApps()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v3, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v3, v0}, Lcom/oculus/standalone/StandalonePrefs;->setFailedPreloadInstallerApps(Ljava/util/Collection;)V

    goto :goto_2

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->getMofifiableHighPriAppList()Ljava/util/Set;

    move-result-object v0

    .line 121
    if-nez v0, :cond_9

    .line 122
    sget-object v0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "The high Priority Apps List is null after the fetch is complete!"

    invoke-static {v0, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    .line 128
    :goto_4
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->getCompletedPreloadInstallerApps()Ljava/util/Set;

    move-result-object v4

    .line 129
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->getFailedPreloadInstallerApps()Ljava/util/Set;

    move-result-object v5

    .line 132
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 133
    :cond_6
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 134
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 136
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 137
    :cond_7
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v1, v2

    .line 138
    goto :goto_5

    .line 142
    :cond_8
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0, v3}, Lcom/oculus/standalone/StandalonePrefs;->setModifiableHighPriAppList(Ljava/util/Collection;)V

    .line 144
    if-nez v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandaloneDefaultAppSetupManager:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->triggerSetupInstalls()V

    goto :goto_3

    :cond_9
    move-object v3, v0

    goto :goto_4
.end method

.method private handlePreloadInstallerCompleteEvent()V
    .locals 6

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/standalone/StandalonePrefs;->setPreloaderInstallerComplete(Z)V

    .line 152
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->areHighPriorityAppsFetched()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->getMofifiableHighPriAppList()Ljava/util/Set;

    move-result-object v0

    .line 157
    if-nez v0, :cond_4

    .line 158
    sget-object v0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "The high Priority Apps List is null after the fetch is complete!"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .line 161
    :goto_1
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->getCompletedPreloadInstallerApps()Ljava/util/Set;

    move-result-object v2

    .line 162
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->getFailedPreloadInstallerApps()Ljava/util/Set;

    move-result-object v3

    .line 164
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 165
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 168
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandalonePrefs:Lcom/oculus/standalone/StandalonePrefs;

    invoke-virtual {v0, v1}, Lcom/oculus/standalone/StandalonePrefs;->setModifiableHighPriAppList(Ljava/util/Collection;)V

    .line 174
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mStandaloneDefaultAppSetupManager:Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    invoke-virtual {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->triggerSetupInstalls()V

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-static {p1, p0}, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;)V

    .line 48
    iget-object v0, p0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-virtual {v0}, Lcom/oculus/util/device/DeviceUtils;->supportESig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    sget-object v0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "null action received"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 81
    sget-object v0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Unrecognized broadcast action: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v0, v4, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :sswitch_0
    const-string v4, "com.oculus.preloader.INSTALL_COMPLETE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "com.oculus.preloader.ALL_INSTALLS_COMPLETE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    .line 60
    :pswitch_0
    new-instance v0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$1;

    invoke-direct {v0, p0, p2}, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$1;-><init>(Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;Landroid/content/Intent;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    goto :goto_0

    .line 71
    :pswitch_1
    new-instance v0, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$2;

    invoke-direct {v0, p0}, Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver$2;-><init>(Lcom/oculus/standalone/PreloadInstallerBroadcastReceiver;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        -0x476160ee -> :sswitch_1
        0x4c2ea28d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
