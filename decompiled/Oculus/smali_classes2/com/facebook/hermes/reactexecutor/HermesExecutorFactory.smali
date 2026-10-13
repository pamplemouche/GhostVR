.class public Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;
.super Ljava/lang/Object;
.source "HermesExecutorFactory.java"

# interfaces
.implements Lcom/facebook/react/bridge/JavaScriptExecutorFactory;


# instance fields
.field private final mConfig:Lcom/facebook/hermes/reactexecutor/RuntimeConfig;

.field private final mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTimeoutMsec:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;-><init>(Ljava/util/concurrent/ScheduledExecutorService;DLcom/facebook/hermes/reactexecutor/RuntimeConfig;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;DLcom/facebook/hermes/reactexecutor/RuntimeConfig;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    iput-wide p2, p0, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;->mTimeoutMsec:D

    .line 30
    iput-object p4, p0, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;->mConfig:Lcom/facebook/hermes/reactexecutor/RuntimeConfig;

    .line 31
    return-void
.end method


# virtual methods
.method public create()Lcom/facebook/react/bridge/JavaScriptExecutor;
    .locals 5

    .prologue
    .line 35
    const-string v0, "Hermes"

    const-string v1, "creating HermesExecutor %f timeout msec"

    iget-wide v2, p0, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;->mTimeoutMsec:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    new-instance v0, Lcom/facebook/hermes/reactexecutor/HermesExecutor;

    iget-object v1, p0, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v2, p0, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;->mTimeoutMsec:D

    iget-object v4, p0, Lcom/facebook/hermes/reactexecutor/HermesExecutorFactory;->mConfig:Lcom/facebook/hermes/reactexecutor/RuntimeConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/hermes/reactexecutor/HermesExecutor;-><init>(Ljava/util/concurrent/ScheduledExecutorService;DLcom/facebook/hermes/reactexecutor/RuntimeConfig;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "JSIExecutor+HermesRuntime"

    return-object v0
.end method
