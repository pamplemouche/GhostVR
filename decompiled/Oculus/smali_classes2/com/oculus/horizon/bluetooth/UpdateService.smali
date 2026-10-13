.class public Lcom/oculus/horizon/bluetooth/UpdateService;
.super Lcom/oculus/security/basecomponent/OculusPublicService;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/bluetooth/UpdateService$Reason;
    }
.end annotation


# static fields
.field private static final DELAY_CONNECT_INITIAL_MS:J

.field private static final DELAY_CONNECT_RETRY_MS:J

.field private static final TIMEOUT_WAKE_LOCK_MS:J


# instance fields
.field private mBluetoothDeviceToCheckForUpdates:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

.field mBluetoothLogger:Lcom/oculus/horizon/bluetooth/BluetoothLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mCallbacks:Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;

.field private mCheckForUpdateCompletion:Z

.field private mCheckForUpdateCompletionCount:I

.field private final mCheckForUpdateCompletionRunnable:Ljava/lang/Runnable;

.field mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastBroadcastIntent:Landroid/content/Intent;

.field mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mPowerManager:Landroid/os/PowerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/UpdateService;)V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/UpdateService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/UpdateService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/bluetooth/UpdateService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/UpdateService;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_os_PowerManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/os/PowerManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/UpdateService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {p0}, Lcom/oculus/horizon/samsung/GearVRInputService;->$ul_$xXXcom_oculus_horizon_samsung_GearVRInputService$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/GearVRInputService;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/UpdateService;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    invoke-static {p0}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->$ul_$xXXcom_oculus_horizon_samsung_GearVRControllerHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/UpdateService;->mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_app_NotificationManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/UpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroidx_localbroadcastmanager_content_LocalBroadcastManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/UpdateService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->$ul_$xXXcom_oculus_horizon_bluetooth_BluetoothLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothLogger:Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/oculus/horizon/bluetooth/UpdateService;->DELAY_CONNECT_INITIAL_MS:J

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/oculus/horizon/bluetooth/UpdateService;->DELAY_CONNECT_RETRY_MS:J

    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/oculus/horizon/bluetooth/UpdateService;->TIMEOUT_WAKE_LOCK_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oculus/security/basecomponent/OculusPublicService;-><init>()V

    .line 99
    new-instance v0, Lcom/oculus/horizon/bluetooth/UpdateService$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/bluetooth/UpdateService$1;-><init>(Lcom/oculus/horizon/bluetooth/UpdateService;)V

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCallbacks:Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/oculus/horizon/bluetooth/UpdateService$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/bluetooth/UpdateService$2;-><init>(Lcom/oculus/horizon/bluetooth/UpdateService;)V

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletionRunnable:Ljava/lang/Runnable;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletionCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/bluetooth/UpdateService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/UpdateService;->onBluetoothDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/bluetooth/UpdateService;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/UpdateService;->onBluetoothDeviceUpdateProgress(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/bluetooth/UpdateService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/oculus/horizon/bluetooth/UpdateService;->onBluetoothDeviceUpdateComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/bluetooth/UpdateService;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/oculus/horizon/bluetooth/UpdateService;->onBluetoothDeviceCharacteristics(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/horizon/bluetooth/UpdateService;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletionCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/oculus/horizon/bluetooth/UpdateService;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletionCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/oculus/horizon/bluetooth/UpdateService;Lcom/oculus/horizon/bluetooth/UpdateService$Reason;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/oculus/horizon/bluetooth/UpdateService;->onUpdateFailed(Lcom/oculus/horizon/bluetooth/UpdateService$Reason;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/bluetooth/UpdateService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/bluetooth/UpdateService;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800()J
    .locals 2

    .prologue
    .line 26
    sget-wide v0, Lcom/oculus/horizon/bluetooth/UpdateService;->DELAY_CONNECT_RETRY_MS:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/bluetooth/UpdateService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkForUpdate(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mLastBroadcastIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mLastBroadcastIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "UpdateService"

    const-string v1, "checkForUpdate"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothLogger:Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    const-string v1, "moonlight_bluetooth_get_firmware_version"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->reportEventStart(Ljava/lang/String;)V

    .line 223
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToCheckForUpdates:Landroid/bluetooth/BluetoothDevice;

    .line 224
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToCheckForUpdates:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/samsung/GearVRInputService;->sendBroadcastGetFirmwareVersion(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private checkForUpdateCompletion()V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletionCount:I

    .line 315
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletionRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/oculus/horizon/bluetooth/UpdateService;->DELAY_CONNECT_INITIAL_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    return-void
.end method

.method private isUpdateInProgress()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notify(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 349
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/horizon/bluetooth/UpdateService;->notify(Ljava/lang/String;ILcom/oculus/horizon/bluetooth/UpdateService$Reason;)V

    .line 350
    return-void
.end method

.method private notify(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->notify(Ljava/lang/String;ILcom/oculus/horizon/bluetooth/UpdateService$Reason;)V

    .line 358
    return-void
.end method

.method private notify(Ljava/lang/String;ILcom/oculus/horizon/bluetooth/UpdateService$Reason;)V
    .locals 8
    .param p3    # Lcom/oculus/horizon/bluetooth/UpdateService$Reason;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v7, 0x64

    const/16 v1, 0x2b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    const/16 v0, 0x2a

    .line 362
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/oculus/horizon/R$drawable;->status_icon:I

    .line 364
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v5, Lcom/oculus/horizon/R$string;->bluetooth_notification_update_title:I

    .line 365
    invoke-virtual {p0, v5}, Lcom/oculus/horizon/bluetooth/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 366
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :sswitch_0
    const-string v6, "CONNECTING"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string v6, "CONNECTED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v6, "DOWNLOADING"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v6, "DOWNLOAD_COMPLETE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "UPDATE_FAILED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v6, "UPDATE_CANCELED"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v6, "UPDATE_COMPLETE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    .line 368
    :pswitch_0
    sget v2, Lcom/oculus/horizon/R$string;->bluetooth_notification_update_connecting_text:I

    .line 369
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/bluetooth/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 370
    invoke-virtual {v2, v7, v3, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 404
    :goto_1
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 405
    const-string v3, "CONNECTING"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 406
    invoke-direct {p0, v0, v2}, Lcom/oculus/horizon/bluetooth/UpdateService;->startForegroundAndAcquireWakelock(ILandroid/app/Notification;)V

    .line 407
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 412
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    if-ltz p2, :cond_1

    .line 414
    const-string v1, "progress"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    :cond_1
    if-eqz p3, :cond_2

    .line 417
    const-string v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 421
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 422
    return-void

    .line 373
    :pswitch_1
    sget v2, Lcom/oculus/horizon/R$string;->bluetooth_notification_update_connected_text:I

    .line 374
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/bluetooth/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 375
    invoke-virtual {v2, v7, v3, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 378
    :pswitch_2
    sget v2, Lcom/oculus/horizon/R$string;->bluetooth_notification_update_downloading_text:I

    .line 379
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/bluetooth/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 380
    invoke-virtual {v2, v7, p2, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 383
    :pswitch_3
    sget v2, Lcom/oculus/horizon/R$string;->bluetooth_notification_update_download_complete_text:I

    .line 385
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/bluetooth/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 386
    invoke-virtual {v2, v7, v3, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 390
    :pswitch_4
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_notification_update_failed_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move v0, v1

    .line 391
    goto :goto_1

    .line 394
    :pswitch_5
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_notification_update_canceled_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move v0, v1

    .line 395
    goto :goto_1

    .line 398
    :pswitch_6
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_notification_update_completed_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move v0, v1

    .line 399
    goto :goto_1

    .line 409
    :cond_3
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2

    .line 366
    :sswitch_data_0
    .sparse-switch
        -0x7c6dfd17 -> :sswitch_1
        -0x666434b1 -> :sswitch_5
        -0x11519548 -> :sswitch_0
        -0x10d6eb8d -> :sswitch_4
        0x3823363a -> :sswitch_2
        0x54e2b310 -> :sswitch_3
        0x7d3877ef -> :sswitch_6
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

.method private notify(Ljava/lang/String;Lcom/oculus/horizon/bluetooth/UpdateService$Reason;)V
    .locals 1

    .prologue
    .line 353
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/oculus/horizon/bluetooth/UpdateService;->notify(Ljava/lang/String;ILcom/oculus/horizon/bluetooth/UpdateService$Reason;)V

    .line 354
    return-void
.end method

.method private onBluetoothDeviceCharacteristics(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    .line 475
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->setUpdateAvailable(Ljava/lang/String;Z)V

    .line 478
    if-eqz p2, :cond_2

    .line 479
    sget-object v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->UPDATE_STILL_AVAILABLE:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->onUpdateFailed(Lcom/oculus/horizon/bluetooth/UpdateService$Reason;)V

    .line 485
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToCheckForUpdates:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToCheckForUpdates:Landroid/bluetooth/BluetoothDevice;

    .line 486
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    invoke-direct {p0, p2, p3, p4}, Lcom/oculus/horizon/bluetooth/UpdateService;->onCheckForUpdateComplete(ZLjava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_1
    return-void

    .line 481
    :cond_2
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/UpdateService;->onUpdateComplete()V

    goto :goto_0
.end method

.method private onBluetoothDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 429
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    iget-boolean v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletion:Z

    if-eqz v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    if-ne p2, v1, :cond_3

    .line 438
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/UpdateService;->onConnected()V

    .line 446
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToCheckForUpdates:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToCheckForUpdates:Landroid/bluetooth/BluetoothDevice;

    .line 447
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    if-eq p2, v1, :cond_0

    .line 450
    if-nez p2, :cond_0

    .line 451
    sget-object v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->UNABLE_TO_CONNECT:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->onCheckForUpdateFailed(Lcom/oculus/horizon/bluetooth/UpdateService$Reason;)V

    goto :goto_0

    .line 439
    :cond_3
    if-nez p2, :cond_2

    .line 442
    sget-object v0, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->UNABLE_TO_CONNECT:Lcom/oculus/horizon/bluetooth/UpdateService$Reason;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->onUpdateFailed(Lcom/oculus/horizon/bluetooth/UpdateService$Reason;)V

    goto :goto_1
.end method

.method private onBluetoothDeviceUpdateComplete(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/UpdateService;->onDownloadComplete()V

    .line 466
    :cond_0
    return-void
.end method

.method private onBluetoothDeviceUpdateProgress(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0, p2}, Lcom/oculus/horizon/bluetooth/UpdateService;->onDownloadProgress(I)V

    .line 460
    :cond_0
    return-void
.end method

.method private onCheckForUpdateComplete(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    const-string v0, "UpdateService"

    const-string v1, "onCheckForUpdateComplete"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothLogger:Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    const-string v1, "moonlight_bluetooth_get_firmware_version"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->reportEventEnd(Ljava/lang/String;)V

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "CHECK_FOR_UPDATE_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    const-string v1, "is_update_available"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    const-string v1, "deviceVersion"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "updateVersion"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToCheckForUpdates:Landroid/bluetooth/BluetoothDevice;

    .line 252
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateService;->stopSelf()V

    .line 253
    return-void
.end method

.method private onCheckForUpdateFailed(Lcom/oculus/horizon/bluetooth/UpdateService$Reason;)V
    .locals 3

    .prologue
    .line 229
    const-string v0, "UpdateService"

    const-string v1, "onCheckForUpdateFailed: %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothLogger:Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    const-string v1, "moonlight_bluetooth_get_firmware_version"

    invoke-virtual {p1}, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->reportEventEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "CHECK_FOR_UPDATE_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToCheckForUpdates:Landroid/bluetooth/BluetoothDevice;

    .line 237
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateService;->stopSelf()V

    .line 238
    return-void
.end method

.method private onConnected()V
    .locals 1

    .prologue
    .line 295
    const-string v0, "CONNECTED"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->notify(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method private onDownloadComplete()V
    .locals 1

    .prologue
    .line 303
    const-string v0, "DOWNLOAD_COMPLETE"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->notify(Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletion:Z

    .line 306
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/UpdateService;->checkForUpdateCompletion()V

    .line 307
    return-void
.end method

.method private onDownloadProgress(I)V
    .locals 1

    .prologue
    .line 299
    const-string v0, "DOWNLOADING"

    invoke-direct {p0, v0, p1}, Lcom/oculus/horizon/bluetooth/UpdateService;->notify(Ljava/lang/String;I)V

    .line 300
    return-void
.end method

.method private onUpdateComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 334
    const-string v0, "UpdateService"

    const-string v1, "onUpdateComplete"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothLogger:Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    const-string v1, "moonlight_bluetooth_update_firmware"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->reportEventEnd(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    iput-object v3, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    .line 340
    iput-boolean v2, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletion:Z

    .line 341
    iput-object v3, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 343
    invoke-direct {p0, v2}, Lcom/oculus/horizon/bluetooth/UpdateService;->stopForegroundAndReleaseWakelock(Z)V

    .line 344
    const-string v0, "UPDATE_COMPLETE"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->notify(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateService;->stopSelf()V

    .line 346
    return-void
.end method

.method private onUpdateFailed(Lcom/oculus/horizon/bluetooth/UpdateService$Reason;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 319
    const-string v0, "UpdateService"

    const-string v1, "onUpdateFailed: %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothLogger:Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    const-string v1, "moonlight_bluetooth_update_firmware"

    invoke-virtual {p1}, Lcom/oculus/horizon/bluetooth/UpdateService$Reason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->reportEventEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iput-object v4, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    .line 325
    iput-boolean v3, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletion:Z

    .line 326
    iput-object v4, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 328
    invoke-direct {p0, v3}, Lcom/oculus/horizon/bluetooth/UpdateService;->stopForegroundAndReleaseWakelock(Z)V

    .line 329
    const-string v0, "UPDATE_FAILED"

    invoke-direct {p0, v0, p1}, Lcom/oculus/horizon/bluetooth/UpdateService;->notify(Ljava/lang/String;Lcom/oculus/horizon/bluetooth/UpdateService$Reason;)V

    .line 330
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateService;->stopSelf()V

    .line 331
    return-void
.end method

.method private startForegroundAndAcquireWakelock(ILandroid/app/Notification;)V
    .locals 4

    .prologue
    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/UpdateService;->startForeground(ILandroid/app/Notification;)V

    .line 202
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "UpdateService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 203
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-wide v2, Lcom/oculus/horizon/bluetooth/UpdateService;->TIMEOUT_WAKE_LOCK_MS:J

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 204
    return-void
.end method

.method private startUpdate(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/UpdateService;->isUpdateInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to start an update while an update is already in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    const-string v0, "UpdateService"

    const-string v1, "startUpdate"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothLogger:Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    const-string v1, "moonlight_bluetooth_update_firmware"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->reportEventStart(Ljava/lang/String;)V

    .line 272
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    .line 274
    const-string v0, "CONNECTING"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->notify(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/samsung/GearVRInputService;->sendBroadcastUpdateFirmwareStart(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 277
    return-void
.end method

.method private stopForegroundAndReleaseWakelock(Z)V
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/bluetooth/UpdateService;->stopForeground(Z)V

    .line 208
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 211
    :cond_0
    return-void
.end method

.method private stopUpdate(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 280
    const-string v0, "UpdateService"

    const-string v1, "stopUpdate"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothLogger:Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    const-string v1, "moonlight_bluetooth_update_firmware"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->reportEventEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 284
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    invoke-virtual {v1, p0, v0}, Lcom/oculus/horizon/samsung/GearVRInputService;->sendBroadcastUpdateFirmwareStop(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mBluetoothDeviceToUpdate:Landroid/bluetooth/BluetoothDevice;

    .line 287
    iput-boolean v3, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCheckForUpdateCompletion:Z

    .line 289
    invoke-direct {p0, v3}, Lcom/oculus/horizon/bluetooth/UpdateService;->stopForegroundAndReleaseWakelock(Z)V

    .line 290
    const-string v0, "UPDATE_CANCELED"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/bluetooth/UpdateService;->notify(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/UpdateService;->stopSelf()V

    .line 292
    return-void
.end method


# virtual methods
.method public doBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public doCreate()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/oculus/security/basecomponent/OculusPublicService;->doCreate()V

    .line 26
    invoke-static {p0, p0}, Lcom/oculus/horizon/bluetooth/UpdateService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/UpdateService;)V

    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCallbacks:Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;

    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/samsung/GearVRInputService;->registerCallbacks(Landroid/content/Context;Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;)V

    .line 171
    return-void
.end method

.method public doDestroy()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/UpdateService;->mCallbacks:Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;

    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/samsung/GearVRInputService;->unregisterCallbacks(Landroid/content/Context;Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;)V

    .line 177
    invoke-super {p0}, Lcom/oculus/security/basecomponent/OculusPublicService;->onDestroy()V

    .line 178
    return-void
.end method

.method public doStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v1, "CHECK_FOR_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    invoke-direct {p0, p1}, Lcom/oculus/horizon/bluetooth/UpdateService;->checkForUpdate(Landroid/content/Intent;)V

    .line 197
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 191
    :cond_1
    const-string v1, "START_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-direct {p0, p1}, Lcom/oculus/horizon/bluetooth/UpdateService;->startUpdate(Landroid/content/Intent;)V

    goto :goto_0

    .line 193
    :cond_2
    const-string v1, "STOP_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0, p1}, Lcom/oculus/horizon/bluetooth/UpdateService;->stopUpdate(Landroid/content/Intent;)V

    goto :goto_0
.end method
