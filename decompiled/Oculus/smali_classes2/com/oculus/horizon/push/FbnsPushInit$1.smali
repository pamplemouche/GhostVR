.class Lcom/oculus/horizon/push/FbnsPushInit$1;
.super Ljava/lang/Object;
.source "FbnsPushInit.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/push/FbnsPushInit;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/push/FbnsPushInit;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/push/FbnsPushInit;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oculus/horizon/push/FbnsPushInit$1;->this$0:Lcom/oculus/horizon/push/FbnsPushInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/push/FbnsPushInit$1;->this$0:Lcom/oculus/horizon/push/FbnsPushInit;

    invoke-static {v0}, Lcom/oculus/horizon/push/FbnsPushInit;->access$000(Lcom/oculus/horizon/push/FbnsPushInit;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/push/FbnsPushInit$1;->this$0:Lcom/oculus/horizon/push/FbnsPushInit;

    invoke-static {v0}, Lcom/oculus/horizon/push/FbnsPushInit;->access$000(Lcom/oculus/horizon/push/FbnsPushInit;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "@fb.com"

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "@ghostvr.pamplemouche.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    :cond_0
    const/4 v2, 0x1

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/push/FbnsPushInit$1;->this$0:Lcom/oculus/horizon/push/FbnsPushInit;

    invoke-static {v0}, Lcom/oculus/horizon/push/FbnsPushInit;->access$100(Lcom/oculus/horizon/push/FbnsPushInit;)Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/unifiedtelemetry/unifiedlogging/utils/TelemetryStateMonitor;->isTelemetryStateOff()Z

    move-result v0

    if-eqz v0, :cond_1

    move v5, v7

    .line 57
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/push/FbnsPushInit$1;->this$0:Lcom/oculus/horizon/push/FbnsPushInit;

    .line 58
    invoke-static {v0}, Lcom/oculus/horizon/push/FbnsPushInit;->access$200(Lcom/oculus/horizon/push/FbnsPushInit;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/oculus/horizon/push/FbnsPushInit$1;->this$0:Lcom/oculus/horizon/push/FbnsPushInit;

    .line 61
    invoke-static {v3}, Lcom/oculus/horizon/push/FbnsPushInit;->access$200(Lcom/oculus/horizon/push/FbnsPushInit;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oculus/util/device/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    move v6, v5

    .line 57
    invoke-static/range {v0 .. v7}, Lcom/facebook/rti/push/client/FbnsClient;->configureAnalytics(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;IIIZ)V

    .line 66
    invoke-static {}, Lcom/oculus/horizon/push/FbnsPushInit;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FbnsClient.enableAndInit()"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/push/FbnsPushInit$1;->this$0:Lcom/oculus/horizon/push/FbnsPushInit;

    invoke-static {v0}, Lcom/oculus/horizon/push/FbnsPushInit;->access$200(Lcom/oculus/horizon/push/FbnsPushInit;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "onCreate"

    iget-object v2, p0, Lcom/oculus/horizon/push/FbnsPushInit$1;->this$0:Lcom/oculus/horizon/push/FbnsPushInit;

    invoke-static {v2}, Lcom/oculus/horizon/push/FbnsPushInit;->access$200(Lcom/oculus/horizon/push/FbnsPushInit;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/push/client/FbnsClient;->enableAndInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return v7

    .line 55
    :cond_1
    const/16 v5, 0xa

    goto :goto_1

    :cond_2
    move v2, v7

    goto :goto_0
.end method
