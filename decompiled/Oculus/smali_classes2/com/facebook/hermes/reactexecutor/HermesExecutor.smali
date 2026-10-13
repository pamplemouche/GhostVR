.class public Lcom/facebook/hermes/reactexecutor/HermesExecutor;
.super Lcom/facebook/react/bridge/JavaScriptExecutor;
.source "HermesExecutor.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "hermes-executor"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 17
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;DLcom/facebook/hermes/reactexecutor/RuntimeConfig;)V
    .locals 20
    .param p1    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/hermes/reactexecutor/RuntimeConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    if-nez p4, :cond_0

    .line 25
    invoke-static/range {p1 .. p3}, Lcom/facebook/hermes/reactexecutor/HermesExecutor;->initHybridDefaultConfig(Ljava/util/concurrent/ScheduledExecutorService;D)Lcom/facebook/jni/HybridData;

    move-result-object v2

    .line 23
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/facebook/react/bridge/JavaScriptExecutor;-><init>(Lcom/facebook/jni/HybridData;)V

    .line 39
    return-void

    .line 25
    :cond_0
    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;->heapSizeMB:J

    move-object/from16 v0, p4

    iget-boolean v8, v0, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;->enableSampledStats:Z

    move-object/from16 v0, p4

    iget-boolean v9, v0, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;->enableJSStackTraceInMinidump:Z

    move-object/from16 v0, p4

    iget v10, v0, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;->bytecodeWarmupPercent:I

    move-object/from16 v0, p4

    iget-boolean v11, v0, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;->trackIO:Z

    move-object/from16 v0, p4

    iget-wide v12, v0, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;->vmExperimentFlags:J

    move-object/from16 v0, p4

    iget-boolean v14, v0, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;->tripWireEnabled:Z

    move-object/from16 v0, p4

    iget-object v15, v0, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;->heapDumper:Lcom/facebook/hermes/instrumentation/HermesMemoryDumper;

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;->tripWireCooldownMS:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/facebook/hermes/reactexecutor/RuntimeConfig;->tripWireLimitBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    .line 26
    invoke-static/range {v3 .. v19}, Lcom/facebook/hermes/reactexecutor/HermesExecutor;->initHybrid(Ljava/util/concurrent/ScheduledExecutorService;DJZZIZJZLcom/facebook/hermes/instrumentation/HermesMemoryDumper;JJ)Lcom/facebook/jni/HybridData;

    move-result-object v2

    goto :goto_0
.end method

.method private static native initHybrid(Ljava/util/concurrent/ScheduledExecutorService;DJZZIZJZLcom/facebook/hermes/instrumentation/HermesMemoryDumper;JJ)Lcom/facebook/jni/HybridData;
    .param p0    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/facebook/hermes/instrumentation/HermesMemoryDumper;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native initHybridDefaultConfig(Ljava/util/concurrent/ScheduledExecutorService;D)Lcom/facebook/jni/HybridData;
    .param p0    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "HermesExecutor"

    return-object v0
.end method
