.class public Lcom/oculus/horizon/bluetooth/BluetoothReceiver;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "BluetoothReceiver.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mBluetoothLogger:Lcom/oculus/horizon/bluetooth/BluetoothLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mIsSamsungBroadcastEnabled:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_bluetooth_samsung_broadcast"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/BluetoothReceiver;)V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/BluetoothReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/BluetoothReceiver;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->$ul_$xXXcom_oculus_horizon_samsung_GearVRControllerHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_app_NotificationManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p0}, Lcom/oculus/android/AndroidModule;->$ul_$xXXandroid_bluetooth_BluetoothAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->$ul_$xXXcom_oculus_horizon_bluetooth_BluetoothLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mBluetoothLogger:Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/BluetoothModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fbluetooth$x5Fsamsung$x5Fbroadcast$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mIsSamsungBroadcastEnabled:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.app.vr.input.service.receiver.action.BLUETOOTH_FWUPDATE_NOTI"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.samsung.android.action.BLUETOOTH_DEVICE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method private onReceiveBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mIsSamsungBroadcastEnabled:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/MalibuHelper;->isMalibuDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/horizon/bluetooth/BluetoothReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/oculus/horizon/bluetooth/BluetoothReceiver$1;-><init>(Lcom/oculus/horizon/bluetooth/BluetoothReceiver;Ljava/lang/String;Landroid/content/Context;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private onReceiveBluetoothFwUpdateNotifi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 99
    const-string v0, "BluetoothReceiver"

    const-string v1, "onReceiveBluetoothFwUpdateNotifi: %s"

    invoke-static {v0, v1, p2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mBluetoothLogger:Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    .line 102
    invoke-virtual {v1}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->getController()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->reportFwUpdateNotifi(Z)V

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    invoke-virtual {v0, p2, v5}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->setUpdateAvailable(Ljava/lang/String;Z)V

    .line 106
    const/4 v0, 0x0

    .line 110
    invoke-static {p2}, Lcom/oculus/horizon/bluetooth/BluetoothActivity;->newStartIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 107
    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 115
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/oculus/horizon/R$drawable;->status_icon:I

    .line 117
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Lcom/oculus/horizon/R$string;->bluetooth_notification_fw_update_title:I

    .line 118
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Lcom/oculus/horizon/R$string;->bluetooth_notification_fw_update_text:I

    .line 119
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 120
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 124
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 125
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 4

    .prologue
    .line 31
    invoke-static {p1, p0}, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/BluetoothReceiver;)V

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "com.samsung.android.app.vr.input.service.receiver.action.BLUETOOTH_FWUPDATE_NOTI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v0, "deviceAddress"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->onReceiveBluetoothFwUpdateNotifi(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v1, "com.samsung.android.action.BLUETOOTH_DEVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "MAC"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    const-string v2, "BluetoothReceiver"

    const-string v3, "Found null MAC address"

    invoke-virtual {v1, v2, v3}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/bluetooth/BluetoothReceiver;->onReceiveBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
