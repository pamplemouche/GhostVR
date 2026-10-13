.class Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;
.super Landroid/os/Handler;
.source "EventProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/EventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriterHandler"
.end annotation


# instance fields
.field private final mAsapDispatchLock:Ljava/lang/Object;

.field private mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDispatchAsapEvents:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/facebook/crudolib/params/ParamsCollectionMap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mProcessorPriority:Lcom/facebook/analytics2/logger/ProcessorPriority;

.field final synthetic this$0:Lcom/facebook/analytics2/logger/EventProcessor;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/EventProcessor;Landroid/os/Looper;Lcom/facebook/analytics2/logger/BeginWritingBlock;Lcom/facebook/analytics2/logger/ProcessorPriority;)V
    .locals 1
    .param p3    # Lcom/facebook/analytics2/logger/BeginWritingBlock;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 122
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    .line 123
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mLock:Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mAsapDispatchLock:Ljava/lang/Object;

    .line 124
    iput-object p3, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    .line 125
    iput-object p4, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mProcessorPriority:Lcom/facebook/analytics2/logger/ProcessorPriority;

    .line 126
    return-void
.end method

.method private doBatchWrite(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V
    .locals 3

    .prologue
    .line 235
    const-string v0, "doWrites"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 237
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->finishBatch(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V

    .line 239
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    if-ge v0, v1, :cond_1

    .line 240
    iget-object v1, p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    aget-object v1, v1, v0

    .line 241
    if-eqz v1, :cond_0

    .line 242
    invoke-direct {p0, v1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->postWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    const-string v0, "writeToDisk"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->initFileBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget v2, p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    .line 249
    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doWrites([Lcom/facebook/crudolib/params/ParamsCollection;I)V
    :try_end_1
    .catch Lcom/facebook/analytics2/logger/CrossProcessBatchLockState$FailedFileCreationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->recycle()V

    .line 261
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    :goto_1
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 266
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 252
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->initInProcessBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget v2, p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doWrites([Lcom/facebook/crudolib/params/ParamsCollection;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    :try_start_4
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->recycle()V

    .line 261
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 264
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0

    .line 254
    :catch_1
    move-exception v0

    .line 257
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 260
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->recycle()V

    .line 261
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 250
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private doBootstrapNewSession(Lcom/facebook/analytics2/logger/SessionDelegate;)V
    .locals 2

    .prologue
    .line 307
    const-string v0, "doBootstrapNewSession"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$300(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventProcessorManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/SessionDelegate;->getOrBootstrapBatchSession(Lcom/facebook/analytics2/logger/EventProcessorManager;)Lcom/facebook/analytics2/logger/BatchSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    .line 310
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->initFileBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doBootstrapSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    .line 314
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$400(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$400(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doBootstrapSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_0
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 320
    return-void

    .line 318
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method private doSingleWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 2

    .prologue
    .line 269
    const-string v0, "doWrite"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 271
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->postWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 273
    const-string v0, "writeToDisk"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->initFileBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doWrite(Lcom/facebook/crudolib/params/ParamsCollection;)V
    :try_end_1
    .catch Lcom/facebook/analytics2/logger/CrossProcessBatchLockState$FailedFileCreationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    :try_start_2
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 286
    invoke-virtual {p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    :goto_0
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 291
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 278
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->initInProcessBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doWrite(Lcom/facebook/crudolib/params/ParamsCollection;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 285
    :try_start_4
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 286
    invoke-virtual {p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0

    .line 279
    :catch_1
    move-exception v0

    .line 282
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 285
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 286
    invoke-virtual {p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 276
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private doStartNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    .locals 2

    .prologue
    .line 323
    const-string v0, "doStartNewSession"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 325
    :try_start_0
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    .line 326
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->initFileBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doStartNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    .line 328
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$400(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$400(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doStartNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_0
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 334
    return-void

    .line 332
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method private doUserLogout(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 337
    const-string v0, "doUserLogout"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 339
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->initFileBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doUserLogout(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$400(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$400(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doUserLogout(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_0
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 348
    return-void

    .line 346
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method private doValidateEventSchema(Lcom/facebook/analytics2/logger/SchemaValidationParams;)V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$100(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$100(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/SchemaValidationParams;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/SchemaValidationParams;->getEventExtras()Ljava/util/Map;

    move-result-object v2

    .line 209
    invoke-interface {v0, v1, v2}, Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;->validateEventSchema(Ljava/lang/String;Ljava/util/Map;)Z

    .line 212
    :cond_0
    return-void
.end method

.method private doWaitForPendingWrites(Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 351
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 352
    return-void
.end method

.method private doWaitForWriteBlockRelease()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "doWaitForWriteBlockRelease"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mProcessorPriority:Lcom/facebook/analytics2/logger/ProcessorPriority;

    invoke-interface {v0, v1}, Lcom/facebook/analytics2/logger/BeginWritingBlock;->blockUntilWritable(Lcom/facebook/analytics2/logger/ProcessorPriority;)V

    .line 218
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 220
    :cond_0
    return-void
.end method

.method private doWrite(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 223
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 229
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doSingleWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 232
    :goto_0
    return-void

    .line 225
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doBatchWrite(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private executeAsapDispatch()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 176
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$000(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getEnableAnalyticsBatching()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 183
    :goto_1
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mAsapDispatchLock:Ljava/lang/Object;

    monitor-enter v2

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mDispatchAsapEvents:Ljava/util/Stack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mDispatchAsapEvents:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    :cond_1
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mDispatchAsapEvents:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 189
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    const-string v2, "handleAsapMessage"

    invoke-static {v2}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 193
    if-nez v1, :cond_3

    .line 194
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doWaitForWriteBlockRelease()V

    .line 195
    const/4 v1, 0x1

    .line 200
    :cond_3
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doSingleWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_1

    .line 189
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 202
    :catchall_1
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method private finishBatch()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$000(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getEnableAnalyticsBatchingIfInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 474
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private finishBatch(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V
    .locals 2

    .prologue
    .line 408
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_0
    invoke-static {p1}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->access$800(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V

    .line 410
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    if-ne v0, p1, :cond_0

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 413
    :cond_0
    monitor-exit v1

    .line 414
    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initFileBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$500(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$600(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->createNewFileStoreManager()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$502(Lcom/facebook/analytics2/logger/EventProcessor;Lcom/facebook/analytics2/logger/EventBatchStoreManager;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$500(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    return-object v0
.end method

.method private initInProcessBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$400(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    const-string v1, "Null Batch Session"

    invoke-static {v0, v1}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    .line 365
    invoke-static {v1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$600(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->createNewInMemoryEventManager()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v1

    .line 364
    invoke-static {v0, v1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$402(Lcom/facebook/analytics2/logger/EventProcessor;Lcom/facebook/analytics2/logger/EventBatchStoreManager;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    .line 366
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$400(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doBootstrapSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$400(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    return-object v0
.end method

.method private postWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$200(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 298
    :cond_0
    const-string v0, "eventListener"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$200(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventListener;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/analytics2/logger/EventListenerUtil;->onEventReceived(Lcom/facebook/analytics2/logger/EventListener;Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0
.end method

.method private sendBatchWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 390
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 392
    :try_start_0
    iget-object v3, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    invoke-static {v3}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->access$700(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    .line 394
    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$000(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getAnalyticsBatchSize()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->getInstance(I)Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    move v0, v1

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    invoke-virtual {v1, p1}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->addEvent(Lcom/facebook/crudolib/params/ParamsCollectionMap;)Z

    .line 400
    if-eqz v0, :cond_2

    .line 401
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 402
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 401
    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    :cond_2
    monitor-exit v2

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendSingleWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    .line 387
    return-void
.end method

.method private sendWriteAtHeadBatch(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 2

    .prologue
    .line 429
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mAsapDispatchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mDispatchAsapEvents:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mDispatchAsapEvents:Ljava/util/Stack;

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mDispatchAsapEvents:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 438
    return-void

    .line 435
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendWriteAtHeadNormal(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 426
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->executeAsapDispatch()Z

    move-result v0

    .line 135
    const-string v1, "handleMessage"

    invoke-static {v1}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 137
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 167
    :pswitch_0
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    throw v0

    .line 139
    :pswitch_1
    if-nez v0, :cond_0

    .line 140
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doWaitForWriteBlockRelease()V

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doWrite(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :goto_0
    :pswitch_2
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 172
    return-void

    .line 146
    :pswitch_3
    if-nez v0, :cond_1

    .line 147
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doWaitForWriteBlockRelease()V

    .line 149
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/analytics2/logger/SessionDelegate;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doBootstrapNewSession(Lcom/facebook/analytics2/logger/SessionDelegate;)V

    goto :goto_0

    .line 152
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/analytics2/logger/BatchSession;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doStartNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    goto :goto_0

    .line 155
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doUserLogout(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/analytics2/logger/SchemaValidationParams;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doValidateEventSchema(Lcom/facebook/analytics2/logger/SchemaValidationParams;)V

    goto :goto_0

    .line 161
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/ConditionVariable;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doWaitForPendingWrites(Landroid/os/ConditionVariable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method public sendBootstrapNewSession(Lcom/facebook/analytics2/logger/SessionDelegate;)V
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->finishBatch()V

    .line 443
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    return-void
.end method

.method public sendStartNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->finishBatch()V

    .line 449
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    .line 450
    return-void
.end method

.method public sendUserLogout(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->finishBatch()V

    .line 455
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    .line 456
    return-void
.end method

.method public sendValidateEventSchema(Lcom/facebook/analytics2/logger/SchemaValidationParams;)V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->finishBatch()V

    .line 374
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    .line 375
    return-void
.end method

.method public sendWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$000(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getEnableAnalyticsBatching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendBatchWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendSingleWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0
.end method

.method public sendWriteAtHead(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$000(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getEnableAnalyticsBatching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendWriteAtHeadBatch(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendWriteAtHeadNormal(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0
.end method
