.class public Lcom/oculus/downloader/util/OculusDownloadManagerUtils;
.super Ljava/lang/Object;
.source "OculusDownloadManagerUtils.java"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/downloader/util/OculusDownloadManagerUtils;->mApplicationContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static stringifyReason(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    sparse-switch p0, :sswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 63
    :sswitch_0
    const-string v0, "PAUSED_QUEUED_FOR_WIFI"

    goto :goto_0

    .line 65
    :sswitch_1
    const-string v0, "PAUSED_UNKNOWN"

    goto :goto_0

    .line 67
    :sswitch_2
    const-string v0, "PAUSED_WAITING_FOR_NETWORK"

    goto :goto_0

    .line 69
    :sswitch_3
    const-string v0, "PAUSED_WAITING_TO_RETRY"

    goto :goto_0

    .line 71
    :sswitch_4
    const-string v0, "ERROR_CANNOT_RESUME"

    goto :goto_0

    .line 73
    :sswitch_5
    const-string v0, "ERROR_DEVICE_NOT_FOUND"

    goto :goto_0

    .line 75
    :sswitch_6
    const-string v0, "ERROR_FILE_ALREADY_EXISTS"

    goto :goto_0

    .line 77
    :sswitch_7
    const-string v0, "ERROR_FILE_ERROR"

    goto :goto_0

    .line 79
    :sswitch_8
    const-string v0, "ERROR_HTTP_DATA_ERROR"

    goto :goto_0

    .line 81
    :sswitch_9
    const-string v0, "ERROR_UNHANDLED_HTTP_CODE"

    goto :goto_0

    .line 83
    :sswitch_a
    const-string v0, "ERROR_INSUFFICIENT_SPACE"

    goto :goto_0

    .line 85
    :sswitch_b
    const-string v0, "ERROR_TOO_MANY_REDIRECTS"

    goto :goto_0

    .line 87
    :sswitch_c
    const-string v0, "ERROR_UNKNOWN"

    goto :goto_0

    .line 61
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x3e8 -> :sswitch_c
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_9
        0x3ec -> :sswitch_8
        0x3ed -> :sswitch_b
        0x3ee -> :sswitch_a
        0x3ef -> :sswitch_5
        0x3f0 -> :sswitch_4
        0x3f1 -> :sswitch_6
    .end sparse-switch
.end method

.method public static stringifyStatus(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    sparse-switch p0, :sswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 46
    :sswitch_0
    const-string v0, "FAILED"

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "PAUSE"

    goto :goto_0

    .line 50
    :sswitch_2
    const-string v0, "PENDING"

    goto :goto_0

    .line 52
    :sswitch_3
    const-string v0, "RUNNING"

    goto :goto_0

    .line 54
    :sswitch_4
    const-string v0, "SUCCESSFUL"

    goto :goto_0

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_1
        0x8 -> :sswitch_4
        0x10 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public setAllowedOverMetered(Landroid/app/DownloadManager$Request;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    .line 28
    return-void
.end method

.method public setNotificationVisibility(Landroid/app/DownloadManager$Request;I)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/downloader/util/OculusDownloadManagerUtils;->mApplicationContext:Landroid/content/Context;

    const-string v1, "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 34
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    if-eqz v0, :cond_0

    .line 36
    const/4 p2, 0x0

    .line 39
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 40
    return-void
.end method
