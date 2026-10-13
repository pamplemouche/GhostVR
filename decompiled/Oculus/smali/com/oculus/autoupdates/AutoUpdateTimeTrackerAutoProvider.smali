.class public Lcom/oculus/autoupdates/AutoUpdateTimeTrackerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "AutoUpdateTimeTrackerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/autoupdates/AutoUpdateTimeTracker;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/autoupdates/AutoUpdateTimeTracker;
    .locals 3

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.autoupdates.AutoUpdateTimeTracker"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/autoupdates/AutoUpdateTimeTracker;

    .line 19
    invoke-static {p0}, Lcom/oculus/time/Clock;->$ul_$xXXcom_oculus_time_Clock$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/time/Clock;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/autoupdates/AutoUpdateTimeTracker;-><init>(Lcom/oculus/time/Clock;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/oculus/autoupdates/AutoUpdateTimeTrackerAutoProvider;->get()Lcom/oculus/autoupdates/AutoUpdateTimeTracker;

    move-result-object v0

    return-object v0
.end method
