.class final Lcom/oculus/osupdaterapi/OsUpdaterImpl;
.super Ljava/lang/Object;
.source "OsUpdaterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/osupdaterapi/OsUpdaterImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/osupdaterapi/OsUpdaterImpl;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static createAndSendIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "isFullUpdate"    # Z

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.updater"

    const-string v3, "com.oculus.updater.core.os.OSUpdateService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 209
    if-eqz p2, :cond_0

    .line 210
    const-string v1, "result_receiver"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    :cond_0
    const-string v1, "full_update"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 214
    return-void
.end method

.method static getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 3
    .param p0, "actualReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 193
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {p0, v0, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 194
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 195
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 196
    .local v1, "receiverForSending":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 197
    return-object v1
.end method

.method static getUpdaterState(Ljava/lang/String;)Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    .locals 3
    .param p0, "stateString"    # Ljava/lang/String;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_UNKNOWN:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 59
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 56
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_UNKNOWN:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .local v0, "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    goto :goto_0

    .line 33
    .end local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    :sswitch_0
    const-string v2, "state_ready_to_check_for_ota"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "waiting_for_reboot"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "ota_update_in_progress"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "state_ota_disabled"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "state_not_allowed_by_system"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "Device is not configured for AB updates"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "Check for updates stopped due to no wifi connection"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    .line 35
    :pswitch_0
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_READY_TO_CHECK_FOR_OTA:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 36
    .restart local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    goto :goto_0

    .line 38
    .end local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    :pswitch_1
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_WAITING_FOR_REBOOT:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 39
    .restart local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    goto :goto_0

    .line 41
    .end local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    :pswitch_2
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_UPDATE_IN_PROGRESS:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 42
    .restart local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    goto :goto_0

    .line 44
    .end local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    :pswitch_3
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_OTA_DISABLED_BY_USER:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 45
    .restart local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    goto :goto_0

    .line 47
    .end local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    :pswitch_4
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_NOT_ALLOWED_BY_SYSTEM:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 48
    .restart local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    goto :goto_0

    .line 50
    .end local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    :pswitch_5
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_DEVICE_NOT_CONFIGURED_FOR_AB_UPDATES:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 51
    .restart local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    goto :goto_0

    .line 53
    .end local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    :pswitch_6
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_WIFI_DISABLED:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 54
    .restart local v0    # "updaterState":Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;
    goto :goto_0

    .line 33
    :sswitch_data_0
    .sparse-switch
        -0x75d9c46c -> :sswitch_2
        -0x7243a135 -> :sswitch_6
        -0x63475a5a -> :sswitch_4
        -0xf0b1ef3 -> :sswitch_1
        0x1c59552d -> :sswitch_3
        0x69a8d68b -> :sswitch_5
        0x756a7a35 -> :sswitch_0
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


# virtual methods
.method checkIfUpdatesAreAvailable(ZLandroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;)V
    .locals 4
    .param p1, "isFullUpdate"    # Z
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "otaAvailabilityCallback"    # Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;

    .prologue
    .line 86
    if-nez p3, :cond_0

    .line 87
    sget-object v1, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->TAG:Ljava/lang/String;

    const-string v2, "The UpdateCheckResponseHandler instance is null. Aborting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/osupdaterapi/OsUpdaterImpl$2;-><init>(Lcom/oculus/osupdaterapi/OsUpdaterImpl;Landroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;)V

    .line 97
    .local v0, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v1, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->mContext:Landroid/content/Context;

    const-string v2, "check_ota_availability"

    .line 100
    invoke-static {v0}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v3

    .line 97
    invoke-static {v1, v2, v3, p1}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->createAndSendIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;Z)V

    goto :goto_0
.end method

.method downloadUpdateIfAvailable(ZLandroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;)V
    .locals 6
    .param p1, "isFullUpdate"    # Z
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "otaAvailabilityCallback"    # Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;
    .param p4, "updateProgressCallback"    # Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;

    .prologue
    .line 161
    if-nez p3, :cond_0

    .line 162
    sget-object v3, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->TAG:Ljava/lang/String;

    const-string v4, "The UpdateCheckResponseHandler instance is null. Aborting"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 167
    :cond_0
    if-eqz p4, :cond_1

    .line 168
    new-instance v1, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;

    invoke-direct {v1, p0, p4}, Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;-><init>(Lcom/oculus/osupdaterapi/OsUpdaterImpl;Lcom/oculus/osupdaterapi/OsUpdater$OtaUpdateProgressCallback;)V

    .line 170
    .local v1, "progressReceiver":Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;
    iget-object v3, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.oculus.updater.STATE_NOTIFICATION"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    .end local v1    # "progressReceiver":Lcom/oculus/osupdaterapi/OsUpdaterImpl$OtaUpdateStatusReceiver;
    :cond_1
    new-instance v2, Lcom/oculus/osupdaterapi/OsUpdaterImpl$3;

    invoke-direct {v2, p0, p2, p3}, Lcom/oculus/osupdaterapi/OsUpdaterImpl$3;-><init>(Lcom/oculus/osupdaterapi/OsUpdaterImpl;Landroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterOtaAvailabilityCallback;)V

    .line 180
    .local v2, "resultReceiver":Landroid/os/ResultReceiver;
    if-eqz p1, :cond_2

    const-string v0, "ext_check_updates_full"

    .line 184
    .local v0, "action":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v4

    invoke-static {v3, v0, v4, p1}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->createAndSendIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;Z)V

    goto :goto_0

    .line 180
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string v0, "ext_check_updates"

    goto :goto_1
.end method

.method getUpdaterStatus(Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "updaterStatusCallback"    # Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    sget-object v1, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->TAG:Ljava/lang/String;

    const-string v2, "The UpdaterStatusCallback instance is null. Aborting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/oculus/osupdaterapi/OsUpdaterImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/oculus/osupdaterapi/OsUpdaterImpl$1;-><init>(Lcom/oculus/osupdaterapi/OsUpdaterImpl;Landroid/os/Handler;Lcom/oculus/osupdaterapi/OsUpdater$UpdaterStatusCallback;)V

    .line 75
    .local v0, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v1, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->mContext:Landroid/content/Context;

    const-string v2, "updater_get_current_state"

    .line 78
    invoke-static {v0}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v3

    const/4 v4, 0x0

    .line 75
    invoke-static {v1, v2, v3, v4}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->createAndSendIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;Z)V

    goto :goto_0
.end method

.method rebootAndApplyUpdate()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->mContext:Landroid/content/Context;

    const-string v1, "ext_boot_into_update"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->createAndSendIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/ResultReceiver;Z)V

    .line 189
    return-void
.end method
