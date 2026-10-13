.class Lcom/facebook/rti/push/service/FbnsService$7;
.super Ljava/lang/Object;
.source "FbnsService.java"

# interfaces
.implements Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/push/service/FbnsService;->bootstrapService()Lcom/facebook/rti/mqtt/manager/MqttBootstrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/push/service/FbnsService;

.field final synthetic val$analyticsSharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic val$isLoggingAnalyticsEventsEnabled:Z


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/service/FbnsService;ZLandroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsService$7;->this$0:Lcom/facebook/rti/push/service/FbnsService;

    iput-boolean p2, p0, Lcom/facebook/rti/push/service/FbnsService$7;->val$isLoggingAnalyticsEventsEnabled:Z

    iput-object p3, p0, Lcom/facebook/rti/push/service/FbnsService$7;->val$analyticsSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldBeSampled(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 409
    iget-boolean v1, p0, Lcom/facebook/rti/push/service/FbnsService$7;->val$isLoggingAnalyticsEventsEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService$7;->val$analyticsSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/facebook/rti/push/client/SharedPrefKeys;->ANALYTIC_IS_EMPLOYEE:Lcom/facebook/rti/push/client/SharedPrefKeys;

    .line 411
    invoke-virtual {v2}, Lcom/facebook/rti/push/client/SharedPrefKeys;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
