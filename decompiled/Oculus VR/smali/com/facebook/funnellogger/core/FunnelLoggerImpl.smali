.class public Lcom/facebook/funnellogger/core/FunnelLoggerImpl;
.super Ljava/lang/Object;
.source "FunnelLoggerImpl.java"

# interfaces
.implements Lcom/facebook/funnellogger/core/FunnelLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;
    }
.end annotation


# instance fields
.field private final mEventSender:Lcom/facebook/funnellogger/core/EventSender;

.field private final mFunnelBackupStorage:Lcom/facebook/funnellogger/core/FunnelBackupStorage;

.field private final mFunnelHandler:Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;

.field mFunnels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/funnellogger/core/Funnel;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLoaded:Z

.field private final mRandom:Ljava/util/Random;

.field private final mSampler:Lcom/facebook/funnellogger/core/Sampler;


# direct methods
.method public constructor <init>(Lcom/facebook/funnellogger/core/EventSender;Lcom/facebook/funnellogger/core/Sampler;Lcom/facebook/funnellogger/core/LooperProvider;Lcom/facebook/funnellogger/core/FunnelBackupStorage;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mLoaded:Z

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mEventSender:Lcom/facebook/funnellogger/core/EventSender;

    .line 41
    iput-object p2, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mSampler:Lcom/facebook/funnellogger/core/Sampler;

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mRandom:Ljava/util/Random;

    .line 43
    new-instance v0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;

    invoke-interface {p3}, Lcom/facebook/funnellogger/core/LooperProvider;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;-><init>(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnelHandler:Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;

    .line 44
    iput-object p4, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnelBackupStorage:Lcom/facebook/funnellogger/core/FunnelBackupStorage;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;)Ljava/util/Random;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinition;JJ)V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->startFunnelImpl(Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinition;JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->addFunnelTagImpl(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/funnellogger/core/PayloadBundle;J)V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->appendActionWithTagAndPayloadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/funnellogger/core/PayloadBundle;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->cancelFunnelImpl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->endFunnelImpl(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->onAppBackgroundImpl()V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinition;JJ)V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->startFunnelIfNotStartedImpl(Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinition;JJ)V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/funnellogger/core/FunnelLoggerImpl;Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinition;Lcom/facebook/funnellogger/core/PayloadBundle;J)V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->addFunnelPayloadImpl(Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinition;Lcom/facebook/funnellogger/core/PayloadBundle;J)V

    return-void
.end method

.method private addFunnelPayloadImpl(Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinition;Lcom/facebook/funnellogger/core/PayloadBundle;J)V
    .locals 2

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeInitFunnels()V

    .line 403
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/funnellogger/core/Funnel;

    .line 404
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0, p3, p4, p5}, Lcom/facebook/funnellogger/core/Funnel;->addFunnelPayload(Lcom/facebook/funnellogger/core/PayloadBundle;J)V

    .line 406
    const-string v0, "FunnelLoggerImpl"

    const-string v1, "appended payload to funnel %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    :cond_0
    return-void
.end method

.method private addFunnelTagImpl(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeInitFunnels()V

    .line 265
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/funnellogger/core/Funnel;

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/funnellogger/core/Funnel;->addTag(Ljava/lang/String;J)V

    .line 268
    const-string v0, "FunnelLoggerImpl"

    const-string v1, "added tag %s to funnel %s"

    invoke-static {v0, v1, p2, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    :cond_0
    return-void
.end method

.method private appendActionWithTagAndPayloadImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/funnellogger/core/PayloadBundle;J)V
    .locals 7

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeInitFunnels()V

    .line 349
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/funnellogger/core/Funnel;

    .line 350
    if-eqz v6, :cond_0

    .line 351
    new-instance v0, Lcom/facebook/funnellogger/core/Funnel$Action;

    .line 354
    invoke-virtual {v6}, Lcom/facebook/funnellogger/core/Funnel;->getCreatedTimeStamp()J

    move-result-wide v2

    sub-long v2, p5, v2

    long-to-int v1, v2

    invoke-direct {v0, p2, v1, p3, p4}, Lcom/facebook/funnellogger/core/Funnel$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/funnellogger/core/PayloadBundle;)V

    .line 351
    invoke-virtual {v6, v0, p5, p6}, Lcom/facebook/funnellogger/core/Funnel;->appendAction(Lcom/facebook/funnellogger/core/Funnel$Action;J)V

    .line 358
    const-string v0, "FunnelLoggerImpl"

    const-string v1, "appended action %s with tag %s and %s payload to funnel %s"

    if-nez p4, :cond_1

    const-string v4, "null"

    :goto_0
    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    invoke-virtual {v6}, Lcom/facebook/funnellogger/core/Funnel;->canAcceptMoreAction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    sget-object v0, Lcom/facebook/funnellogger/core/Funnel$EndType;->ACTIONS_FULL:Lcom/facebook/funnellogger/core/Funnel$EndType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v6, v0, v2, v3}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->doEndFunnel(Lcom/facebook/funnellogger/core/Funnel;Lcom/facebook/funnellogger/core/Funnel$EndType;J)V

    .line 367
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_0
    return-void

    .line 358
    :cond_1
    const-string v4, "non-null"

    goto :goto_0
.end method

.method private cancelFunnelImpl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeInitFunnels()V

    .line 435
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    return-void
.end method

.method private doEndFunnel(Lcom/facebook/funnellogger/core/Funnel;Lcom/facebook/funnellogger/core/Funnel$EndType;J)V
    .locals 7

    .prologue
    .line 206
    new-instance v1, Lcom/facebook/funnellogger/core/Funnel$Action;

    const-string v2, "funnel_end"

    .line 209
    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getCreatedTimeStamp()J

    move-result-wide v4

    sub-long v4, p3, v4

    long-to-int v3, v4

    .line 210
    invoke-virtual {p2}, Lcom/facebook/funnellogger/core/Funnel$EndType;->tag()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/funnellogger/core/PayloadBundle;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/funnellogger/core/Funnel$Action;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/funnellogger/core/PayloadBundle;)V

    .line 206
    invoke-virtual {p1, v1, p3, p4}, Lcom/facebook/funnellogger/core/Funnel;->appendAction(Lcom/facebook/funnellogger/core/Funnel$Action;J)V

    .line 213
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mEventSender:Lcom/facebook/funnellogger/core/EventSender;

    invoke-interface {v0, p1}, Lcom/facebook/funnellogger/core/EventSender;->send(Lcom/facebook/funnellogger/core/Funnel;)V

    .line 214
    const-string v0, "FunnelLoggerImpl"

    const-string v1, "Ended funnel %s due to %s"

    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/funnellogger/core/Funnel$EndType;->tag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method private endFunnelImpl(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeInitFunnels()V

    .line 465
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/funnellogger/core/Funnel;

    .line 466
    if-eqz v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v1, Lcom/facebook/funnellogger/core/Funnel$EndType;->EXPLICIT:Lcom/facebook/funnellogger/core/Funnel$EndType;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->doEndFunnel(Lcom/facebook/funnellogger/core/Funnel;Lcom/facebook/funnellogger/core/Funnel$EndType;J)V

    .line 470
    :cond_0
    return-void
.end method

.method static getKey(Lcom/facebook/funnellogger/core/FunnelDefinition;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->name:Ljava/lang/String;

    return-object v0
.end method

.method static getKey(Lcom/facebook/funnellogger/core/FunnelDefinition;J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelDefinition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getKey(Lcom/facebook/funnellogger/core/OperationParams;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams;->mInstanceId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    invoke-static {v0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->getKey(Lcom/facebook/funnellogger/core/FunnelDefinition;)Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/funnellogger/core/OperationParams;->mFunnelDefinition:Lcom/facebook/funnellogger/core/FunnelDefinition;

    iget-object v1, p0, Lcom/facebook/funnellogger/core/OperationParams;->mInstanceId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->getKey(Lcom/facebook/funnellogger/core/FunnelDefinition;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private maybeCreateFunnel(Lcom/facebook/funnellogger/core/FunnelDefinition;JJ)Lcom/facebook/funnellogger/core/Funnel;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mSampler:Lcom/facebook/funnellogger/core/Sampler;

    invoke-interface {v0, p1}, Lcom/facebook/funnellogger/core/Sampler;->sample(Lcom/facebook/funnellogger/core/FunnelDefinition;)I

    move-result v4

    .line 194
    const v0, 0x7fffffff

    if-ne v4, v0, :cond_0

    .line 195
    const-string v0, "FunnelLoggerImpl"

    const-string v1, "Funnel %s is not sampled"

    iget-object v2, p1, Lcom/facebook/funnellogger/core/FunnelDefinition;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    const/4 v0, 0x0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/funnellogger/core/Funnel;

    move-object v1, p1

    move-wide v2, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/funnellogger/core/Funnel;-><init>(Lcom/facebook/funnellogger/core/FunnelDefinition;JIJ)V

    goto :goto_0
.end method

.method private maybeEndFunnelOnSessionEnd(Lcom/facebook/funnellogger/core/Funnel;)Z
    .locals 4

    .prologue
    .line 473
    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getFunnelDefinition()Lcom/facebook/funnellogger/core/FunnelDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/funnellogger/core/FunnelDefinition;->getShouldEndOnUserLeavingTheApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lcom/facebook/funnellogger/core/Funnel$EndType;->SESSION_END:Lcom/facebook/funnellogger/core/Funnel$EndType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->doEndFunnel(Lcom/facebook/funnellogger/core/Funnel;Lcom/facebook/funnellogger/core/Funnel$EndType;J)V

    .line 475
    const/4 v0, 0x1

    .line 477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeEndFunnelOnTimeout(Lcom/facebook/funnellogger/core/Funnel;)Z
    .locals 8

    .prologue
    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 482
    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getLastUpdatedTimestamp()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 483
    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getFunnelDefinition()Lcom/facebook/funnellogger/core/FunnelDefinition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/funnellogger/core/FunnelDefinition;->getSecondsToEndSinceLastUpdate()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 484
    sget-object v2, Lcom/facebook/funnellogger/core/Funnel$EndType;->TIMEOUT:Lcom/facebook/funnellogger/core/Funnel$EndType;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->doEndFunnel(Lcom/facebook/funnellogger/core/Funnel;Lcom/facebook/funnellogger/core/Funnel$EndType;J)V

    .line 485
    const/4 v0, 0x1

    .line 487
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeEndFunnelsOnUserLeftApp()V
    .locals 5

    .prologue
    .line 86
    const-string v0, "FunnelLoggerImpl"

    const-string v1, "check and maybe end funnels"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/funnellogger/core/Funnel;

    .line 90
    invoke-direct {p0, v1}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeEndFunnelOnSessionEnd(Lcom/facebook/funnellogger/core/Funnel;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v1}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeEndFunnelOnTimeout(Lcom/facebook/funnellogger/core/Funnel;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, v1}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybePseudoEndFunnelOnBackground(Lcom/facebook/funnellogger/core/Funnel;)Z

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 99
    :cond_3
    return-void
.end method

.method private maybeInitFunnels()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 48
    iget-boolean v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "FunnelLoggerImpl"

    const-string v1, "Loading funnels from checkpoints"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnelBackupStorage:Lcom/facebook/funnellogger/core/FunnelBackupStorage;

    invoke-interface {v0}, Lcom/facebook/funnellogger/core/FunnelBackupStorage;->loadFunnels()Ljava/util/Map;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    iput-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    iput-boolean v3, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mLoaded:Z

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    :try_start_1
    const-string v1, "FunnelLoggerImpl"

    const-string v2, "Failed to load funnels"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    iput-boolean v3, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mLoaded:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mLoaded:Z

    throw v0
.end method

.method private maybePseudoEndFunnelOnBackground(Lcom/facebook/funnellogger/core/Funnel;)Z
    .locals 4

    .prologue
    .line 491
    invoke-virtual {p1}, Lcom/facebook/funnellogger/core/Funnel;->getFunnelDefinition()Lcom/facebook/funnellogger/core/FunnelDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/funnellogger/core/FunnelDefinition;->isPseudoEndEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-static {p1}, Lcom/facebook/funnellogger/core/Funnel;->copyFunnel(Lcom/facebook/funnellogger/core/Funnel;)Lcom/facebook/funnellogger/core/Funnel;

    move-result-object v0

    .line 493
    sget-object v1, Lcom/facebook/funnellogger/core/Funnel$EndType;->SESSION_END:Lcom/facebook/funnellogger/core/Funnel$EndType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->doEndFunnel(Lcom/facebook/funnellogger/core/Funnel;Lcom/facebook/funnellogger/core/Funnel$EndType;J)V

    .line 494
    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAppBackgroundImpl()V
    .locals 3

    .prologue
    .line 74
    const-string v0, "FunnelLoggerImpl"

    const-string v1, "User left the App."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeInitFunnels()V

    .line 76
    invoke-direct {p0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeEndFunnelsOnUserLeftApp()V

    .line 77
    const-string v0, "FunnelLoggerImpl"

    const-string v1, "Save the remaining funnels to checkpoints"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnelBackupStorage:Lcom/facebook/funnellogger/core/FunnelBackupStorage;

    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/facebook/funnellogger/core/FunnelBackupStorage;->saveFunnels(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "FunnelLoggerImpl"

    const-string v2, "Failed to save funnels!"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendAppBackground()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnelHandler:Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;

    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnelHandler:Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;

    const/4 v2, 0x6

    .line 70
    invoke-virtual {v1, v2}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl$FunnelHandler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    return-void
.end method

.method private startFunnelIfNotStartedImpl(Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinition;JJ)V
    .locals 7

    .prologue
    .line 150
    invoke-virtual {p2}, Lcom/facebook/funnellogger/core/FunnelDefinition;->shouldCreateNoopFunnels()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must enable noop funnels in the FunnelDefinition to use startFunnelIfNotStarted()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeInitFunnels()V

    .line 155
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-string v0, "FunnelLoggerImpl"

    const-string v1, "Funnel %s already exists, do nothing"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 159
    invoke-direct/range {v0 .. v5}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeCreateFunnel(Lcom/facebook/funnellogger/core/FunnelDefinition;JJ)Lcom/facebook/funnellogger/core/Funnel;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "FunnelLoggerImpl"

    const-string v1, "Start funnel with key %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startFunnelImpl(Ljava/lang/String;Lcom/facebook/funnellogger/core/FunnelDefinition;JJ)V
    .locals 7

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeInitFunnels()V

    .line 136
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/funnellogger/core/Funnel;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    sget-object v1, Lcom/facebook/funnellogger/core/Funnel$EndType;->RESTART:Lcom/facebook/funnellogger/core/Funnel$EndType;

    invoke-direct {p0, v0, v1, p5, p6}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->doEndFunnel(Lcom/facebook/funnellogger/core/Funnel;Lcom/facebook/funnellogger/core/Funnel$EndType;J)V

    .line 139
    iget-object v0, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 141
    invoke-direct/range {v0 .. v5}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->maybeCreateFunnel(Lcom/facebook/funnellogger/core/FunnelDefinition;JJ)Lcom/facebook/funnellogger/core/Funnel;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_1

    .line 143
    iget-object v1, p0, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->mFunnels:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "FunnelLoggerImpl"

    const-string v1, "Start funnel with key %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized onAppBackground()V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/funnellogger/core/FunnelLoggerImpl;->sendAppBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
