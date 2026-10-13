.class public final Lcom/oculus/osupdaterapi/UpdaterStatus;
.super Ljava/lang/Object;
.source "UpdaterStatus.java"


# instance fields
.field public final mCurrentOSVersion:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mErrorMessage:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mTimeSinceLastUpdateCheckMSec:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mTimeSinceLastUpdateMSec:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mUpdaterState:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "resultBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_0

    .line 23
    sget-object v0, Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;->STATE_UNKNOWN:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterStatus;->mUpdaterState:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 24
    iput-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterStatus;->mCurrentOSVersion:Ljava/lang/Long;

    .line 25
    iput-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterStatus;->mTimeSinceLastUpdateMSec:Ljava/lang/Long;

    .line 26
    iput-object v1, p0, Lcom/oculus/osupdaterapi/UpdaterStatus;->mTimeSinceLastUpdateCheckMSec:Ljava/lang/Long;

    .line 27
    const-string v0, "Null Result bundle received."

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterStatus;->mErrorMessage:Ljava/lang/String;

    .line 39
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v0, "ota_updater_state"

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/oculus/osupdaterapi/OsUpdaterImpl;->getUpdaterState(Ljava/lang/String;)Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterStatus;->mUpdaterState:Lcom/oculus/osupdaterapi/OsUpdater$UpdaterState;

    .line 33
    const-string v0, "current_os_version"

    invoke-static {v0, p1}, Lcom/oculus/osupdaterapi/UpdaterStatus;->getValueFromBundle(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterStatus;->mCurrentOSVersion:Ljava/lang/Long;

    .line 34
    const-string v0, "time_since_last_update_msec"

    .line 35
    invoke-static {v0, p1}, Lcom/oculus/osupdaterapi/UpdaterStatus;->getValueFromBundle(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterStatus;->mTimeSinceLastUpdateMSec:Ljava/lang/Long;

    .line 36
    const-string v0, "time_since_last_update_check_msec"

    .line 37
    invoke-static {v0, p1}, Lcom/oculus/osupdaterapi/UpdaterStatus;->getValueFromBundle(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterStatus;->mTimeSinceLastUpdateCheckMSec:Ljava/lang/Long;

    .line 38
    const-string v0, "error_message"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/osupdaterapi/UpdaterStatus;->mErrorMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getValueFromBundle(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Long;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "resultBundle"    # Landroid/os/Bundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method
