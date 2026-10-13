.class public final Lcom/facebook/hermes/reactexecutor/RuntimeConfig;
.super Ljava/lang/Object;
.source "RuntimeConfig.java"


# instance fields
.field public bytecodeWarmupPercent:I

.field public enableJSStackTraceInMinidump:Z

.field public enableSampledStats:Z

.field public heapDumper:Lcom/facebook/hermes/instrumentation/HermesMemoryDumper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public heapSizeMB:J

.field public trackIO:Z

.field public tripWireCooldownMS:J

.field public tripWireEnabled:Z

.field public tripWireLimitBytes:J

.field public vmExperimentFlags:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
