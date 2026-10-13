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


# instance fields
.field public final action:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final jobId:I

.field public final perProcessSuccessfulJobs:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final willRetry:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLandroidx/collection/SimpleArrayMap;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "jobId = -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iput p1, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->jobId:I

    .line 152
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    .line 153
    iput-boolean p3, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->willRetry:Z

    .line 154
    iput-object p4, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->perProcessSuccessfulJobs:Landroidx/collection/SimpleArrayMap;

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 158
    const-string v0, "job_id"

    const/4 v1, -0x1

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "hack_action"

    .line 160
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "will_retry"

    .line 161
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "successful_processes"

    .line 163
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "newest_files_uploaded"

    .line 164
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 162
    invoke-static {v3, v4}, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->combinePerProcessSuccessfulJobs(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroidx/collection/SimpleArrayMap;

    move-result-object v3

    .line 158
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;-><init>(ILjava/lang/String;ZLandroidx/collection/SimpleArrayMap;)V

    .line 165
    return-void
.end method

.method private static combinePerProcessSuccessfulJobs(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroidx/collection/SimpleArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v3, v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processes has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; newestFilesUploaded has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    new-instance v4, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v4, v3}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 175
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 176
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 177
    :goto_1
    invoke-virtual {v4, v5, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 180
    :cond_2
    return-object v4
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 184
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 185
    const-string v0, "job_id"

    iget v1, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->jobId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    const-string v0, "hack_action"

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "will_retry"

    iget-boolean v1, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->willRetry:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->perProcessSuccessfulJobs:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    .line 190
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 193
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->perProcessSuccessfulJobs:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 194
    iget-object v6, p0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->perProcessSuccessfulJobs:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v6, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_1
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 198
    :cond_1
    const-string v0, "successful_processes"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 199
    const-string v0, "newest_files_uploaded"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 201
    return-object v2
.end method
