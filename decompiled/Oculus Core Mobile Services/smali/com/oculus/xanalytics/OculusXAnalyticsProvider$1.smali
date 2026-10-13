.class Lcom/oculus/xanalytics/OculusXAnalyticsProvider$1;
.super Ljava/lang/Object;
.source "OculusXAnalyticsProvider.java"

# interfaces
.implements Lcom/facebook/xanalytics/XAnalyticsAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/xanalytics/OculusXAnalyticsProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/xanalytics/OculusXAnalyticsProvider;


# direct methods
.method constructor <init>(Lcom/oculus/xanalytics/OculusXAnalyticsProvider;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/oculus/xanalytics/OculusXAnalyticsProvider$1;->this$0:Lcom/oculus/xanalytics/OculusXAnalyticsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public getStructureSamplingConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, ""

    return-object v0
.end method

.method public logCounter(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZD)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/xanalytics/OculusXAnalyticsProvider$1;->this$0:Lcom/oculus/xanalytics/OculusXAnalyticsProvider;

    invoke-static {v0}, Lcom/oculus/xanalytics/OculusXAnalyticsProvider;->access$000(Lcom/oculus/xanalytics/OculusXAnalyticsProvider;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    invoke-interface {v0, p1, p2, p4}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/oculus/logging/utils/Event;->logAndRelease()V

    .line 30
    return-void
.end method

.method public logEventBypassSampling(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/xanalytics/OculusXAnalyticsProvider$1;->this$0:Lcom/oculus/xanalytics/OculusXAnalyticsProvider;

    invoke-static {v0}, Lcom/oculus/xanalytics/OculusXAnalyticsProvider;->access$000(Lcom/oculus/xanalytics/OculusXAnalyticsProvider;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Lcom/oculus/logging/utils/Event;->setXplatTagForInternalUse()V

    .line 39
    invoke-interface {v0}, Lcom/oculus/logging/utils/Event;->logAndRelease()V

    .line 36
    return-void
.end method

.method public shouldLog(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
