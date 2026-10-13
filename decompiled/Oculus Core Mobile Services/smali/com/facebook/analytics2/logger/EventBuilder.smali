.class public Lcom/facebook/analytics2/logger/EventBuilder;
.super Ljava/lang/Object;
.source "EventBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field mAppBackgrounded:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventSize:J

.field private volatile mExternallyMutable:Z

.field private mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mInjectAtHeadOfQueue:Z

.field mIsSampledHasBeenCalled:Z

.field mLoggedWallTimeMillis:J

.field mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mModuleName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mNetworkType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mProcessName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mShouldDeliverImmediately:Z

.field private mTag:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggedWallTimeMillis:J

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mTag:J

    return-void
.end method

.method private autoAssignDefaults()V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mProcessName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;

    .line 393
    invoke-interface {v0}, Lcom/facebook/analytics2/logger/ProcessPolicy;->shouldAddProcessName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lcom/facebook/crudolib/processname/ProcessNameHelper;->getMyFullProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mProcessName:Ljava/lang/String;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mAppBackgrounded:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/AppBackgroundedProvider;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mAppBackgrounded:Ljava/lang/Boolean;

    .line 401
    :cond_1
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggedWallTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggedWallTimeMillis:J

    .line 404
    :cond_2
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/NetworkTypeProvider;->get()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mNetworkType:Ljava/lang/String;

    .line 407
    :cond_3
    return-void
.end method

.method private ejectBaseParameters()Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 367
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-nez v1, :cond_0

    .line 377
    :goto_0
    return-object v0

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 371
    invoke-virtual {v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->markImmutable()V

    .line 372
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->markImmutable()V

    .line 375
    :cond_1
    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 376
    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-object v0, v1

    .line 377
    goto :goto_0
.end method

.method private fillBaseParameters()V
    .locals 6

    .prologue
    .line 411
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    const-string v1, "process"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mNetworkType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    const-string v1, "radio_type"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v1, "log_type"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    invoke-virtual {v2}, Lcom/facebook/analytics2/logger/EventLogType;->getProtocolValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mAppBackgrounded:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 422
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v2, "bg"

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mAppBackgrounded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v1, "time"

    iget-wide v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggedWallTimeMillis:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    .line 427
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mModuleName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 428
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v1, "module"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_4
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v1, "name"

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v1, "tags"

    iget-wide v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    .line 434
    return-void

    .line 422
    :cond_5
    const-string v0, "false"

    goto :goto_0
.end method

.method private getEventPayloadMapForInternalUse()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 310
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getKey(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v3, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-object v1
.end method

.method private declared-synchronized incrementEstimatedEventSize(Ljava/lang/Boolean;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 245
    monitor-enter p0

    if-nez p1, :cond_0

    .line 249
    :goto_0
    monitor-exit p0

    return-void

    .line 248
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized incrementEstimatedEventSize(Ljava/lang/Number;)V
    .locals 4
    .param p1    # Ljava/lang/Number;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 238
    monitor-enter p0

    if-nez p1, :cond_0

    .line 242
    :goto_0
    monitor-exit p0

    return-void

    .line 241
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized incrementEstimatedEventSize(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 231
    monitor-enter p0

    if-nez p1, :cond_0

    .line 235
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private markImmutable()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->markImmutable()V

    .line 151
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->markImmutable()V

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExternallyMutable:Z

    .line 155
    return-void
.end method

.method private markMutable()V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfExternallyMutable()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExternallyMutable:Z

    .line 146
    return-void
.end method

.method private selectEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mShouldDeliverImmediately:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getHighPriPriEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getNormalPriEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    goto :goto_0
.end method

.method private throwIfNotReady()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotSampledOrNotTested()V

    .line 171
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotExternallyMutable()V

    .line 172
    return-void
.end method

.method private throwIfNotSampledOrNotTested()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mIsSampledHasBeenCalled:Z

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isSampled was not invoked, how can you have known?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    return-void
.end method

.method private verifyEventSize()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 343
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/Analytics2Logger;->getEventMaxSize()J

    move-result-wide v0

    .line 344
    :goto_0
    iget-wide v4, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    move v0, v2

    .line 355
    :goto_1
    return v0

    .line 343
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 347
    :cond_1
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 348
    const-string v4, "EventBuilder"

    const-string v5, "Event %s is %d bytes, exceeding limit %d. It is logged in Debug build but not in prod."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    aput-object v7, v6, v3

    iget-wide v8, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J

    .line 352
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v3, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    .line 350
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v4, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 353
    goto :goto_1

    :cond_2
    move v0, v3

    .line 355
    goto :goto_1
.end method


# virtual methods
.method acquire(Lcom/facebook/analytics2/logger/Analytics2Logger;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/analytics2/logger/EventLogType;Z)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 106
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    .line 107
    iput-object p2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mModuleName:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    .line 110
    iput-boolean p5, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mShouldDeliverImmediately:Z

    .line 111
    iget-object v0, p1, Lcom/facebook/analytics2/logger/Analytics2Logger;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 112
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-static {}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->getInstance()Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->setEncoder(Lcom/facebook/crudolib/params/ParamsEncoder;)V

    .line 113
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->markMutable()V

    .line 114
    return-void
.end method

.method public addBaseParameterForInternalUseOnly(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 1
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 224
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 225
    invoke-direct {p0, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->incrementEstimatedEventSize(Ljava/lang/Boolean;)V

    .line 226
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/Number;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 1
    .param p2    # Ljava/lang/Number;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 217
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    .line 218
    invoke-direct {p0, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->incrementEstimatedEventSize(Ljava/lang/Number;)V

    .line 219
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 210
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->incrementEstimatedEventSize(Ljava/lang/String;)V

    .line 212
    return-object p0
.end method

.method public getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .locals 3

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 294
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 297
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/EventLogType;->getExtraJsonKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    return-object v0
.end method

.method public isSampled()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mIsSampledHasBeenCalled:Z

    .line 76
    return v0
.end method

.method public logAndRelease()V
    .locals 3

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 320
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->autoAssignDefaults()V

    .line 321
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->selectEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventProcessor;->schemaExistsForEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->getEventPayloadMapForInternalUse()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics2/logger/EventProcessor;->validateEventSchema(Ljava/util/Map;Ljava/lang/String;)V

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->fillBaseParameters()V

    .line 327
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->markImmutable()V

    .line 328
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->ejectBaseParameters()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v1

    .line 329
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->verifyEventSize()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    iget-boolean v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mInjectAtHeadOfQueue:Z

    if-eqz v2, :cond_2

    .line 331
    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventProcessor;->dispatchToHead(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 336
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->release()V

    .line 337
    return-void

    .line 333
    :cond_2
    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventProcessor;->dispatch(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0
.end method

.method public overrideLoggedWallTimeMillis(J)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 191
    iput-wide p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggedWallTimeMillis:J

    .line 192
    return-object p0
.end method

.method release()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfExternallyMutable()V

    .line 118
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call ejectBaseParameters before release"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    if-nez v0, :cond_3

    move-object v0, v1

    .line 125
    :goto_0
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mModuleName:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    .line 128
    iput-boolean v4, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mShouldDeliverImmediately:Z

    .line 129
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mProcessName:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mAppBackgrounded:Ljava/lang/Boolean;

    .line 131
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggedWallTimeMillis:J

    .line 132
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    .line 133
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mNetworkType:Ljava/lang/String;

    .line 134
    iput-boolean v4, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mIsSampledHasBeenCalled:Z

    .line 135
    iput-boolean v4, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mInjectAtHeadOfQueue:Z

    .line 136
    iput-wide v6, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J

    .line 137
    iput-wide v6, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mTag:J

    .line 138
    if-eqz v0, :cond_2

    .line 139
    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 141
    :cond_2
    return-void

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventBuilderPool:Landroidx/core/util/Pools$Pool;

    goto :goto_0
.end method

.method setEventSampleRate(I)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assumeNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v1, "sampling_rate"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    .line 83
    return-void
.end method

.method setTag(J)V
    .locals 3

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mTag:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mTag:J

    .line 98
    return-void
.end method

.method throwIfExternallyMutable()V
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExternallyMutable:Z

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected immutability"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    return-void
.end method

.method throwIfNotExternallyMutable()V
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExternallyMutable:Z

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected mutability"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    return-void
.end method
