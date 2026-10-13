.class public abstract Lcom/oculus/horizon/service/result/ResultBuilder;
.super Ljava/lang/Object;
.source "ResultBuilder.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# instance fields
.field private mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mClock:Lcom/oculus/time/Clock;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mErrorBundle:Landroid/os/Bundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mService:Lcom/oculus/horizon/service/OVRService;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/service/result/ResultBuilder;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/service/result/ResultBuilder;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service/result/ResultBuilder;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/service/result/ResultBuilder;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service/result/ResultBuilder;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/service/CallerUtils;->$ul_$xXXcom_oculus_horizon_service_CallerUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/service/CallerUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/result/ResultBuilder;->mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;

    invoke-static {p0}, Lcom/oculus/time/Clock;->$ul_$xXXcom_oculus_time_Clock$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/time/Clock;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/service/result/ResultBuilder;->mClock:Lcom/oculus/time/Clock;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/service/OVRService;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mErrorBundle:Landroid/os/Bundle;

    .line 29
    invoke-virtual {p1}, Lcom/oculus/horizon/service/OVRService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    invoke-static {v0, p0}, Lcom/oculus/horizon/service/result/ResultBuilder;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/service/result/ResultBuilder;)V

    .line 30
    iput-object p1, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mService:Lcom/oculus/horizon/service/OVRService;

    .line 31
    return-void
.end method


# virtual methods
.method public build(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mService:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {p0}, Lcom/oculus/horizon/service/result/ResultBuilder;->getClassForLogging()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/service/OVRService;->logRequestBundle(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mClock:Lcom/oculus/time/Clock;

    invoke-virtual {v0}, Lcom/oculus/time/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mService:Lcom/oculus/horizon/service/OVRService;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/OVRService;->maybeGetErrorBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service/result/ResultBuilder;->setError(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 63
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mErrorBundle:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 64
    iget-object v1, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mService:Lcom/oculus/horizon/service/OVRService;

    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mClock:Lcom/oculus/time/Clock;

    .line 65
    invoke-virtual {v0}, Lcom/oculus/time/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {p0}, Lcom/oculus/horizon/service/result/ResultBuilder;->getClassForLogging()Ljava/lang/Class;

    move-result-object v6

    move-object v2, p1

    .line 64
    invoke-virtual/range {v1 .. v6}, Lcom/oculus/horizon/service/OVRService;->logResponseBundle(Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/Class;)V

    .line 78
    :cond_0
    :goto_2
    return-object v3

    .line 56
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mCallerUtils:Lcom/oculus/horizon/service/CallerUtils;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/service/CallerUtils;->getCallingPackage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/service/result/ResultBuilder;->getResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/service/result/ResultBuilder;->setError(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mService:Lcom/oculus/horizon/service/OVRService;

    iget-object v1, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mErrorBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/oculus/horizon/service/result/ResultBuilder;->getClassForLogging()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/oculus/horizon/service/OVRService;->logErrorBundle(Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mErrorBundle:Landroid/os/Bundle;

    if-eq v3, v0, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "ResultBuilder has an error but result is not set to the error, fixing."

    .line 72
    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mErrorBundle:Landroid/os/Bundle;

    goto :goto_2
.end method

.method public didError()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mErrorBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassForLogging()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mErrorBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mErrorBundle:Landroid/os/Bundle;

    const-string v1, "error_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract getResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public setError(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mErrorBundle:Landroid/os/Bundle;

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/service/result/ResultBuilder;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public setError(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "ResultBuilder error has been set to: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {p1, p2, p3}, Lcom/oculus/platform/util/Util;->makeErrorResult(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/service/result/ResultBuilder;->setError(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
