.class public Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;
.super Landroid/app/Service;
.source "InstallerNotificationService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInstallerNotificationManager:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mNextNewDownloadsID:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mNotificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mPackageNamesToNotifIDs:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;)V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;->$ul_$xXXcom_oculus_appmanager_installer_notification_InstallerNotificationManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mInstallerNotificationManager:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_app_NotificationManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p0}, Lcom/oculus/util/device/DeviceUtils;->$ul_$xXXcom_oculus_util_device_DeviceUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibrary$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mNextNewDownloadsID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mPackageNamesToNotifIDs:Lcom/google/common/collect/BiMap;

    return-void
.end method

.method private static downloadStatusTerminated(Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;)Z
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;->DOWNLOAD_FAIL:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;->INSTALL_FAIL:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;->COMPLETED:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;->CANCELED:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUniqueDownloadID(Ljava/lang/String;Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;)I
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mPackageNamesToNotifIDs:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 203
    if-nez v0, :cond_1

    .line 204
    invoke-static {p2}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->downloadStatusTerminated(Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, -0x1

    .line 210
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mNextNewDownloadsID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mPackageNamesToNotifIDs:Lcom/google/common/collect/BiMap;

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private maybeCancelOldNotification(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mPackageNamesToNotifIDs:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mPackageNamesToNotifIDs:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 180
    iget-object v0, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mPackageNamesToNotifIDs:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    return-void
.end method

.method private updateProgressNotification(Ljava/lang/String;Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 139
    const v0, -0x5314ff4

    .line 140
    iget-object v1, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/appmanager/installer/notification/MC$oculus_mobile_core;->downloads_manager:J

    invoke-interface {v1, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    .line 141
    invoke-virtual {v1}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->getUniqueDownloadID(Ljava/lang/String;Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;)I

    move-result v0

    .line 144
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 170
    :cond_2
    :goto_0
    return-void

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mInstallerNotificationManager:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

    .line 148
    invoke-virtual {v1, p1, p2, v0}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;->generateProgressNotification(Ljava/lang/String;Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;I)Landroid/app/Notification;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_4

    .line 151
    iget-object v2, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mDeviceUtils:Lcom/oculus/util/device/DeviceUtils;

    invoke-virtual {v2}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v2

    if-nez v2, :cond_7

    .line 152
    invoke-static {p2}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->downloadStatusTerminated(Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 154
    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 164
    :cond_4
    :goto_1
    invoke-static {p2}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->downloadStatusTerminated(Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mInstallerNotificationManager:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

    invoke-virtual {v0, p1}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;->onDownloadTerminated(Ljava/lang/String;)V

    .line 167
    :cond_5
    sget-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;->COMPLETED:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;

    if-ne p2, v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mPackageNamesToNotifIDs:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 157
    :cond_6
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->stopForeground(Z)V

    .line 158
    iget-object v2, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v4, v0, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_1

    .line 161
    :cond_7
    iget-object v2, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v4, v0, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 29
    invoke-static {p0, p0}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;)V

    .line 66
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x2

    .line 77
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    const-string v2, "identifier"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    if-nez v4, :cond_2

    .line 84
    sget-object v2, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->TAG:Ljava/lang/String;

    const-string v4, "required extra %s is missing"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "identifier"

    aput-object v5, v1, v3

    invoke-static {v2, v4, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_2
    const-string v2, "is_update"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    sget-object v2, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->TAG:Ljava/lang/String;

    const-string v4, "required extra %s is missing"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "is_update"

    aput-object v5, v1, v3

    invoke-static {v2, v4, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    invoke-virtual {v2, v4}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 128
    sget-object v2, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->TAG:Ljava/lang/String;

    const-string v4, "Unknown action: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v2, v4, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :sswitch_0
    const-string v6, "update_progress"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string v6, "downloading"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string v6, "installing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v0

    goto :goto_1

    :sswitch_3
    const-string v6, "failed_download"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v6, "failed_install"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v6, "completed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v6, "canceled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x6

    goto :goto_1

    .line 102
    :pswitch_0
    sget-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;->DOWNLOADING:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;

    .line 132
    :goto_2
    invoke-direct {p0, v4, v0}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->updateProgressNotification(Ljava/lang/String;Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;)V

    move v0, v1

    .line 133
    goto/16 :goto_0

    .line 106
    :pswitch_1
    sget-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;->DOWNLOADING:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;

    .line 107
    iget-object v2, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mInstallerNotificationManager:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

    invoke-virtual {v2, v4}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;->setDownloading(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, v4}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->maybeCancelOldNotification(Ljava/lang/String;)V

    goto :goto_2

    .line 111
    :pswitch_2
    sget-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;->INSTALLING:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;

    goto :goto_2

    .line 114
    :pswitch_3
    sget-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;->DOWNLOAD_FAIL:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;

    .line 115
    iget-object v2, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mInstallerNotificationManager:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

    invoke-virtual {v2, v4}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;->setDownloadFailure(Ljava/lang/String;)V

    goto :goto_2

    .line 118
    :pswitch_4
    sget-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;->INSTALL_FAIL:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;

    .line 119
    iget-object v2, p0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationService;->mInstallerNotificationManager:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;

    invoke-virtual {v2, v4}, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager;->setInstallFailure(Ljava/lang/String;)V

    goto :goto_2

    .line 122
    :pswitch_5
    sget-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;->COMPLETED:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;

    goto :goto_2

    .line 125
    :pswitch_6
    sget-object v0, Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;->CANCELED:Lcom/oculus/appmanager/installer/notification/InstallerNotificationManager$InstallState;

    goto :goto_2

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        -0x65dd731d -> :sswitch_0
        -0x5cb12c67 -> :sswitch_4
        -0x539f09b5 -> :sswitch_5
        -0x48305da6 -> :sswitch_1
        -0x7577b67 -> :sswitch_6
        -0x57025b6 -> :sswitch_3
        0x35abc867 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
