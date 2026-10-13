.class public Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
.super Lcom/oculus/extras/ExtrasBuilder;
.source "ApkUpdateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/info/ApkUpdateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkUpdateExtrasBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/oculus/extras/ExtrasBuilder;-><init>()V

    .line 435
    return-void
.end method

.method private putState(Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 2

    .prologue
    .line 447
    const-string v0, "state"

    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->asInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putInt(Ljava/lang/String;I)Lcom/oculus/extras/ExtrasBuilder;

    .line 448
    return-object p0
.end method

.method private putStateTimestamp(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 452
    const-string v0, "state_ts"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 453
    return-object p0
.end method


# virtual methods
.method public putAssetRequiredFilename(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 585
    const-string v0, "asset_req_filename"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 586
    return-object p0
.end method

.method public putCanceledBy(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 643
    const-string v0, "canceled_by"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 644
    return-object p0
.end method

.method public putDependentStartedBy(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 468
    const-string v0, "dependency_started_by"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 469
    return-object p0
.end method

.method public putDownloadId(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 477
    const-string v0, "download_id"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 478
    return-object p0
.end method

.method public putDownloadPendingDuration(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 507
    const-string v0, "download_pending_duration"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 508
    return-object p0
.end method

.method public putDownloadReason(I)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 497
    const-string v0, "download_reason"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putInt(Ljava/lang/String;I)Lcom/oculus/extras/ExtrasBuilder;

    .line 498
    return-object p0
.end method

.method public putDownloadRunningDuration(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 512
    const-string v0, "download_running_duration"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 513
    return-object p0
.end method

.method public putDownloadScheduledTime(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 517
    const-string v0, "download_scheduled_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 518
    return-object p0
.end method

.method public putDownloadStartTime(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 522
    const-string v0, "download_start_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 523
    return-object p0
.end method

.method public putDownloadStatus(I)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 492
    const-string v0, "download_status"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putInt(Ljava/lang/String;I)Lcom/oculus/extras/ExtrasBuilder;

    .line 493
    return-object p0
.end method

.method public putDownloadedExternalFile(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 487
    const-string v0, "download_local_file"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 488
    return-object p0
.end method

.method public putDownloadedSize(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 502
    const-string v0, "download_size"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 503
    return-object p0
.end method

.method public putDownloadingExternalFile(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 482
    const-string v0, "downloading_external_file"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 483
    return-object p0
.end method

.method public putErrorCode(I)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 629
    const-string v0, "error_code"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putInt(Ljava/lang/String;I)Lcom/oculus/extras/ExtrasBuilder;

    .line 630
    return-object p0
.end method

.method public putFailedCategory(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 609
    const-string v0, "failed_category"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 610
    return-object p0
.end method

.method public putFailedDescription(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 614
    const-string v0, "failed_descr"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 615
    return-object p0
.end method

.method public putFailedState(Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 2

    .prologue
    .line 604
    const-string v0, "failed_state"

    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;->asInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putInt(Ljava/lang/String;I)Lcom/oculus/extras/ExtrasBuilder;

    .line 605
    return-object p0
.end method

.method public putFailureCode(I)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 619
    const-string v0, "failure_code"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putInt(Ljava/lang/String;I)Lcom/oculus/extras/ExtrasBuilder;

    .line 620
    return-object p0
.end method

.method public putFinalPatchedExternalFile(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 541
    const-string v0, "patch_external_file"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 542
    return-object p0
.end method

.method public putFutureId(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 676
    const-string v0, "future_id"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 677
    return-object p0
.end method

.method public putFuturePid(I)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 681
    const-string v0, "future_pid"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putInt(Ljava/lang/String;I)Lcom/oculus/extras/ExtrasBuilder;

    .line 682
    return-object p0
.end method

.method public putInstallBackupFilePath(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 595
    const-string v0, "install_backup_path"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 596
    return-object p0
.end method

.method public putInstallationDurationMs(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 575
    const-string v0, "install_duration_ms"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 576
    return-object p0
.end method

.method public putInstallationStartTimeMs(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 570
    const-string v0, "install_start_time_ms"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 571
    return-object p0
.end method

.method public putIsDownloadNotificationSent(Z)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 527
    const-string v0, "download_success_notification_sent"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putBoolean(Ljava/lang/String;Z)Lcom/oculus/extras/ExtrasBuilder;

    .line 528
    return-object p0
.end method

.method public putIsRequiredAsset(Z)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 580
    const-string v0, "is_required_asset"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putBoolean(Ljava/lang/String;Z)Lcom/oculus/extras/ExtrasBuilder;

    .line 581
    return-object p0
.end method

.method public putIsTransitiveFailure(Z)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 624
    const-string v0, "failed_transitive"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putBoolean(Ljava/lang/String;Z)Lcom/oculus/extras/ExtrasBuilder;

    .line 625
    return-object p0
.end method

.method public putPatchFailureFallbackChecksum(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 561
    const-string v0, "patch_failure_fallback_checksum"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 562
    return-object p0
.end method

.method public putPatchFailureFallbackDownloadUri(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 551
    const-string v0, "patch_failure_fallback_url"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 552
    return-object p0
.end method

.method public putPatchFailureFallbackSize(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 556
    const-string v0, "patch_failure_fallback_size"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 557
    return-object p0
.end method

.method public putPreparedInstallFilePath(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 590
    const-string v0, "install_preparation_path"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 591
    return-object p0
.end method

.method public putRetriedUpdate(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 657
    const-string v0, "retry_id"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 658
    return-object p0
.end method

.method public putRetryOf(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 652
    const-string v0, "is_retry_of"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 653
    return-object p0
.end method

.method public putSandboxedFile(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 546
    const-string v0, "sandboxed_local_file"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 547
    return-object p0
.end method

.method public putStackTrace(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 634
    const-string v0, "stack_trace"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 635
    return-object p0
.end method

.method public putState(Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putState(Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 459
    invoke-direct {p0, p2, p3}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putStateTimestamp(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;

    .line 460
    return-object p0
.end method

.method public putUUID(Ljava/lang/String;)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 671
    const-string v0, "uuid"

    invoke-virtual {p0, v0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    .line 672
    return-object p0
.end method

.method public putUpdatePayloadSize(J)Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;
    .locals 1

    .prologue
    .line 536
    const-string v0, "payload_size"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtrasBuilder;->putLong(Ljava/lang/String;J)Lcom/oculus/extras/ExtrasBuilder;

    .line 537
    return-object p0
.end method

.method public save()V
    .locals 2

    .prologue
    .line 688
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot save state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
