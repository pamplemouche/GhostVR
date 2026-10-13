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


# static fields
.field private static final ARG1_WRITE_BATCH:I = 0x2

.field private static final ARG1_WRITE_SINGLE:I = 0x1

.field private static final MSG_BOOTSTRAP_SESSION:I = 0x2

.field private static final MSG_NEW_SESSION:I = 0x3

.field private static final MSG_PING:I = 0x8

.field private static final MSG_USER_LOGOUT:I = 0x4

.field private static final MSG_VALIDATE_EVENT_SCHEMA:I = 0x5

.field private static final MSG_WAIT_FOR_PENDING_WRITES:I = 0x7

.field private static final MSG_WRITE:I = 0x1


# instance fields
.field private final mAsapDispatchLock:Ljava/lang/Object;

.field private mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDispatchAsapEvents:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/facebook/crudolib/params/ParamsCollectionMap;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mProcessorPriority:Lcom/facebook/analytics2/logger/ProcessorPriority;

.field final synthetic this$0:Lcom/facebook/analytics2/logger/EventProcessor;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/EventProcessor;Landroid/os/Looper;Lcom/facebook/analytics2/logger/BeginWritingBlock;Lcom/facebook/analytics2/logger/ProcessorPriority;)V
    .locals 0
    .param p2    # Landroid/os/Looper;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    .line 122
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mLock:Ljava/lang/Object;

    .line 107
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mAsapDispatchLock:Ljava/lang/Object;

    .line 123
    iput-object p3, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    .line 124
    iput-object p4, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mProcessorPriority:Lcom/facebook/analytics2/logger/ProcessorPriority;

    return-void
.end method

.method private doBatchWrite(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V
    .locals 3

    const-string v0, "doWrites"

    .line 234
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 236
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->finishBatch(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V

    const/4 v0, 0x0

    .line 238
    :goto_0
    iget v1, p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    if-ge v0, v1, :cond_1

    .line 239
    iget-object v1, p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 241
    invoke-direct {p0, v1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->postWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "writeToDisk"

    .line 245
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    :try_start_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$200(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget v2, p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doWrites([Lcom/facebook/crudolib/params/ParamsCollection;I)V
    :try_end_1
    .catch Lcom/facebook/analytics2/logger/CrossProcessBatchLockState$FailedFileCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->recycle()V

    .line 260
    :goto_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 251
    :catch_0
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->initInProcessBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->eventDataCollection:[Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget v2, p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->range:I

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doWrites([Lcom/facebook/crudolib/params/ParamsCollection;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    :try_start_4
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 263
    :goto_2
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void

    :catch_1
    move-exception v0

    .line 256
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    :goto_3
    :try_start_6
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->recycle()V

    .line 260
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 263
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw p1
.end method

.method private doBootstrapNewSession(Lcom/facebook/analytics2/logger/SessionDelegate;)V
    .locals 1

    const-string v0, "doBootstrapNewSession"

    .line 311
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$400(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventProcessorManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/SessionDelegate;->getOrBootstrapBatchSession(Lcom/facebook/analytics2/logger/EventProcessorManager;)Lcom/facebook/analytics2/logger/BatchSession;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    .line 314
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->initFileBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doBootstrapSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    .line 318
    iget-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {p1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$500(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {p1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$500(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doBootstrapSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_0
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw p1
.end method

.method private doSingleWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 2

    const-string v0, "doWrite"

    .line 268
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 270
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->postWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    const-string v0, "writeToDisk"

    .line 272
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    :try_start_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$200(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doWrite(Lcom/facebook/crudolib/params/ParamsCollection;)V
    :try_end_1
    .catch Lcom/facebook/analytics2/logger/CrossProcessBatchLockState$FailedFileCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :try_start_2
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 285
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 277
    :catch_0
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->initInProcessBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doWrite(Lcom/facebook/crudolib/params/ParamsCollection;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    :try_start_4
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 288
    :goto_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void

    :catch_1
    move-exception v0

    .line 281
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 284
    :goto_2
    :try_start_6
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 285
    invoke-virtual {p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->release()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 288
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw p1
.end method

.method private doStartNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    .locals 1

    const-string v0, "doStartNewSession"

    .line 327
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 329
    :try_start_0
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    .line 330
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->initFileBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doStartNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    .line 332
    iget-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {p1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$500(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {p1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$500(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {p1, v0}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doStartNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_0
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw p1
.end method

.method private doUserLogout(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "doUserLogout"

    .line 341
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 343
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->initFileBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doUserLogout(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$500(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$500(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doUserLogout(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :cond_0
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw p1
.end method

.method private doValidateEventSchema(Lcom/facebook/analytics2/logger/SchemaValidationParams;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$100(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$100(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/SchemaValidationParams;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/SchemaValidationParams;->getEventExtras()Ljava/util/Map;

    move-result-object p1

    .line 208
    invoke-interface {v0, v1, p1}, Lcom/facebook/analytics2/logger/Analytics2EventSchemaValidationManager;->validateEventSchema(Ljava/lang/String;Ljava/util/Map;)Z

    :cond_0
    return-void
.end method

.method private doWaitForPendingWrites(Landroid/os/ConditionVariable;)V
    .locals 0

    .line 355
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private doWaitForWriteBlockRelease()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    if-eqz v0, :cond_0

    const-string v0, "doWaitForWriteBlockRelease"

    .line 215
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBeginWritingBlock:Lcom/facebook/analytics2/logger/BeginWritingBlock;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mProcessorPriority:Lcom/facebook/analytics2/logger/ProcessorPriority;

    invoke-interface {v0, v1}, Lcom/facebook/analytics2/logger/BeginWritingBlock;->blockUntilWritable(Lcom/facebook/analytics2/logger/ProcessorPriority;)V

    .line 217
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    :cond_0
    return-void
.end method

.method private doWrite(Landroid/os/Message;)V
    .locals 2

    .line 222
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 228
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doSingleWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doBatchWrite(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V

    :goto_0
    return-void
.end method

.method private executeAsapDispatch()Z
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$000(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getEnableAnalyticsBatching()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mAsapDispatchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mDispatchAsapEvents:Ljava/util/Stack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mDispatchAsapEvents:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mDispatchAsapEvents:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, "handleAsapMessage"

    .line 190
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 193
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doWaitForWriteBlockRelease()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 199
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doSingleWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v0

    .line 184
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    .line 188
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private finishBatch()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$000(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getEnableAnalyticsBatchingIfInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 476
    :try_start_0
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 477
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private finishBatch(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    invoke-static {p1}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->access$800(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)V

    .line 413
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 414
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 416
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private initFileBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$200(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$600(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->createNewFileStoreManager()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$202(Lcom/facebook/analytics2/logger/EventProcessor;Lcom/facebook/analytics2/logger/EventBatchStoreManager;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$200(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    return-object v0
.end method

.method private initInProcessBatchStoreManagerIfNeeded()Lcom/facebook/analytics2/logger/EventBatchStoreManager;
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$500(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    .line 368
    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$600(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/EventBatchStoreManagerFactory;->createNewInMemoryEventManager()Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v1

    .line 367
    invoke-static {v0, v1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$502(Lcom/facebook/analytics2/logger/EventProcessor;Lcom/facebook/analytics2/logger/EventBatchStoreManager;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    .line 369
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$500(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mBatchSession:Lcom/facebook/analytics2/logger/BatchSession;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventBatchStoreManager;->doBootstrapSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$500(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventBatchStoreManager;

    move-result-object v0

    return-object v0
.end method

.method private postWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$300(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "eventListener"

    .line 297
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$300(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventListener;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/analytics2/logger/EventListenerForDebugOnly;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$300(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventListener;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/EventListenerForDebugOnly;

    .line 301
    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/EventListenerForDebugOnly;->onEventReceivedWithParamsCollectionMap(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0

    .line 303
    :cond_1
    iget-object p1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {p1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$300(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/analytics2/logger/EventListener;->onEventReceived()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :goto_0
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw p1
.end method

.method private sendBatchWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 5

    .line 393
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->access$700(Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 396
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    .line 397
    invoke-static {v1}, Lcom/facebook/analytics2/logger/EventProcessor;->access$000(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getAnalyticsBatchSize()I

    move-result v1

    invoke-static {v1}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->getInstance(I)Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    const/4 v1, 0x1

    .line 401
    :goto_1
    iget-object v4, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    invoke-virtual {v4, p1}, Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;->addEvent(Lcom/facebook/crudolib/params/ParamsCollectionMap;)Z

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    .line 404
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mCurrentAnalyticsBatch:Lcom/facebook/analytics2/logger/EventProcessor$AnalyticsBatchInfo;

    .line 405
    invoke-virtual {p0, v2, p1, v3, v1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 404
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private sendSingleWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 389
    invoke-virtual {p0, v0, v0, v1, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendWriteAtHeadBatch(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mAsapDispatchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mDispatchAsapEvents:Ljava/util/Stack;

    if-nez v1, :cond_0

    .line 434
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mDispatchAsapEvents:Ljava/util/Stack;

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->mDispatchAsapEvents:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x8

    .line 440
    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 438
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private sendWriteAtHeadNormal(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1

    const/4 v0, 0x1

    .line 428
    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 132
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->executeAsapDispatch()Z

    move-result v0

    const-string v1, "handleMessage"

    .line 134
    invoke-static {v1}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 136
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 166
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 160
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/ConditionVariable;

    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doWaitForPendingWrites(Landroid/os/ConditionVariable;)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/facebook/analytics2/logger/SchemaValidationParams;

    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doValidateEventSchema(Lcom/facebook/analytics2/logger/SchemaValidationParams;)V

    goto :goto_0

    .line 154
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doUserLogout(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/facebook/analytics2/logger/BatchSession;

    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doStartNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V

    goto :goto_0

    :pswitch_5
    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doWaitForWriteBlockRelease()V

    .line 148
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/facebook/analytics2/logger/SessionDelegate;

    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doBootstrapNewSession(Lcom/facebook/analytics2/logger/SessionDelegate;)V

    goto :goto_0

    :pswitch_6
    if-nez v0, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doWaitForWriteBlockRelease()V

    .line 142
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->doWrite(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    :pswitch_7
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void

    .line 166
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 169
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public sendBootstrapNewSession(Lcom/facebook/analytics2/logger/SessionDelegate;)V
    .locals 1

    .line 444
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->finishBatch()V

    const/4 v0, 0x2

    .line 446
    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendStartNewSession(Lcom/facebook/analytics2/logger/BatchSession;)V
    .locals 1

    .line 450
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->finishBatch()V

    const/4 v0, 0x3

    .line 452
    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUserLogout(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 456
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->finishBatch()V

    const/4 v0, 0x4

    .line 458
    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendValidateEventSchema(Lcom/facebook/analytics2/logger/SchemaValidationParams;)V
    .locals 1

    .line 375
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->finishBatch()V

    const/4 v0, 0x5

    .line 377
    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendWaitForPendingWrites(Landroid/os/ConditionVariable;)V
    .locals 1

    .line 462
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->finishBatch()V

    const/4 v0, 0x7

    .line 464
    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$000(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getEnableAnalyticsBatching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendBatchWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0

    .line 384
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendSingleWrite(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    :goto_0
    return-void
.end method

.method public sendWriteAtHead(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->this$0:Lcom/facebook/analytics2/logger/EventProcessor;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventProcessor;->access$000(Lcom/facebook/analytics2/logger/EventProcessor;)Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;->getEnableAnalyticsBatching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendWriteAtHeadBatch(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0

    .line 423
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/EventProcessor$WriterHandler;->sendWriteAtHeadNormal(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    :goto_0
    return-void
.end method
