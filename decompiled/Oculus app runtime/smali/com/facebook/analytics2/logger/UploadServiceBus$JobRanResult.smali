.class Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;
.super Ljava/lang/Object;
.source "UploadServiceBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadServiceBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JobRanResult"
.end annotation


# static fields
.field private static final EXTRA_HACK_ACTION_STARTED_WITH:Ljava/lang/String; = "hack_action"

.field private static final EXTRA_JOB_ID:Ljava/lang/String; = "job_id"

.field private static final EXTRA_NEWEST_FILES_UPLOADED:Ljava/lang/String; = "newest_files_uploaded"

.field private static final EXTRA_SUCCESSFULLY_UPLOADED_PROCESSES:Ljava/lang/String; = "successful_processes"

.field private static final EXTRA_WILL_RETRY_LATER:Ljava/lang/String; = "will_retry"


# instance fields
.field public final action:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final jobId:I

.field public final perProcessSuccessfulJobs:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final willRetry:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLandroid/support/v4/util/SimpleArrayMap;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 81
    iput p1, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->jobId:I

    .line 82
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    .line 83
    iput-boolean p3, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->willRetry:Z

    .line 84
    iput-object p4, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->perProcessSuccessfulJobs:Landroid/support/v4/util/SimpleArrayMap;

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "jobId = -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "job_id"

    const/4 v1, -0x1

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "hack_action"

    .line 90
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "will_retry"

    .line 91
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "successful_processes"

    .line 93
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "newest_files_uploaded"

    .line 94
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 92
    invoke-static {v3, p1}, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->combinePerProcessSuccessfulJobs(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object p1

    .line 88
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;-><init>(ILjava/lang/String;ZLandroid/support/v4/util/SimpleArrayMap;)V

    return-void
.end method

.method private static combinePerProcessSuccessfulJobs(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 104
    new-instance v1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v1, v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 106
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 108
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v3, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 107
    :goto_1
    invoke-virtual {v1, v4, v5}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 101
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processes has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; newestFilesUploaded has "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 7

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    iget v1, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->jobId:I

    const-string v2, "job_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    const-string v2, "hack_action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-boolean v1, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->willRetry:Z

    const-string v2, "will_retry"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->perProcessSuccessfulJobs:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 123
    iget-object v5, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->perProcessSuccessfulJobs:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, v4}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 124
    iget-object v6, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->perProcessSuccessfulJobs:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v6, v4}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_0

    .line 126
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 125
    :goto_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "successful_processes"

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "newest_files_uploaded"

    .line 129
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
