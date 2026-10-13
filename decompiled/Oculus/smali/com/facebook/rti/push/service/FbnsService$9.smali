.class Lcom/facebook/rti/push/service/FbnsService$9;
.super Ljava/lang/Object;
.source "FbnsService.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/push/service/FbnsService;->requestNewToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/push/service/FbnsService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/service/FbnsService;)V
    .locals 0

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsService$9;->this$0:Lcom/facebook/rti/push/service/FbnsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    .prologue
    .line 1073
    invoke-static {}, Lcom/facebook/rti/push/service/FbnsService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "service/register/publish/failed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$9;->this$0:Lcom/facebook/rti/push/service/FbnsService;

    iget-object v0, v0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->REQUEST_SENT_FAIL:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 1076
    return-void
.end method

.method public onSuccess(J)V
    .locals 3

    .prologue
    .line 1066
    invoke-static {}, Lcom/facebook/rti/push/service/FbnsService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "service/register/publish/success"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$9;->this$0:Lcom/facebook/rti/push/service/FbnsService;

    iget-object v0, v0, Lcom/facebook/rti/push/service/FbnsService;->mFbnsAnalyticsLogger:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;

    sget-object v1, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;->REQUEST_SENT_SUCCESS:Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/push/service/FbnsAnalyticsLogger;->reportFbnsRegistrationEvent(Lcom/facebook/rti/push/service/FbnsAnalyticsLogger$RegistrationEvent;Ljava/lang/String;)V

    .line 1069
    return-void
.end method
