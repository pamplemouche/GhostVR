.class Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;
.super Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;
.source "LoggingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;


# direct methods
.method constructor <init>(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-direct {p0}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public endFunnel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$300(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->isTelemetryStateOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-virtual {v0, p1}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->endFunnel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endFunnelWithId(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$300(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->isTelemetryStateOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->endFunnel(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public logExposure(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$300(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->isTelemetryStateOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 416
    invoke-virtual {p4}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    iget-object v3, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {v3, p2, v0, p4, v1}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$500(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Lorg/json/JSONObject;)Z

    goto :goto_1

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    .line 420
    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$600(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)Lcom/oculus/logging/EventFactory;

    move-result-object v0

    .line 421
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-interface {v0, p1, p2, v1, p5}, Lcom/oculus/logging/EventFactory;->newExposureEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/OculusLoggingEvent;

    move-result-object v1

    .line 422
    invoke-interface {v1}, Lcom/oculus/logging/OculusLoggingEvent;->isSampled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p3}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    invoke-virtual {p3, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    invoke-interface {v1, v0, v3}, Lcom/oculus/logging/OculusLoggingEvent;->addBaseExtraForInternalUse(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/OculusLoggingEvent;

    goto :goto_2

    .line 427
    :cond_3
    invoke-interface {v1}, Lcom/oculus/logging/OculusLoggingEvent;->logAndRelease()V

    goto :goto_0
.end method

.method public registerFunnel(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$300(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->isTelemetryStateOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->registerFunnel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public reportEvents(Landroid/os/PersistableBundle;Z)V
    .locals 3

    .prologue
    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$300(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->isTelemetryStateOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->reportEvents(Landroid/os/PersistableBundle;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$300(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->isTelemetryStateOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0
.end method

.method public reportFunnelActionWithId(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 8

    .prologue
    .line 471
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$300(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->isTelemetryStateOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->reportFunnelAction(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0
.end method

.method public shouldDuplicateLogging(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$000(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;Z)Z

    move-result v0

    return v0
.end method

.method public shouldUseUnifiedTelemetryService(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 383
    iget-object v3, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {v3}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$100(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 385
    iget-object v3, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    .line 386
    invoke-static {v3}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$200(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)Lcom/oculus/os/SettingsManager;

    move-result-object v3

    const-string v4, "managed_device"

    invoke-virtual {v3, v4, v2}, Lcom/oculus/os/SettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 389
    :cond_0
    if-gt v2, v1, :cond_1

    iget-object v2, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {v2, v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$000(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public startFunnel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$300(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->isTelemetryStateOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-virtual {v0, p1}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->startFunnel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFunnelWithId(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->access$300(Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->isTelemetryStateOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/unifiedtelemetry/unifiedlogging/LoggingHandler;->startFunnel(Ljava/lang/String;J)V

    goto :goto_0
.end method
