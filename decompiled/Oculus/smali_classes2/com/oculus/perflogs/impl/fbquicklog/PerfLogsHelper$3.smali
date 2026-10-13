.class Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$3;
.super Ljava/lang/Object;
.source "PerfLogsHelper.java"

# interfaces
.implements Lcom/facebook/quicklog/DebugAndTestConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;->createDebugAndTestConfig()Lcom/facebook/quicklog/DebugAndTestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;


# direct methods
.method constructor <init>(Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$3;->this$0:Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAnalyticsLoggingDisabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 107
    sget v0, Lcom/oculus/debug/DebugModule$UL_id;->$ul_$xXXcom_oculus_debug_DebugMode$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$3;->this$0:Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;

    invoke-static {v2}, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;->access$000(Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/debug/DebugMode;

    invoke-virtual {v0}, Lcom/oculus/debug/DebugMode;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutputToLogcatEnabled()Lcom/facebook/common/util/TriState;
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x1

    sget v1, Lcom/oculus/debug/DebugModule$UL_id;->$ul_$xXXcom_oculus_debug_DebugMode$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$3;->this$0:Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;

    invoke-static {v2}, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;->access$000(Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/debug/DebugMode;

    invoke-virtual {v0}, Lcom/oculus/debug/DebugMode;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    goto :goto_0
.end method

.method public isPerfLoggingDisabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 112
    sget v0, Lcom/oculus/debug/DebugModule$UL_id;->$ul_$xXXcom_oculus_debug_DebugMode$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$3;->this$0:Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;

    invoke-static {v2}, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;->access$000(Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/debug/DebugMode;

    invoke-virtual {v0}, Lcom/oculus/debug/DebugMode;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunningInPerfTest()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isSendingAllMarkersEnabled()Lcom/facebook/common/util/TriState;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/oculus/perflogs/impl/fbquicklog/PerfLogsHelper$3;->isOutputToLogcatEnabled()Lcom/facebook/common/util/TriState;

    move-result-object v0

    return-object v0
.end method
