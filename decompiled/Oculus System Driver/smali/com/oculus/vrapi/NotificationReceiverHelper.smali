.class Lcom/oculus/vrapi/NotificationReceiverHelper;
.super Ljava/lang/Object;
.source "NotificationReceiverHelper.java"


# static fields
.field private static final DEVICE_TYPE_NUM_GEAR_VR:I = 0x0

.field private static final DEVICE_TYPE_NUM_GO:I = 0x1

.field private static final DEVICE_TYPE_NUM_QUEST:I = 0x2

.field private static final REMOTE_RESOURCE_PKG_NAME:Ljava/lang/String; = "com.oculus.systemdriver"

.field private static final TAG:Ljava/lang/String; = "VrApiNotificationReceiverHelper"

.field private static goRemoteBatteryLowIconId:I

.field private static goRemoteDisconnectedIconId:I

.field private static mDeviceTypeNum:I

.field private static questRemoteBatteryLowIconId:I

.field private static questRemoteDisconnectedIconId:I

.field private static remoteBatteryLowIconId:I

.field private static remoteDisconnectedIconId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayControllerBatteryLowNotification(Landroid/content/Context;)V
    .locals 2

    .line 101
    sget v0, Lcom/oculus/vrapi/NotificationReceiverHelper;->mDeviceTypeNum:I

    if-nez v0, :cond_0

    .line 103
    sget v0, Lcom/oculus/vrapi/NotificationReceiverHelper;->remoteBatteryLowIconId:I

    const-string v1, "com.oculus.systemdriver"

    invoke-static {p0, v0, v1}, Lcom/oculus/vrapi/NotificationReceiver;->displayNotification(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    sget v0, Lcom/oculus/vrapi/NotificationReceiverHelper;->mDeviceTypeNum:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 107
    sget v0, Lcom/oculus/vrapi/NotificationReceiverHelper;->goRemoteBatteryLowIconId:I

    const-string v1, "com.oculus.systemdriver"

    invoke-static {p0, v0, v1}, Lcom/oculus/vrapi/NotificationReceiver;->displayNotification(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    sget v0, Lcom/oculus/vrapi/NotificationReceiverHelper;->questRemoteBatteryLowIconId:I

    const-string v1, "com.oculus.systemdriver"

    invoke-static {p0, v0, v1}, Lcom/oculus/vrapi/NotificationReceiver;->displayNotification(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static displayControllerDisconnectNotification(Landroid/content/Context;)V
    .locals 2

    .line 79
    sget v0, Lcom/oculus/vrapi/NotificationReceiverHelper;->mDeviceTypeNum:I

    if-nez v0, :cond_0

    .line 81
    sget v0, Lcom/oculus/vrapi/NotificationReceiverHelper;->remoteDisconnectedIconId:I

    const-string v1, "com.oculus.systemdriver"

    invoke-static {p0, v0, v1}, Lcom/oculus/vrapi/NotificationReceiver;->displayNotification(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static initializeForContext(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "VrApiNotificationReceiverHelper"

    const-string v1, "initializeForContext"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.oculus.systemdriver"

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "notify_controller_disconnected"

    const-string v1, "raw"

    const-string v2, "com.oculus.systemdriver"

    .line 60
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/vrapi/NotificationReceiverHelper;->remoteDisconnectedIconId:I

    const-string v0, "notify_controller_battery_low"

    const-string v1, "raw"

    const-string v2, "com.oculus.systemdriver"

    .line 61
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/vrapi/NotificationReceiverHelper;->remoteBatteryLowIconId:I

    const-string v0, "notify_go_controller_battery_low"

    const-string v1, "raw"

    const-string v2, "com.oculus.systemdriver"

    .line 63
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/vrapi/NotificationReceiverHelper;->goRemoteBatteryLowIconId:I

    const-string v0, "notify_go_controller_disconnected"

    const-string v1, "raw"

    const-string v2, "com.oculus.systemdriver"

    .line 64
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/vrapi/NotificationReceiverHelper;->goRemoteDisconnectedIconId:I

    const-string v0, "notify_quest_controller_battery_low"

    const-string v1, "raw"

    const-string v2, "com.oculus.systemdriver"

    .line 66
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/vrapi/NotificationReceiverHelper;->questRemoteBatteryLowIconId:I

    const-string v0, "notify_quest_controller_disconnected"

    const-string v1, "raw"

    const-string v2, "com.oculus.systemdriver"

    .line 67
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/oculus/vrapi/NotificationReceiverHelper;->questRemoteDisconnectedIconId:I

    .line 69
    sput p1, Lcom/oculus/vrapi/NotificationReceiverHelper;->mDeviceTypeNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "VrApiNotificationReceiverHelper"

    const-string p1, "Couldn\'t load package com.oculus.systemdriver"

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
