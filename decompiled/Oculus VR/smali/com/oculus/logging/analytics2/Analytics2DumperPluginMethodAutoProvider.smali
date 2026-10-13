.class public Lcom/oculus/logging/analytics2/Analytics2DumperPluginMethodAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "Analytics2DumperPluginMethodAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;",
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
.method public get()Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;
    .locals 2

    .prologue
    .line 16
    const-string v0, "getMethod_com.facebook.analytics2.dumper.Analytics2DumperPlugin"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    .line 20
    invoke-static {p0}, Lcom/oculus/logging/analytics2/Analytics2LoggerModule;->$ul_$xXXcom_facebook_analytics2_logger_Analytics2Logger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/analytics2/logger/Analytics2Logger;

    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/oculus/logging/analytics2/Analytics2LoggerModule;->provideAnalytics2DumperPlugin(Landroid/content/Context;Lcom/facebook/analytics2/logger/Analytics2Logger;)Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/oculus/logging/analytics2/Analytics2DumperPluginMethodAutoProvider;->get()Lcom/facebook/analytics2/dumper/Analytics2DumperPlugin;

    move-result-object v0

    return-object v0
.end method
