.class Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;
.super Landroid/os/Handler;
.source "GearVRLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;


# direct methods
.method constructor <init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Landroid/os/Looper;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .line 267
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private fetchGatekeepers(Lcom/oculus/aidl/IUnifiedTelemetryService;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1100(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oculus/aidl/IUnifiedTelemetryService;->shouldDuplicateLogging(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 310
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1300(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .line 311
    invoke-static {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1100(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oculus/aidl/IUnifiedTelemetryService;->shouldUseUnifiedTelemetryService(Ljava/lang/String;)Z

    move-result p1

    .line 310
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 313
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gatekeeper values: mDuplicateLogging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .line 315
    invoke-static {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUseUnifiedTelemetryService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .line 317
    invoke-static {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1300(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    sget-object v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->FETCH_GATEKEEPERS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    .line 323
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    const-wide/32 v3, 0xea60

    sub-long/2addr v3, v1

    .line 321
    invoke-static {p1, v0, v3, v4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1400(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;J)V

    return-void
.end method

.method private registerFunnels(Lcom/oculus/aidl/IUnifiedTelemetryService;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1600(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 361
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 360
    invoke-interface {p1, v2, v1}, Lcom/oculus/aidl/IUnifiedTelemetryService;->registerFunnel(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reportEvents(Lcom/oculus/aidl/IUnifiedTelemetryService;Landroid/os/PersistableBundle;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1500(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 332
    :try_start_0
    invoke-virtual {p2}, Landroid/os/PersistableBundle;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 333
    invoke-interface {p1, p2, p3}, Lcom/oculus/aidl/IUnifiedTelemetryService;->reportEvents(Landroid/os/PersistableBundle;Z)V

    .line 334
    invoke-virtual {p2}, Landroid/os/PersistableBundle;->clear()V

    .line 336
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

.method private reportExposure(Lcom/oculus/aidl/IUnifiedTelemetryService;Ljava/util/Queue;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/aidl/IUnifiedTelemetryService;",
            "Ljava/util/Queue<",
            "Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    invoke-interface {p2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    :goto_0
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getModuleName()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getInternalUseParams()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 350
    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    move-object v1, p1

    move v6, p3

    .line 346
    invoke-interface/range {v1 .. v6}, Lcom/oculus/aidl/IUnifiedTelemetryService;->logExposure(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    .line 352
    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 353
    invoke-interface {p2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reportFunnelData(Lcom/oculus/aidl/IUnifiedTelemetryService;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1700(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    :goto_0
    if-eqz v0, :cond_5

    .line 369
    iget-object v2, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mFunnelName:Ljava/lang/String;

    .line 370
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Funnel data with no funnel name found, discarding data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1700(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1700(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    goto :goto_0

    .line 377
    :cond_0
    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$3;->$SwitchMap$com$oculus$unifiedtelemetry$unifiedtelemetrysupportlib$FunnelData$Type:[I

    iget-object v3, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mType:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;

    invoke-virtual {v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData$Type;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 414
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown funnel data type. Should never happen."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :pswitch_0
    iget-object v1, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 408
    iget-object v0, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Lcom/oculus/aidl/IUnifiedTelemetryService;->endFunnelWithId(Ljava/lang/String;J)V

    goto :goto_1

    .line 410
    :cond_1
    invoke-interface {p1, v2}, Lcom/oculus/aidl/IUnifiedTelemetryService;->endFunnel(Ljava/lang/String;)V

    goto :goto_1

    .line 386
    :pswitch_1
    iget-object v1, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Funnel data for funnel "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with type action with no action name found, discarding data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 393
    :cond_2
    iget-object v1, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 394
    iget-object v1, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    .line 396
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionName:Ljava/lang/String;

    iget-object v6, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mTag:Ljava/lang/String;

    iget-object v7, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionData:Landroid/os/PersistableBundle;

    move-object v1, p1

    .line 394
    invoke-interface/range {v1 .. v7}, Lcom/oculus/aidl/IUnifiedTelemetryService;->reportFunnelActionWithId(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_1

    .line 401
    :cond_3
    iget-object v1, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionName:Ljava/lang/String;

    iget-object v3, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mTag:Ljava/lang/String;

    iget-object v0, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mActionData:Landroid/os/PersistableBundle;

    invoke-interface {p1, v2, v1, v3, v0}, Lcom/oculus/aidl/IUnifiedTelemetryService;->reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_1

    .line 379
    :pswitch_2
    iget-object v1, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 380
    iget-object v0, v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;->mInstanceId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v2, v0, v1}, Lcom/oculus/aidl/IUnifiedTelemetryService;->startFunnelWithId(Ljava/lang/String;J)V

    goto :goto_1

    .line 382
    :cond_4
    invoke-interface {p1, v2}, Lcom/oculus/aidl/IUnifiedTelemetryService;->startFunnel(Ljava/lang/String;)V

    .line 416
    :goto_1
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1700(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1700(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/FunnelData;

    goto/16 :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$100(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Lcom/oculus/aidl/IUnifiedTelemetryService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 274
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unifiedTelemetryService is null."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 279
    :cond_0
    :try_start_0
    sget-object v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$3;->$SwitchMap$com$oculus$unifiedtelemetry$unifiedtelemetrysupportlib$GearVRLogger$MessageType:[I

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->values()[Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->what:I

    aget-object p1, v2, p1

    invoke-virtual {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->reportFunnelData(Lcom/oculus/aidl/IUnifiedTelemetryService;)V

    goto :goto_0

    .line 296
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->registerFunnels(Lcom/oculus/aidl/IUnifiedTelemetryService;)V

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$1000(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;

    move-result-object p1

    invoke-direct {p0, v0, p1, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->reportExposure(Lcom/oculus/aidl/IUnifiedTelemetryService;Ljava/util/Queue;Z)V

    goto :goto_0

    .line 290
    :pswitch_3
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$900(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Ljava/util/Queue;

    move-result-object p1

    invoke-direct {p0, v0, p1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->reportExposure(Lcom/oculus/aidl/IUnifiedTelemetryService;Ljava/util/Queue;Z)V

    goto :goto_0

    .line 287
    :pswitch_4
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$800(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-direct {p0, v0, p1, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->reportEvents(Lcom/oculus/aidl/IUnifiedTelemetryService;Landroid/os/PersistableBundle;Z)V

    goto :goto_0

    .line 284
    :pswitch_5
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$700(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-direct {p0, v0, p1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->reportEvents(Lcom/oculus/aidl/IUnifiedTelemetryService;Landroid/os/PersistableBundle;Z)V

    goto :goto_0

    .line 281
    :pswitch_6
    invoke-direct {p0, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;->fetchGatekeepers(Lcom/oculus/aidl/IUnifiedTelemetryService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 303
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteException"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
