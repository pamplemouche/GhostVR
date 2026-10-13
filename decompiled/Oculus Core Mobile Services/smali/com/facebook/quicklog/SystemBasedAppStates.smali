.class public Lcom/facebook/quicklog/SystemBasedAppStates;
.super Ljava/lang/Object;
.source "SystemBasedAppStates.java"

# interfaces
.implements Lcom/facebook/quicklog/AppStates;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAppBackgroundedNow()Z
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->getInstance()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->isRateLimitedBackground()Z

    move-result v0

    return v0
.end method

.method public wasAppStartedInBackground()Lcom/facebook/common/util/TriState;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->getInstance()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->getWasAppStartedInTheBackground()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/TriState;->valueOf(Ljava/lang/Boolean;)Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method
