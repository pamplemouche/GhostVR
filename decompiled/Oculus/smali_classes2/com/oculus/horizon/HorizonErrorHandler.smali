.class public Lcom/oculus/horizon/HorizonErrorHandler;
.super Ljava/lang/Object;
.source "HorizonErrorHandler.java"

# interfaces
.implements Lretrofit/ErrorHandler;


# instance fields
.field private final mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

.field private final mHandler:Landroid/os/Handler;

.field private final mLoggingErrorHandler:Lcom/oculus/http/core/LoggingErrorHandler;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/debug/DebugErrorToaster;Lcom/oculus/http/core/LoggingErrorHandler;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/horizon/HorizonErrorHandler;->mHandler:Landroid/os/Handler;

    .line 26
    iput-object p1, p0, Lcom/oculus/horizon/HorizonErrorHandler;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    .line 27
    iput-object p2, p0, Lcom/oculus/horizon/HorizonErrorHandler;->mLoggingErrorHandler:Lcom/oculus/http/core/LoggingErrorHandler;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/HorizonErrorHandler;)Lcom/oculus/horizon/debug/DebugErrorToaster;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/horizon/HorizonErrorHandler;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    return-object v0
.end method


# virtual methods
.method public handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/HorizonErrorHandler;->mLoggingErrorHandler:Lcom/oculus/http/core/LoggingErrorHandler;

    invoke-virtual {v0, p1}, Lcom/oculus/http/core/LoggingErrorHandler;->handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/HorizonErrorHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/horizon/HorizonErrorHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/HorizonErrorHandler$1;-><init>(Lcom/oculus/horizon/HorizonErrorHandler;Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-object p1
.end method
