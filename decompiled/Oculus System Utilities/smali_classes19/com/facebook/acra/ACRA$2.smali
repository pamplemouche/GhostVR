.class final Lcom/facebook/acra/ACRA$2;
.super Ljava/lang/Object;
.source "ACRA.java"

# interfaces
.implements Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/ACRA;->init(Lcom/facebook/acra/config/AcraReportingConfig;JLcom/facebook/acra/anr/AppStateUpdater;Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;)Lcom/facebook/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collectStackTraceForException(Ljava/lang/Throwable;)Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    invoke-static {p1}, Lcom/facebook/stacktracer/LeanStackTracer;->collectRawStackTrace(Ljava/lang/Throwable;)Lcom/facebook/stacktracer/LeanStackTracer$LeanStackTrace;

    move-result-object v0

    return-object v0
.end method
