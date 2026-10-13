.class public Lcom/facebook/analytics2/logger/EventBuilder;
.super Ljava/lang/Object;
.source "EventBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final DEFAULT_BOOLEAN_SIZE:J = 0x4L

.field private static final DEFAULT_NUMBER_SIZE:J = 0x4L

.field private static final EVENT_TAGS:Ljava/lang/String; = "tags"

.field private static final INITIAL_EVENT_SIZE:J = 0x0L

.field private static final INVALID_TIME:I = -0x1


# instance fields
.field mAppBackgrounded:Ljava/lang/Boolean;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

.field mDestinationAppInterface:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;

.field mEventName:Ljava/lang/String;

.field mEventSize:J

.field private volatile mExternallyMutable:Z

.field private mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mInjectAtHeadOfQueue:Z

.field private final mIsSampled:Z

.field mIsSampledHasBeenCalled:Z

.field mLoggedWallTimeMillis:J

.field mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

.field mModuleName:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mNetworkType:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mObjectId:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mObjectType:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mProcessName:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mShouldDeliverImmediately:Z

.field mSourceAppInterface:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTag:J

.field mUUID:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 52
    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggedWallTimeMillis:J

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mTag:J

    .line 75
    iput-boolean p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mIsSampled:Z

    return-void
.end method

.method private autoAssignDefaults()V
    .locals 5

    .line 439
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mProcessName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mProcessPolicy:Lcom/facebook/analytics2/logger/ProcessPolicy;

    .line 441
    invoke-interface {v0}, Lcom/facebook/analytics2/logger/ProcessPolicy;->shouldAddProcessName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-static {}, Lcom/facebook/crudolib/processname/ProcessNameHelper;->getMyFullProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mProcessName:Ljava/lang/String;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mAppBackgrounded:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mAppBackgroundedProvider:Lcom/facebook/analytics2/logger/AppBackgroundedProvider;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/AppBackgroundedProvider;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mAppBackgrounded:Ljava/lang/Boolean;

    .line 447
    :cond_1
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggedWallTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggedWallTimeMillis:J

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;

    if-eqz v0, :cond_3

    .line 451
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mNetworkTypeProvider:Lcom/facebook/analytics2/logger/NetworkTypeProvider;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/NetworkTypeProvider;->get()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mNetworkType:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private ejectBaseParameters()Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 421
    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->markImmutable()V

    .line 422
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->markImmutable()V

    :cond_0
    const/4 v1, 0x0

    .line 425
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 426
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    return-object v0
.end method

.method private fillBaseParameters()V
    .locals 5

    .line 457
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mProcessName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mProcessName:Ljava/lang/String;

    const-string v2, "process"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mNetworkType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mNetworkType:Ljava/lang/String;

    const-string v2, "radio_type"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/EventLogType;->getProtocolValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "log_type"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mAppBackgrounded:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 465
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    goto :goto_0

    :cond_2
    const-string v0, "false"

    :goto_0
    const-string v2, "bg"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_3
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget-wide v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggedWallTimeMillis:J

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    .line 470
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mModuleName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 471
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v2, "module"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mObjectType:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 477
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v2, "obj_type"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_5
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mObjectId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 480
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v2, "obj_id"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_6
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mUUID:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 483
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v2, "uuid"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_7
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mSourceAppInterface:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 487
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v2, "interface"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mSourceAppInterface:Ljava/lang/String;

    const-string v2, "src_interface"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_8
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mDestinationAppInterface:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 491
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    const-string v2, "dst_interface"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_9
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mTag:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    .line 495
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tags"

    invoke-virtual {v2, v1, v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_a
    return-void
.end method

.method private getEventPayloadMapForInternalUse()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-eqz v0, :cond_1

    .line 362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 363
    :goto_0
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v2, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getKey(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v3, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized incrementEstimatedEventSize(Ljava/lang/Boolean;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    if-nez p1, :cond_0

    .line 302
    monitor-exit p0

    return-void

    .line 304
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized incrementEstimatedEventSize(Ljava/lang/Number;)V
    .locals 4
    .param p1    # Ljava/lang/Number;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    if-nez p1, :cond_0

    .line 295
    monitor-exit p0

    return-void

    .line 297
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized incrementEstimatedEventSize(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    if-nez p1, :cond_0

    .line 288
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private markImmutable()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->markImmutable()V

    .line 175
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->markImmutable()V

    :cond_0
    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExternallyMutable:Z

    return-void
.end method

.method private markMutable()V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfExternallyMutable()V

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExternallyMutable:Z

    return-void
.end method

.method private selectEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;
    .locals 1

    .line 431
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mShouldDeliverImmediately:Z

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getHighPriPriEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    return-object v0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventProcessorManager:Lcom/facebook/analytics2/logger/EventProcessorManager;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventProcessorManager;->getNormalPriEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    return-object v0
.end method

.method private throwIfNotReady()V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotSampledOrNotTested()V

    .line 195
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotExternallyMutable()V

    return-void
.end method

.method private throwIfNotSampledOrNotTested()V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mIsSampledHasBeenCalled:Z

    if-eqz v0, :cond_1

    .line 114
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mIsSampled:Z

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Event is not sampled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "isSampled was not invoked, how can you have known?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyEventSize()Z
    .locals 7

    .line 396
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/Analytics2Logger;->getEventMaxSize()J

    move-result-wide v0

    .line 397
    iget-wide v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J

    const/4 v4, 0x1

    cmp-long v5, v2, v0

    if-gez v5, :cond_0

    return v4

    .line 400
    :cond_0
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isDebugBuild()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    .line 401
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    aput-object v5, v2, v3

    iget-wide v5, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J

    .line 405
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Event %s is %d bytes, exceeding limit %d. It is logged in Debug build but not in prod."

    .line 403
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventBuilder"

    .line 401
    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    return v3
.end method


# virtual methods
.method acquire(Lcom/facebook/analytics2/logger/Analytics2Logger;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/analytics2/logger/EventLogType;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    .line 130
    iput-object p2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mModuleName:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    .line 133
    iput-boolean p5, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mShouldDeliverImmediately:Z

    .line 134
    iget-object p1, p1, Lcom/facebook/analytics2/logger/Analytics2Logger;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-virtual {p1}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 135
    iget-object p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-static {}, Lcom/facebook/crudolib/params/ParamsJsonEncoder;->getInstance()Lcom/facebook/crudolib/params/ParamsJsonEncoder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->setEncoder(Lcom/facebook/crudolib/params/ParamsEncoder;)V

    .line 136
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->markMutable()V

    return-void
.end method

.method public addBaseParameterForInternalUseOnly(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 1
    .param p2    # Ljava/lang/Boolean;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 279
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 280
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 281
    invoke-direct {p0, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->incrementEstimatedEventSize(Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/Number;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 1
    .param p2    # Ljava/lang/Number;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 272
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 273
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    .line 274
    invoke-direct {p0, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->incrementEstimatedEventSize(Ljava/lang/Number;)V

    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 265
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 266
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->incrementEstimatedEventSize(Ljava/lang/String;)V

    return-object p0
.end method

.method public addExtras(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotSampledOrNotTested()V

    .line 98
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .locals 3

    .line 347
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 348
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mParamsCollectionPool:Lcom/facebook/crudolib/params/ParamsCollectionPool;

    invoke-virtual {v0}, Lcom/facebook/crudolib/params/ParamsCollectionPool;->acquireMap()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 350
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/EventLogType;->getExtraJsonKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public injectAtHeadOfQueueForInternalUse()Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mInjectAtHeadOfQueue:Z

    return-object p0
.end method

.method public isSampled()Z
    .locals 1

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mIsSampledHasBeenCalled:Z

    .line 86
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mIsSampled:Z

    return v0
.end method

.method public logAndRelease()V
    .locals 3

    .line 372
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 373
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->autoAssignDefaults()V

    .line 374
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->selectEventDispatcher()Lcom/facebook/analytics2/logger/EventProcessor;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventProcessor;->schemaExistsForEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->getEventPayloadMapForInternalUse()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/analytics2/logger/EventProcessor;->validateEventSchema(Ljava/util/Map;Ljava/lang/String;)V

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->fillBaseParameters()V

    .line 379
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->markImmutable()V

    .line 380
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->verifyEventSize()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    iget-boolean v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mInjectAtHeadOfQueue:Z

    if-eqz v1, :cond_1

    .line 382
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->ejectBaseParameters()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventProcessor;->dispatchToHead(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->ejectBaseParameters()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/EventProcessor;->dispatch(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    goto :goto_0

    .line 387
    :cond_2
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->ejectBaseParameters()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 389
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->release()V

    return-void
.end method

.method public overrideAppBackgrounded(Z)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 209
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mAppBackgrounded:Ljava/lang/Boolean;

    return-object p0
.end method

.method public overrideLoggedWallTimeMillis(J)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 0

    .line 214
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 215
    iput-wide p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggedWallTimeMillis:J

    return-object p0
.end method

.method public overrideProcessName(Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    if-eqz p1, :cond_0

    .line 203
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mProcessName:Ljava/lang/String;

    return-object p0

    .line 201
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "processName cannot be null if specified explicitly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method release()V
    .locals 5

    .line 140
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfExternallyMutable()V

    .line 141
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    iget-object v0, v0, Lcom/facebook/analytics2/logger/Analytics2Logger;->mEventBuilderPool:Landroid/support/v4/util/Pools$Pool;

    const/4 v1, 0x0

    .line 147
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mModuleName:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventName:Ljava/lang/String;

    .line 149
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    const/4 v2, 0x0

    .line 150
    iput-boolean v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mShouldDeliverImmediately:Z

    .line 151
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mProcessName:Ljava/lang/String;

    .line 152
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mAppBackgrounded:Ljava/lang/Boolean;

    const-wide/16 v3, -0x1

    .line 153
    iput-wide v3, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggedWallTimeMillis:J

    .line 154
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mObjectType:Ljava/lang/String;

    .line 155
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mObjectId:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mUUID:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mSourceAppInterface:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mDestinationAppInterface:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mLoggerConfig:Lcom/facebook/analytics2/logger/Analytics2Logger;

    .line 160
    iput-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mNetworkType:Ljava/lang/String;

    .line 161
    iput-boolean v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mIsSampledHasBeenCalled:Z

    .line 162
    iput-boolean v2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mInjectAtHeadOfQueue:Z

    const-wide/16 v1, 0x0

    .line 163
    iput-wide v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventSize:J

    .line 165
    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call ejectBaseParameters before release"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setEventSampleRate(I)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sampling_rate"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setExtrasForInternalUse(Lcom/facebook/crudolib/params/ParamsCollectionMap;)V
    .locals 2

    .line 336
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 337
    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 341
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    .line 342
    iget-object p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mBaseParameters:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    iget-object v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mEventLogType:Lcom/facebook/analytics2/logger/EventLogType;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventLogType;->getExtraJsonKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExtras:Lcom/facebook/crudolib/params/ParamsCollectionMap;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/crudolib/params/ParamsCollectionMap;->add(Ljava/lang/String;Lcom/facebook/crudolib/params/ParamsCollection;)V

    :cond_0
    return-void

    .line 338
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "mExtras has already been set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setModuleNameForInternalUse(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mModuleName:Ljava/lang/String;

    return-void
.end method

.method public setObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 224
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 225
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mObjectType:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mObjectId:Ljava/lang/String;

    return-object p0
.end method

.method public setSourceAndDestinationInterface(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 247
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mSourceAppInterface:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mDestinationAppInterface:Ljava/lang/String;

    return-object p0
.end method

.method setTag(J)V
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mTag:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mTag:J

    return-void
.end method

.method public setUUID(Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 232
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/EventBuilder;->throwIfNotReady()V

    .line 233
    iput-object p1, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mUUID:Ljava/lang/String;

    return-object p0
.end method

.method public shouldDeliverImmediately()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mShouldDeliverImmediately:Z

    return v0
.end method

.method throwIfExternallyMutable()V
    .locals 2

    .line 182
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExternallyMutable:Z

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected immutability"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method throwIfNotExternallyMutable()V
    .locals 2

    .line 188
    iget-boolean v0, p0, Lcom/facebook/analytics2/logger/EventBuilder;->mExternallyMutable:Z

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected mutability"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
