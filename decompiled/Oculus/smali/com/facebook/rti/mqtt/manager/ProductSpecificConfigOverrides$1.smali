.class Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;
.super Landroid/content/BroadcastReceiver;
.source "ProductSpecificConfigOverrides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v7, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 73
    invoke-static {}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->general()Lcom/facebook/secure/switchoff/IntentSwitchOff;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/facebook/secure/switchoff/IntentSwitchOff;->check(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->getBroadcastActionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "extra_mqtt_endpoint"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    const-string v0, "extra_analytics_endpoint"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    const-string v0, "extra_fbns_endpoint"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    const-string v0, "extra_fbns_analytics_endpoint"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    .line 82
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcast received %s, %s, %s, %s"

    .line 81
    invoke-static/range {v0 .. v5}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    invoke-direct {v0, p1, v1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;Lcom/facebook/common/errorreporting/FbErrorReporter;)V

    .line 90
    invoke-virtual {v0, p2}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->verifySender(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    .line 92
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore unauthorized sender %s, %s, %s, %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v8

    aput-object v3, v6, v9

    aput-object v4, v6, v10

    aput-object v5, v6, v11

    .line 91
    invoke-static {v0, v1, v6}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    .line 100
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "unauthorized endpoint request to %s, %s, %s, %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v3, v7, v9

    aput-object v4, v7, v10

    aput-object v5, v7, v11

    .line 101
    invoke-static {v6, v7}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-interface {v0, v1, v2}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReportFailHarder(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    invoke-virtual {v0, v2}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->isLegitMqttEndpoint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    invoke-virtual {v0, v4}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->isLegitMqttEndpoint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    .line 110
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore illegal target endpoint switch %s, %s, %s, %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v8

    aput-object v3, v6, v9

    aput-object v4, v6, v10

    aput-object v5, v6, v11

    .line 109
    invoke-static {v0, v1, v6}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->mFbErrorReporter:Lcom/facebook/common/errorreporting/FbErrorReporter;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    .line 118
    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ignore illegal target endpoint switch %s, %s, %s, %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v3, v7, v9

    aput-object v4, v7, v10

    aput-object v5, v7, v11

    .line 119
    invoke-static {v6, v7}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-interface {v0, v1, v2}, Lcom/facebook/common/errorreporting/FbErrorReporter;->softReportFailHarder(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides$1;->this$0:Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;->setEndpoints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
