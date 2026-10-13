.class public Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;
.super Lcom/oculus/extras/Extras;
.source "ApkUpdateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/ApkUpdateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkUpdateExtras"
.end annotation


# direct methods
.method public constructor <init>(Lcom/oculus/extras/Extras;)V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/oculus/extras/Extras;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/extras/Extras;-><init>(Ljava/util/Map;)V

    .line 192
    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/oculus/extras/Extras;-><init>(Ljava/util/Map;)V

    .line 196
    return-void
.end method


# virtual methods
.method public getAssetRequiredFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    const-string v0, "asset_req_filename"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCancelledBy()J
    .locals 4

    .prologue
    .line 379
    const-string v0, "canceled_by"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDependentStartedBy()J
    .locals 4

    .prologue
    .line 221
    const-string v0, "dependency_started_by"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadId()J
    .locals 4

    .prologue
    .line 229
    const-string v0, "download_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadPendingDuration()J
    .locals 4

    .prologue
    .line 253
    const-string v0, "download_pending_duration"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadReason()I
    .locals 2

    .prologue
    .line 245
    const-string v0, "download_reason"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDownloadRunningDuration()J
    .locals 4

    .prologue
    .line 259
    const-string v0, "download_running_duration"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadScheduledTime()J
    .locals 4

    .prologue
    .line 265
    const-string v0, "download_scheduled_time"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadStartTime()J
    .locals 4

    .prologue
    .line 271
    const-string v0, "download_start_time"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadStatus()I
    .locals 2

    .prologue
    .line 241
    const-string v0, "download_status"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDownloadedExternalFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    const-string v0, "download_local_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 4

    .prologue
    .line 249
    const-string v0, "download_size"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownloadingExternalFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    const-string v0, "downloading_external_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 2

    .prologue
    .line 367
    const-string v0, "error_code"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFailedCategory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    const-string v0, "failed_category"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFailedDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    const-string v0, "failed_descr"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFailedState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;
    .locals 2

    .prologue
    .line 343
    const-string v0, "failed_state"

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->NEW:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 346
    invoke-virtual {v1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->asInt()I

    move-result v1

    .line 344
    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 343
    invoke-static {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->fromInt(I)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    return-object v0
.end method

.method public getFailureCode()I
    .locals 2

    .prologue
    .line 358
    const-string v0, "failure_code"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFinalPatchedExternalFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    const-string v0, "patch_external_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFutureId()J
    .locals 4

    .prologue
    .line 407
    const-string v0, "future_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFuturePid()I
    .locals 2

    .prologue
    .line 411
    const-string v0, "future_pid"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInstallBackupFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    const-string v0, "install_backup_path"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallationDurationMs()J
    .locals 4

    .prologue
    .line 318
    const-string v0, "install_duration_ms"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInstallationStartTimeMs()J
    .locals 4

    .prologue
    .line 312
    const-string v0, "install_start_time_ms"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsDownloadNotificationSent()Z
    .locals 2

    .prologue
    .line 276
    const-string v0, "download_success_notification_sent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPatchFailureFallbackDownloadChecksum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    const-string v0, "patch_failure_fallback_checksum"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPatchFailureFallbackDownloadSize()J
    .locals 4

    .prologue
    .line 300
    const-string v0, "patch_failure_fallback_size"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPatchFailureFallbackDownloadUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    const-string v0, "patch_failure_fallback_url"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreparedInstallFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    const-string v0, "install_preparation_path"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetriedUpdate()J
    .locals 4

    .prologue
    .line 391
    const-string v0, "retry_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRetryOf()J
    .locals 4

    .prologue
    .line 387
    const-string v0, "is_retry_of"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSandboxedFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    const-string v0, "sandboxed_local_file"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    const-string v0, "stack_trace"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;
    .locals 2

    .prologue
    .line 209
    const-string v0, "state"

    sget-object v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->NEW:Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    .line 210
    invoke-virtual {v1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->asInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 209
    invoke-static {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->fromInt(I)Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;

    move-result-object v0

    return-object v0
.end method

.method public getStateTimestamp()J
    .locals 4

    .prologue
    .line 214
    const-string v0, "state_ts"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    const-string v0, "uuid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRequiredAsset()Z
    .locals 2

    .prologue
    .line 323
    const-string v0, "is_required_asset"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTransitiveFailure()Z
    .locals 2

    .prologue
    .line 363
    const-string v0, "failed_transitive"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 418
    const-class v0, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 419
    const-string v1, "data"

    invoke-virtual {p0}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 420
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
