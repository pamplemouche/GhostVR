.class final Lcom/facebook/acra/ACRA$1;
.super Ljava/lang/Object;
.source "ACRA.java"

# interfaces
.implements Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;


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
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "customStackTrace"    # Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    invoke-static {}, Lcom/facebook/acra/ACRA;->stopANRDetector()V

    .line 259
    return-void
.end method
