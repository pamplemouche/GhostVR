.class public final Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;
.super Ljava/lang/Object;
.source "UpdaterOtaAvailability.java"


# instance fields
.field public final mAreUpdatesAvailable:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mCurrentOSVersion:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mErrorMessage:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mIsQuerySuccessful:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mTargetVersion:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mUpdateSizeInBytes:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mUpdaterState:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;


# direct methods
.method constructor <init>(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p2, :cond_0

    .line 24
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_UNKNOWN:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mUpdaterState:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 25
    iput-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mCurrentOSVersion:Ljava/lang/Long;

    .line 26
    iput-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mIsQuerySuccessful:Ljava/lang/Boolean;

    .line 27
    iput-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mAreUpdatesAvailable:Ljava/lang/Boolean;

    .line 28
    iput-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mTargetVersion:Ljava/lang/Long;

    .line 29
    iput-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mUpdateSizeInBytes:Ljava/lang/Long;

    .line 30
    const-string v0, "Null Result bundle received"

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mErrorMessage:Ljava/lang/String;

    .line 51
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v0, "ota_updater_state"

    .line 35
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->getUpdaterState(Ljava/lang/String;)Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mUpdaterState:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 36
    const-string v0, "current_os_version"

    .line 37
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "current_os_version"

    .line 38
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mCurrentOSVersion:Ljava/lang/Long;

    .line 40
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mIsQuerySuccessful:Ljava/lang/Boolean;

    .line 41
    iget-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mIsQuerySuccessful:Ljava/lang/Boolean;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ota_are_updates_available"

    .line 43
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ota_are_updates_available"

    .line 44
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mAreUpdatesAvailable:Ljava/lang/Boolean;

    .line 47
    const-string v0, "ota_update_target_version"

    invoke-direct {p0, v0, p2}, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->getValueFromBundle(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mTargetVersion:Ljava/lang/Long;

    .line 48
    const-string v0, "ota_update_size"

    invoke-direct {p0, v0, p2}, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->getValueFromBundle(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mUpdateSizeInBytes:Ljava/lang/Long;

    .line 49
    const-string v0, "error_message"

    .line 50
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->updateErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mErrorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 38
    goto :goto_1

    .line 40
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 44
    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method

.method private getValueFromBundle(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Long;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "resultBundle"    # Landroid/os/Bundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 55
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mIsQuerySuccessful:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mIsQuerySuccessful:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mAreUpdatesAvailable:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mAreUpdatesAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private updateErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mUpdaterState:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    sget-object v2, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_UNKNOWN:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    if-ne v1, v2, :cond_1

    .line 99
    .end local p1    # "errorMessage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 69
    .restart local p1    # "errorMessage":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    .line 70
    .local v0, "errorDetails":Ljava/lang/String;
    iget-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mCurrentOSVersion:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Failed to read the Current OS Version."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_2
    sget-object v1, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability$1;->$SwitchMap$com$oculus$osupdaterapi$OsUpdater$UpdaterState:[I

    iget-object v2, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mUpdaterState:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    invoke-virtual {v2}, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 96
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    if-nez p1, :cond_6

    .end local v0    # "errorDetails":Ljava/lang/String;
    :goto_2
    move-object p1, v0

    goto :goto_0

    .line 76
    .restart local v0    # "errorDetails":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mTargetVersion:Ljava/lang/Long;

    if-nez v1, :cond_3

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Failed to fetch the target Version."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 81
    :pswitch_1
    iget-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mAreUpdatesAvailable:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Failed to read if updates are available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mAreUpdatesAvailable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mTargetVersion:Ljava/lang/Long;

    if-nez v1, :cond_5

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Failed to read the target Version."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_5
    iget-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterOtaAvailability;->mUpdateSizeInBytes:Ljava/lang/Long;

    if-nez v1, :cond_3

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Failed to read the Updater Size."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 99
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
