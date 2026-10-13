.class public Lcom/facebook/inject/DebugClassGraphBuilder;
.super Ljava/lang/Object;
.source "DebugClassGraphBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;,
        Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DEBUG_CLASS_GRAPH_BUILDER:Lcom/facebook/inject/DebugClassGraphBuilder;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private static final ENABLED_DI_GRAPH_PROP:Ljava/lang/String; = "fb4a.debug.digraph.enabled"

.field private static final INSTRUMENTATION_LOGGER:Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;

.field private static final IS_RUNNING_DI_GRAPH_PROP:Ljava/lang/String; = "fb4a.debug.digraph.running"

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mCompletedProviderCallTress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

.field private mIsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsRunningManualSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsRunningStateTransitionFlag:Z

.field private final mLock:Ljava/lang/Object;

.field private final mThreadToProviderCallTreeLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/facebook/inject/DebugClassGraphBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/inject/DebugClassGraphBuilder;->$assertionsDisabled:Z

    .line 45
    const-class v0, Lcom/facebook/inject/DebugClassGraphBuilder;

    sput-object v0, Lcom/facebook/inject/DebugClassGraphBuilder;->TAG:Ljava/lang/Class;

    .line 47
    new-instance v0, Lcom/facebook/inject/DebugClassGraphBuilder$1;

    invoke-direct {v0}, Lcom/facebook/inject/DebugClassGraphBuilder$1;-><init>()V

    sput-object v0, Lcom/facebook/inject/DebugClassGraphBuilder;->INSTRUMENTATION_LOGGER:Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;

    .line 217
    new-instance v0, Lcom/facebook/inject/DebugClassGraphBuilder;

    invoke-direct {v0}, Lcom/facebook/inject/DebugClassGraphBuilder;-><init>()V

    sput-object v0, Lcom/facebook/inject/DebugClassGraphBuilder;->DEBUG_CLASS_GRAPH_BUILDER:Lcom/facebook/inject/DebugClassGraphBuilder;

    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mLock:Ljava/lang/Object;

    .line 236
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mThreadToProviderCallTreeLookup:Ljava/util/Map;

    .line 237
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mCompletedProviderCallTress:Ljava/util/List;

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mIsRunningStateTransitionFlag:Z

    .line 240
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/inject/DebugClassGraphBuilder;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100()Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/inject/DebugClassGraphBuilder;->INSTRUMENTATION_LOGGER:Lcom/facebook/common/instrumentation/InstrumentationHelper$InstrumentationLogger;

    return-object v0
.end method

.method private addProviderCallToThreadStack(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;)V
    .locals 6
    .param p1, "providerCall"    # Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;

    .prologue
    .line 316
    iget-object v4, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 317
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/inject/DebugClassGraphBuilder;->getThreadId()J

    move-result-wide v2

    .line 319
    .local v2, "threadId":J
    iget-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mThreadToProviderCallTreeLookup:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;

    .line 320
    .local v0, "providerCallTreeInfo":Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;
    if-nez v0, :cond_0

    .line 321
    invoke-static {p1}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;->constructFromThisCallSite(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;)Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mThreadToProviderCallTreeLookup:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_0
    iget-object v1, v0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;->providerCallStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 326
    monitor-exit v4

    .line 327
    return-void

    .line 326
    .end local v0    # "providerCallTreeInfo":Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;
    .end local v2    # "threadId":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkIfWeShouldSerializeCallGraph()V
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/facebook/inject/DebugClassGraphBuilder;->isCurrentlyRunning()Z

    move-result v0

    .line 302
    .local v0, "isEnabled":Z
    invoke-direct {p0, v0}, Lcom/facebook/inject/DebugClassGraphBuilder;->checkIfWeShouldSerializeCallGraph(Z)V

    .line 303
    return-void
.end method

.method private checkIfWeShouldSerializeCallGraph(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 306
    iget-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mThreadToProviderCallTreeLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    monitor-exit v1

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-direct {p0}, Lcom/facebook/inject/DebugClassGraphBuilder;->saveJsonCallGraph()V

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private checkIsEnabledAndDoActionsIfChanged()Z
    .locals 3

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/facebook/inject/DebugClassGraphBuilder;->isCurrentlyRunning()Z

    move-result v0

    .line 358
    .local v0, "isRunningNow":Z
    iget-boolean v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mIsRunningStateTransitionFlag:Z

    if-ne v1, v0, :cond_0

    .line 359
    iget-boolean v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mIsRunningStateTransitionFlag:Z

    .line 382
    .end local v0    # "isRunningNow":Z
    :goto_0
    return v0

    .line 362
    .restart local v0    # "isRunningNow":Z
    :cond_0
    iput-boolean v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mIsRunningStateTransitionFlag:Z

    .line 363
    iget-boolean v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mIsRunningStateTransitionFlag:Z

    if-eqz v1, :cond_1

    .line 364
    sget-object v1, Lcom/facebook/inject/DebugClassGraphBuilder;->TAG:Ljava/lang/Class;

    const-string v2, "DI call graph collection was turned on. Deleting previous saved call graph info"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/facebook/inject/DebugClassGraphBuilder;->deletePreviousJsonCallGraph()V

    goto :goto_0

    .line 368
    :cond_1
    sget-object v1, Lcom/facebook/inject/DebugClassGraphBuilder;->TAG:Ljava/lang/Class;

    const-string v2, "DI call graph collection was turned off. Waiting for in progress DI Call graphs to complete before saving"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

    invoke-virtual {v1}, Lcom/facebook/common/instrumentation/InstrumentationInfo;->setIsDoneCollectingInformation()V

    .line 376
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

    .line 379
    :cond_2
    invoke-direct {p0, v0}, Lcom/facebook/inject/DebugClassGraphBuilder;->checkIfWeShouldSerializeCallGraph(Z)V

    goto :goto_0
.end method

.method private deletePreviousJsonCallGraph()V
    .locals 3

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/facebook/inject/DebugClassGraphBuilder;->getCallGraphFile()Ljava/io/File;

    move-result-object v0

    .line 458
    .local v0, "callGraphFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    sget-object v1, Lcom/facebook/inject/DebugClassGraphBuilder;->TAG:Ljava/lang/Class;

    const-string v2, "Could not delete DI call graph to the sdcard"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCallGraphFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 468
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "DIGraph.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getThreadId()J
    .locals 2

    .prologue
    .line 351
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method private isCurrentlyRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 387
    iget-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mIsRunningManualSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_1

    .line 388
    iget-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mIsRunningManualSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 406
    :cond_0
    :goto_0
    return v0

    .line 391
    :cond_1
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mIsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v1, :cond_2

    .line 399
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v2, "fb4a.debug.digraph.enabled"

    invoke-direct {p0, v2}, Lcom/facebook/inject/DebugClassGraphBuilder;->isPropertySet(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mIsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 402
    :cond_2
    iget-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mIsEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const-string v0, "fb4a.debug.digraph.running"

    invoke-direct {p0, v0}, Lcom/facebook/inject/DebugClassGraphBuilder;->isPropertySet(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isPropertySet(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 414
    :try_start_0
    invoke-static {p1}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "isEnabledStr":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 422
    .end local v1    # "isEnabledStr":Ljava/lang/String;
    :goto_0
    return v2

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/facebook/inject/DebugClassGraphBuilder;->TAG:Ljava/lang/Class;

    const-string v3, "Cannot call get for key %s from SystemProperties"

    .line 419
    invoke-static {v3, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private popProviderCallOffThreadStackAndPeekAtHead(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;)Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;
    .locals 7
    .param p1, "providerCall"    # Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;

    .prologue
    .line 330
    iget-object v5, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 331
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/inject/DebugClassGraphBuilder;->getThreadId()J

    move-result-wide v2

    .line 332
    .local v2, "threadId":J
    iget-object v4, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mThreadToProviderCallTreeLookup:Ljava/util/Map;

    .line 333
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;

    .line 335
    .local v1, "providerCallTreeInfo":Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;
    iget-object v4, v1, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;->providerCallStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;

    .line 336
    .local v0, "providerCallFromStack":Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;
    sget-boolean v4, Lcom/facebook/inject/DebugClassGraphBuilder;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-eq v0, p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 347
    .end local v0    # "providerCallFromStack":Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;
    .end local v1    # "providerCallTreeInfo":Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;
    .end local v2    # "threadId":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 340
    .restart local v0    # "providerCallFromStack":Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;
    .restart local v1    # "providerCallTreeInfo":Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;
    .restart local v2    # "threadId":J
    :cond_0
    :try_start_1
    iget-object v4, v1, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;->providerCallStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    iget-object v4, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mThreadToProviderCallTreeLookup:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v4, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mCompletedProviderCallTress:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    const/4 v4, 0x0

    monitor-exit v5

    .line 346
    :goto_0
    return-object v4

    :cond_1
    iget-object v4, v1, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;->providerCallStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private saveJsonCallGraph()V
    .locals 7

    .prologue
    .line 427
    sget-object v4, Lcom/facebook/inject/DebugClassGraphBuilder;->TAG:Ljava/lang/Class;

    const-string v5, "Start streaming call graph to disk."

    invoke-static {v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 430
    :try_start_0
    new-instance v3, Lorg/json/JSONStringer;

    invoke-direct {v3}, Lorg/json/JSONStringer;-><init>()V

    .line 431
    .local v3, "jsonStringer":Lorg/json/JSONStringer;
    invoke-virtual {v3}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 432
    const-string v4, "callTrees"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 433
    invoke-virtual {v3}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 434
    iget-object v5, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 435
    :try_start_1
    iget-object v4, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mCompletedProviderCallTress:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;

    .line 436
    .local v0, "callTreeInfo":Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;
    invoke-virtual {v0, v3}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;->SaveCallTreeInJson(Lorg/json/JSONStringer;)V

    goto :goto_0

    .line 439
    .end local v0    # "callTreeInfo":Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCallTreeInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 451
    .end local v3    # "jsonStringer":Lorg/json/JSONStringer;
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v4, Lcom/facebook/inject/DebugClassGraphBuilder;->TAG:Ljava/lang/Class;

    const-string v5, "Could not write DI call graph to the sdcard"

    invoke-static {v4, v5, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 438
    .restart local v3    # "jsonStringer":Lorg/json/JSONStringer;
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mCompletedProviderCallTress:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 439
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 440
    :try_start_4
    invoke-virtual {v3}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 441
    invoke-virtual {v3}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 443
    sget-object v4, Lcom/facebook/inject/DebugClassGraphBuilder;->TAG:Ljava/lang/Class;

    const-string v5, "Done saving DI call graph to disk."

    invoke-static {v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 445
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lcom/facebook/inject/DebugClassGraphBuilder;->getCallGraphFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 447
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v3}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 449
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    .line 451
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v3    # "jsonStringer":Lorg/json/JSONStringer;
    :catch_1
    move-exception v1

    goto :goto_1

    .line 449
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "jsonStringer":Lorg/json/JSONStringer;
    :catchall_1
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method private setIsRunning(Z)V
    .locals 3
    .param p1, "isRunning"    # Z

    .prologue
    .line 284
    sget-object v1, Lcom/facebook/inject/DebugClassGraphBuilder;->TAG:Ljava/lang/Class;

    const-string v2, "Manually turned %s dependency call graph collection."

    if-eqz p1, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mIsRunningManualSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 287
    invoke-direct {p0}, Lcom/facebook/inject/DebugClassGraphBuilder;->checkIsEnabledAndDoActionsIfChanged()Z

    .line 288
    return-void

    .line 284
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method public static startDebugGraphCollection()V
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/facebook/inject/DebugClassGraphBuilder;->DEBUG_CLASS_GRAPH_BUILDER:Lcom/facebook/inject/DebugClassGraphBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/facebook/inject/DebugClassGraphBuilder;->setIsRunning(Z)V

    .line 293
    return-void
.end method

.method public static stopDebugGraphCollection()V
    .locals 2

    .prologue
    .line 297
    sget-object v0, Lcom/facebook/inject/DebugClassGraphBuilder;->DEBUG_CLASS_GRAPH_BUILDER:Lcom/facebook/inject/DebugClassGraphBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/inject/DebugClassGraphBuilder;->setIsRunning(Z)V

    .line 298
    return-void
.end method


# virtual methods
.method startProviderCall(Lcom/google/inject/Key;)Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)",
            "Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 245
    .local v4, "startProviderTime":J
    invoke-direct {p0}, Lcom/facebook/inject/DebugClassGraphBuilder;->checkIsEnabledAndDoActionsIfChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

    if-nez v1, :cond_1

    .line 250
    new-instance v1, Lcom/facebook/common/instrumentation/InstrumentationInfo;

    invoke-direct {v1}, Lcom/facebook/common/instrumentation/InstrumentationInfo;-><init>()V

    iput-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

    .line 253
    :cond_1
    new-instance v0, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;

    iget-object v1, p0, Lcom/facebook/inject/DebugClassGraphBuilder;->mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

    invoke-direct {v0, p1, v1}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;-><init>(Lcom/google/inject/Key;Lcom/facebook/common/instrumentation/InstrumentationInfo;)V

    .line 254
    .local v0, "providerCall":Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;
    invoke-direct {p0, v0}, Lcom/facebook/inject/DebugClassGraphBuilder;->addProviderCallToThreadStack(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;)V

    .line 256
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 258
    .local v2, "startProviderCallOverhead":J
    invoke-static {v0, v2, v3}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->access$200(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;J)V

    goto :goto_0
.end method

.method stopProviderCall(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;Ljava/lang/Object;)V
    .locals 8
    .param p1, "providerCall"    # Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;
    .param p2, "instance"    # Ljava/lang/Object;

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->access$300(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;Ljava/lang/Object;)V

    .line 270
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 272
    .local v4, "stopProviderTime":J
    invoke-direct {p0, p1}, Lcom/facebook/inject/DebugClassGraphBuilder;->popProviderCallOffThreadStackAndPeekAtHead(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;)Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;

    move-result-object v0

    .line 274
    .local v0, "parentProviderCall":Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;
    if-eqz v0, :cond_1

    .line 275
    invoke-static {v0, p1}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->access$400(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;)V

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/facebook/inject/DebugClassGraphBuilder;->checkIfWeShouldSerializeCallGraph()V

    .line 279
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 280
    .local v2, "stopProviderCallOverhead":J
    invoke-static {p1, v2, v3}, Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;->access$500(Lcom/facebook/inject/DebugClassGraphBuilder$ProviderCall;J)V

    goto :goto_0
.end method
