.class public Lcom/facebook/analytics2/logger/UploadJobHandler;
.super Landroid/os/Handler;
.source "UploadJobHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;,
        Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;,
        Lcom/facebook/analytics2/logger/UploadJobHandler$FileUploadProcessorCallback;
    }
.end annotation


# static fields
.field private static final sDefaultPrivacyPolicy:Lcom/facebook/analytics2/logger/PrivacyPolicy;

.field private static final sParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;


# instance fields
.field private final mCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

.field private final mContext:Landroid/content/Context;

.field private mFileBatchPayloadIterator:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mHalted:Z

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInvocationParams:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

.field private final mPerProcessSuccessfulJobs:Landroidx/collection/SimpleArrayMap;
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

.field private mPrivacyControlledUploader:Lcom/facebook/analytics2/logger/PrivacyControlledUploader;

.field private final mProcessDirProgressCallback:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;

.field private mUploadProcessor:Lcom/facebook/analytics2/logger/UploadProcessor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mWillRetry:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->newDefaultInstance()Lcom/facebook/crudolib/params/ParamsCollectionPool;

    move-result-object v0

    sput-object v0, Lcom/facebook/analytics2/logger/UploadJobHandler;->sParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 64
    new-instance v0, Lcom/facebook/analytics2/logger/DefaultPrivacyPolicy;

    invoke-direct {v0}, Lcom/facebook/analytics2/logger/DefaultPrivacyPolicy;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/logger/UploadJobHandler;->sDefaultPrivacyPolicy:Lcom/facebook/analytics2/logger/PrivacyPolicy;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mPerProcessSuccessfulJobs:Landroidx/collection/SimpleArrayMap;

    .line 303
    new-instance v0, Lcom/facebook/analytics2/logger/UploadJobHandler$1;

    invoke-direct {v0, p0}, Lcom/facebook/analytics2/logger/UploadJobHandler$1;-><init>(Lcom/facebook/analytics2/logger/UploadJobHandler;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mProcessDirProgressCallback:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;

    .line 72
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 74
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mInvocationParams:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    .line 75
    iput-object p4, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/analytics2/logger/UploadJobHandler;)Landroidx/collection/SimpleArrayMap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mPerProcessSuccessfulJobs:Landroidx/collection/SimpleArrayMap;

    return-object v0
.end method

.method private doHalt()V
    .locals 3

    .prologue
    .line 216
    const-string v0, "UploadJobHandler"

    const-string v1, "Acknowledged upload halt for %d"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mInvocationParams:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    iget v2, v2, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mHalted:Z

    .line 218
    return-void
.end method

.method private doInit()V
    .locals 8

    .prologue
    .line 109
    const-string v0, "doInit"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mInvocationParams:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    iget-object v2, v0, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 113
    const-string v0, "UploadJobHandler"

    const-string v1, "Starting upload for jobId %d of %s"

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mInvocationParams:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    iget v3, v3, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobId:I

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mInvocationParams:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    iget-object v4, v4, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    .line 117
    invoke-virtual {v4}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getPriorityDir()Ljava/io/File;

    move-result-object v4

    .line 113
    invoke-static {v0, v1, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mInvocationParams:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobConfig:Lcom/facebook/analytics2/logger/UploadJobConfig;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getUploaderClass()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->resolveUploader(Ljava/lang/String;)Lcom/facebook/analytics2/logger/Uploader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 119
    if-nez v1, :cond_0

    .line 148
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 150
    :goto_0
    return-void

    .line 123
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getPrivacyPolicyClass()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/facebook/analytics2/logger/UploadJobHandler;->resolvePrivacyPolicy(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/analytics2/logger/PrivacyPolicy;

    move-result-object v3

    .line 125
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getSamplingPolicyUpdaterClass()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/facebook/analytics2/logger/UploadJobHandler;->resolveSamplingPolicyUpdater(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    move-result-object v5

    .line 127
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    iget-object v4, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/facebook/analytics2/logger/UploadJobHandler;->sParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    .line 129
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getMarauderTier()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v4, v6, v7, v5}, Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;-><init>(Landroid/content/Context;Lcom/facebook/crudolib/params/ParamsCollectionPool;Ljava/lang/String;Lcom/facebook/flexiblesampling/SamplingPolicyConfig;)V

    .line 133
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getPriorityDir()Ljava/io/File;

    move-result-object v4

    iget-object v6, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mProcessDirProgressCallback:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;

    .line 132
    invoke-static {v4, v0, v6}, Lcom/facebook/analytics2/logger/FileBatchPayloadIteratorFactory;->newInstance(Ljava/io/File;Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;)Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mFileBatchPayloadIterator:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;

    .line 134
    new-instance v0, Lcom/facebook/analytics2/logger/UploadProcessor;

    .line 136
    invoke-direct {p0, v1, v3}, Lcom/facebook/analytics2/logger/UploadJobHandler;->getPrivacyControlledUploader(Lcom/facebook/analytics2/logger/Uploader;Lcom/facebook/analytics2/logger/PrivacyPolicy;)Lcom/facebook/analytics2/logger/PrivacyControlledUploader;

    move-result-object v1

    .line 137
    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/UploadJobConfig;->getNetworkPriority()Lcom/facebook/analytics2/logger/UploadJob$Priority;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mFileBatchPayloadIterator:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;

    new-instance v4, Lcom/facebook/analytics2/logger/UploadJobHandler$FileUploadProcessorCallback;

    invoke-direct {v4, p0}, Lcom/facebook/analytics2/logger/UploadJobHandler$FileUploadProcessorCallback;-><init>(Lcom/facebook/analytics2/logger/UploadJobHandler;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/analytics2/logger/UploadProcessor;-><init>(Lcom/facebook/analytics2/logger/Uploader;Lcom/facebook/analytics2/logger/UploadJob$Priority;Ljava/util/Iterator;Lcom/facebook/analytics2/logger/UploadProcessorCallback;Lcom/facebook/flexiblesampling/SamplingPolicyConfig;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mUploadProcessor:Lcom/facebook/analytics2/logger/UploadProcessor;

    .line 142
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mFileBatchPayloadIterator:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    const-string v0, "UploadJobHandler"

    const-string v1, "Nothing to upload, why did you run me?"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->sendMaybeUploadNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method private doMaybeUploadNext()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "doMaybeUploadNext"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mUploadProcessor:Lcom/facebook/analytics2/logger/UploadProcessor;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadProcessor;

    .line 205
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadProcessor;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadProcessor;->uploadNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_0
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 213
    return-void

    .line 208
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->sendNoMoreInput()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method private doNoMoreInput()V
    .locals 4

    .prologue
    .line 221
    const-string v0, "doNoMoreInput"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 223
    :try_start_0
    const-string v1, "UploadJobHandler"

    const-string v2, "Upload for jobId %d successfully processed %d files"

    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mInvocationParams:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    iget v0, v0, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobId:I

    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mFileBatchPayloadIterator:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;

    .line 227
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->getIteratedFileCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 223
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->signalVoluntaryTermination(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 232
    return-void

    .line 230
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method private doUploadFailure(Ljava/io/IOException;)V
    .locals 5

    .prologue
    .line 235
    const-string v0, "doUploadFailure"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lcom/facebook/debug/log/BLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string v1, "UploadJobHandler"

    const-string v2, "Upload failed for %d (%d successful): %s"

    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mInvocationParams:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    iget v0, v0, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobId:I

    .line 241
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mFileBatchPayloadIterator:Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;

    .line 242
    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/FileBatchPayloadIterator;->getIteratedFileCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-static {v1, v2, v3, v0, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->signalVoluntaryTermination(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 250
    return-void

    .line 248
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method private exitStateMachine()V
    .locals 5

    .prologue
    .line 262
    const-string v0, "exitStateMachine"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mInvocationParams:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    iget v1, v1, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->jobId:I

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mInvocationParams:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    iget-object v2, v2, Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;->startServiceHackAction:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mWillRetry:Z

    iget-object v4, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mPerProcessSuccessfulJobs:Landroidx/collection/SimpleArrayMap;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/analytics2/logger/UploadServiceBus;->signalJobRan(Landroid/content/Context;ILjava/lang/String;ZLandroidx/collection/SimpleArrayMap;)V

    .line 271
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;->onExit()V

    .line 272
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 276
    return-void

    .line 274
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method private getPrivacyControlledUploader(Lcom/facebook/analytics2/logger/Uploader;Lcom/facebook/analytics2/logger/PrivacyPolicy;)Lcom/facebook/analytics2/logger/PrivacyControlledUploader;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mPrivacyControlledUploader:Lcom/facebook/analytics2/logger/PrivacyControlledUploader;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/facebook/analytics2/logger/PrivacyControlledUploader;

    invoke-direct {v0, p1, p2}, Lcom/facebook/analytics2/logger/PrivacyControlledUploader;-><init>(Lcom/facebook/analytics2/logger/Uploader;Lcom/facebook/analytics2/logger/PrivacyPolicy;)V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mPrivacyControlledUploader:Lcom/facebook/analytics2/logger/PrivacyControlledUploader;

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mPrivacyControlledUploader:Lcom/facebook/analytics2/logger/PrivacyControlledUploader;

    return-object v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mPrivacyControlledUploader:Lcom/facebook/analytics2/logger/PrivacyControlledUploader;

    invoke-virtual {v0, p2}, Lcom/facebook/analytics2/logger/PrivacyControlledUploader;->setPrivacyPolicy(Lcom/facebook/analytics2/logger/PrivacyPolicy;)V

    .line 158
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mPrivacyControlledUploader:Lcom/facebook/analytics2/logger/PrivacyControlledUploader;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/PrivacyControlledUploader;->setUploader(Lcom/facebook/analytics2/logger/Uploader;)V

    goto :goto_0
.end method

.method private static resolvePrivacyPolicy(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/analytics2/logger/PrivacyPolicy;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 195
    if-eqz p0, :cond_0

    .line 196
    invoke-static {p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedPrivacyPolicy(Ljava/lang/String;)Lcom/facebook/analytics2/logger/PrivacyPolicy;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/analytics2/logger/UploadJobHandler;->sDefaultPrivacyPolicy:Lcom/facebook/analytics2/logger/PrivacyPolicy;

    goto :goto_0
.end method

.method private static resolveSamplingPolicyUpdater(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 187
    if-eqz p0, :cond_0

    .line 188
    invoke-static {p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedSamplingPolicyConfig(Ljava/lang/String;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resolveUploader(Ljava/lang/String;)Lcom/facebook/analytics2/logger/Uploader;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/ContextConstructorHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/ContextConstructorHelper;->getProvidedUploader(Ljava/lang/String;)Lcom/facebook/analytics2/logger/Uploader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->terminateJobAndThrowWrappedException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->terminateJobAndThrowWrappedException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 170
    :catch_2
    move-exception v0

    .line 171
    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->terminateJobAndThrowWrappedException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 172
    :catch_3
    move-exception v0

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->terminateJobAndThrowWrappedException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private signalVoluntaryTermination(Z)V
    .locals 3

    .prologue
    .line 254
    const-string v0, "UploadJobHandler"

    const-string v1, "UploadJobHandler#signalVoluntaryTermination needsReschedule: %s"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    if-eqz p1, :cond_0

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mWillRetry:Z

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;->onVoluntaryCompletion(Z)V

    .line 259
    return-void
.end method

.method private terminateJobAndThrowWrappedException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->signalVoluntaryTermination(Z)V

    .line 180
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->exitStateMachine()V

    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler;->mHalted:Z

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "UploadJobHandler"

    const-string v1, "Ignoring msg type %d after MSG_HALT received"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 84
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->doInit()V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->doMaybeUploadNext()V

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->doHalt()V

    .line 93
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->exitStateMachine()V

    goto :goto_0

    .line 96
    :pswitch_3
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->doNoMoreInput()V

    .line 97
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->exitStateMachine()V

    goto :goto_0

    .line 100
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->doUploadFailure(Ljava/io/IOException;)V

    .line 101
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->exitStateMachine()V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public sendHalt()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 288
    return-void
.end method

.method public sendInit()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    return-void
.end method

.method public sendMaybeUploadNext()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    return-void
.end method

.method public sendNoMoreInput()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    return-void
.end method

.method public sendUploadFailure(Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/UploadJobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    return-void
.end method
