.class public Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnytimeUIDialogBroadcastReceiver.java"


# static fields
.field private static final OTA_ACTION:Ljava/lang/String; = "com.oculus.updater.STATE_NOTIFICATION"

.field private static final OTA_COMPONENT_NAME:Ljava/lang/String; = "com.oculus.updater.core.os.OSUpdateService"

.field private static final OTA_EXTRA_PROGRESS_ID:Ljava/lang/String; = "progress"

.field private static final OTA_EXTRA_RECEIVER:Ljava/lang/String; = "result_receiver"

.field private static final OTA_EXTRA_STATE_ID:Ljava/lang/String; = "state"

.field private static final OTA_GET_UPDATE_ACTION:Ljava/lang/String; = "get_update_info"

.field private static final OTA_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.updater"

.field private static final OTA_STATE_NO_UPDATES_AVAILABLE:Ljava/lang/String; = "no_updates_available"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->updateOTADialog(Landroid/os/Bundle;)V

    return-void
.end method

.method private static getOTADialog()Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;
    .locals 2

    .line 80
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getCurrentDialog()Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    move-result-object v0

    .line 81
    instance-of v1, v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    sget-object p0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    .line 93
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public static requestOTAStatusUpdate(Landroid/content/Context;)V
    .locals 4

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "get_update_info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.updater"

    const-string v3, "com.oculus.updater.core.os.OSUpdateService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 104
    new-instance v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver$1;

    new-instance v2, Landroid/os/Handler;

    .line 106
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver$1;-><init>(Landroid/os/Handler;)V

    .line 105
    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v1

    const-string v2, "result_receiver"

    .line 115
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    sget-object p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v0, "OTA Update Service launched."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Unable to launch OTA service."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static updateOTADialog(Landroid/os/Bundle;)V
    .locals 4

    if-nez p0, :cond_0

    .line 56
    sget-object p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring OTA update because there are no extras."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->getOTADialog()Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    sget-object p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring OTA update because we are not showing OTABlocking2Dialog"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "state"

    .line 64
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no_updates_available"

    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 66
    sget-object p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Setting OTA update progress to complete because no updates available"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->setUpdateOTAProgress(F)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const-string v3, "progress"

    .line 69
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_3

    cmpg-float v1, p0, v2

    if-gtz v1, :cond_3

    .line 71
    sget-object v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting OTA update progress to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->setUpdateOTAProgress(F)V

    goto :goto_0

    .line 74
    :cond_3
    sget-object v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring OTA update out of bounds progress of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 36
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 39
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string p2, "Received an intent with no action."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x7e4693d6

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.oculus.updater.STATE_NOTIFICATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 50
    sget-object p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogBroadcastReceiver;->updateOTADialog(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method
