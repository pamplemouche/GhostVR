.class public Lcom/oculus/appmanager/info/ApkUpdateInfoContract;
.super Ljava/lang/Object;
.source "ApkUpdateInfoContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable;,
        Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;,
        Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;,
        Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;,
        Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;
    }
.end annotation


# static fields
.field public static final EXTRA_ASSET_REQUIRED_FILENAME:Ljava/lang/String; = "asset_req_filename"

.field public static final EXTRA_BINARY_ID:Ljava/lang/String; = "binary_id"

.field public static final EXTRA_CANCELED_BY:Ljava/lang/String; = "canceled_by"

.field public static final EXTRA_CREATED_TIMESTAMP:Ljava/lang/String; = "created_ts"

.field public static final EXTRA_DEPENDENT_START_BY:Ljava/lang/String; = "dependency_started_by"

.field public static final EXTRA_DOWNLOADED_EXTERNAL_FILE:Ljava/lang/String; = "download_local_file"

.field public static final EXTRA_DOWNLOADED_SIZE:Ljava/lang/String; = "download_size"

.field public static final EXTRA_DOWNLOADING_EXTERNAL_FILE:Ljava/lang/String; = "downloading_external_file"

.field public static final EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "download_id"

.field public static final EXTRA_DOWNLOAD_PENDING_DURATION_SECONDS:Ljava/lang/String; = "download_pending_duration"

.field public static final EXTRA_DOWNLOAD_REASON:Ljava/lang/String; = "download_reason"

.field public static final EXTRA_DOWNLOAD_RUNNING_DURATION_SECONDS:Ljava/lang/String; = "download_running_duration"

.field public static final EXTRA_DOWNLOAD_SCHEDULED_TIME_MS:Ljava/lang/String; = "download_scheduled_time"

.field public static final EXTRA_DOWNLOAD_START_TIME_MS:Ljava/lang/String; = "download_start_time"

.field public static final EXTRA_DOWNLOAD_STATUS:Ljava/lang/String; = "download_status"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final EXTRA_EXTERNAL_PATCHED_FILE:Ljava/lang/String; = "patch_external_file"

.field public static final EXTRA_FAILED_CATEGORY:Ljava/lang/String; = "failed_category"

.field public static final EXTRA_FAILED_DESCR:Ljava/lang/String; = "failed_descr"

.field public static final EXTRA_FAILED_STATE:Ljava/lang/String; = "failed_state"

.field public static final EXTRA_FAILURE_CODE:Ljava/lang/String; = "failure_code"

.field public static final EXTRA_FUTURE_ID:Ljava/lang/String; = "future_id"

.field public static final EXTRA_FUTURE_PID:Ljava/lang/String; = "future_pid"

.field public static final EXTRA_INSTALLATION_DURATION_MS:Ljava/lang/String; = "install_duration_ms"

.field public static final EXTRA_INSTALLATION_START_TIME_MS:Ljava/lang/String; = "install_start_time_ms"

.field public static final EXTRA_IS_RETRY_OF:Ljava/lang/String; = "is_retry_of"

.field public static final EXTRA_NEW_INSTALL_API:Ljava/lang/String; = "install_new_api"

.field public static final EXTRA_PATCH_FAILURE_FALLBACK_SIZE:Ljava/lang/String; = "patch_failure_fallback_size"

.field public static final EXTRA_PATCH_FAILURE_FALLBACK_URI:Ljava/lang/String; = "patch_failure_fallback_url"

.field public static final EXTRA_RECOVERY_TRIES:Ljava/lang/String; = "recovery_tries"

.field public static final EXTRA_RETRIED_AS_ID:Ljava/lang/String; = "retry_id"

.field public static final EXTRA_SANDBOXED_FILE:Ljava/lang/String; = "sandboxed_local_file"

.field public static final EXTRA_STACK_TRACE:Ljava/lang/String; = "stack_trace"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_TIMESTAMP:Ljava/lang/String; = "state_ts"

.field public static final EXTRA_TRANSITIVE_FAILURE:Ljava/lang/String; = "failed_transitive"

.field public static final EXTRA_UPDATE_PAYLOAD_SIZE:Ljava/lang/String; = "payload_size"

.field public static final INVALID_FAILURE_CODE:I = -0x1

.field public static final INVALID_FUTURE_ID:J = -0x1L

.field public static final INVALID_FUTURE_PID:I = -0x1

.field public static final INVALID_TIME:J = -0x1L

.field public static final INVALID_UPDATE_ID:J = -0x1L

.field public static final STATE_CANCELED:I = 0x40200

.field public static final STATE_DELETING:I = 0x20070

.field public static final STATE_DOWNLOADED:I = 0xa0030

.field public static final STATE_DOWNLOADING:I = 0xa0020

.field public static final STATE_FAILED:I = 0x40300

.field public static final STATE_INSTALLING:I = 0x20060

.field public static final STATE_NEW:I = 0x90001

.field public static final STATE_QUEUED_DOWNLOAD:I = 0xa0010

.field public static final STATE_RETRIED:I = 0x40400

.field public static final STATE_SUCCESS:I = 0x40100

.field public static final STATE_TYPE_CANCELABLE:I = 0x80000

.field public static final STATE_TYPE_FINAL:I = 0x40000

.field public static final STATE_TYPE_INITIAL:I = 0x10000

.field public static final STATE_TYPE_MASK:I = -0x10000

.field public static final STATE_TYPE_TRANSIENT:I = 0x20000

.field public static final STATE_VERIFIED:I = 0xa0050

.field public static final STATE_VERIFYING:I = 0xa0040

.field public static final UNKNOWN_DOWNLOAD_SIZE:J = -0x1L

.field public static final UPDATE_FULL_APK:I = 0x120000

.field public static final UPDATE_FULL_ASSET:I = 0x140000

.field public static final UPDATE_FULL_OBB:I = 0x110000

.field public static final UPDATE_PATCH_APK:I = 0x220000

.field public static final UPDATE_PATCH_ASSET:I = 0x240000

.field public static final UPDATE_PATCH_OBB:I = 0x210000

.field public static final UPDATE_TYPE_APK:I = 0x20000

.field public static final UPDATE_TYPE_ASSET:I = 0x40000

.field public static final UPDATE_TYPE_FULL:I = 0x100000

.field public static final UPDATE_TYPE_MASK:I = -0x10000

.field public static final UPDATE_TYPE_OBB:I = 0x10000

.field public static final UPDATE_TYPE_PATCH:I = 0x200000

.field public static final VERSION_NOT_INSTALLED:I = -0x80000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract;->fromEnumInt(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method private static fromEnumInt(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum;",
            ":",
            "Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 419
    move-object v4, v3

    check-cast v4, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;

    invoke-interface {v4}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;->asInt()I

    move-result v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " int : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
