.class public Lcom/oculus/os/UnifiedTelemetryLogger;
.super Ljava/lang/Object;
.source "UnifiedTelemetryLogger.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/oculus/os/UnifiedTelemetryLogger;
    .locals 3

    .prologue
    .line 8
    const-class v1, Lcom/oculus/os/UnifiedTelemetryLogger;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Stub!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endFunnel(Ljava/lang/String;)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endFunnel(Ljava/lang/String;J)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "instanceId"    # J

    .prologue
    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public logExposure(Lcom/oculus/os/AnalyticsEvent;Z)V
    .locals 2
    .param p1, "analyticsEvent"    # Lcom/oculus/os/AnalyticsEvent;
    .param p2, "lowLatency"    # Z

    .prologue
    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerFunnel(Ljava/lang/String;I)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "secondsToEndSinceLastUpdate"    # I

    .prologue
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportEvent(Lcom/oculus/os/AnalyticsEvent;Z)V
    .locals 2
    .param p1, "analyticsEvent"    # Lcom/oculus/os/AnalyticsEvent;
    .param p2, "lowLatency"    # Z

    .prologue
    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportEvents(Ljava/util/List;Z)V
    .locals 2
    .param p2, "lowLatency"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/os/AnalyticsEvent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "analyticsEvents":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/os/AnalyticsEvent;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportFunnelAction(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "instanceId"    # J
    .param p4, "actionName"    # Ljava/lang/String;
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "actionData"    # Landroid/os/PersistableBundle;

    .prologue
    .line 18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportFunnelAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "actionData"    # Landroid/os/PersistableBundle;

    .prologue
    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldDuplicateLogging()Z
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldUseUnifiedTelemetryService()Z
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startFunnel(Ljava/lang/String;)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startFunnel(Ljava/lang/String;J)V
    .locals 2
    .param p1, "funnelName"    # Ljava/lang/String;
    .param p2, "instanceId"    # J

    .prologue
    .line 16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
