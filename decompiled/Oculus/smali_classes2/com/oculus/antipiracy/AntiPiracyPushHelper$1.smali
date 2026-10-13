.class Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;
.super Ljava/lang/Object;
.source "AntiPiracyPushHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/antipiracy/AntiPiracyPushHelper;->disableDeveloperModeOnDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/antipiracy/AntiPiracyPushHelper;


# direct methods
.method constructor <init>(Lcom/oculus/antipiracy/AntiPiracyPushHelper;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyPushHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 36
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyPushHelper;

    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyPushHelper;->access$000(Lcom/oculus/antipiracy/AntiPiracyPushHelper;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyPushHelper;

    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyPushHelper;->access$000(Lcom/oculus/antipiracy/AntiPiracyPushHelper;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/util/device/DeviceUtils;->supportESig()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object v3

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyPushHelper;

    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyPushHelper;->access$100(Lcom/oculus/antipiracy/AntiPiracyPushHelper;)Lcom/oculus/antipiracy/AntiPiracyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/antipiracy/AntiPiracyManager;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    invoke-static {}, Lcom/oculus/antipiracy/AntiPiracyPushHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User is not Logged in"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyPushHelper;

    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyPushHelper;->access$300(Lcom/oculus/antipiracy/AntiPiracyPushHelper;)Lcom/oculus/antipiracy/AntiPiracyServiceScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/antipiracy/AntiPiracyServiceScheduler;->isJobScheduled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyPushHelper;

    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyPushHelper;->access$300(Lcom/oculus/antipiracy/AntiPiracyPushHelper;)Lcom/oculus/antipiracy/AntiPiracyServiceScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/antipiracy/AntiPiracyServiceScheduler;->cancelJobService()V

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyPushHelper;

    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyPushHelper;->access$100(Lcom/oculus/antipiracy/AntiPiracyPushHelper;)Lcom/oculus/antipiracy/AntiPiracyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/antipiracy/AntiPiracyManager;->isDeveloperModeEnabledOnDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyPushHelper;

    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyPushHelper;->access$100(Lcom/oculus/antipiracy/AntiPiracyPushHelper;)Lcom/oculus/antipiracy/AntiPiracyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/antipiracy/AntiPiracyManager;->performAntiPiracyKillSwitchAction()V

    .line 49
    :cond_4
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyPushHelper;

    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyPushHelper;->access$100(Lcom/oculus/antipiracy/AntiPiracyPushHelper;)Lcom/oculus/antipiracy/AntiPiracyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/antipiracy/AntiPiracyManager;->isDeveloperModeEnabledOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyPushHelper;

    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyPushHelper;->access$400(Lcom/oculus/antipiracy/AntiPiracyPushHelper;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    const-string v1, "oculus_anti_piracy_failed_to_revoke_developer_access"

    const/4 v2, 0x1

    .line 51
    invoke-interface {v0, v1, v3, v2}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;Ljava/lang/String;Z)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Lcom/oculus/logging/utils/Event;->logAndRelease()V

    .line 53
    iget-object v0, p0, Lcom/oculus/antipiracy/AntiPiracyPushHelper$1;->this$0:Lcom/oculus/antipiracy/AntiPiracyPushHelper;

    invoke-static {v0}, Lcom/oculus/antipiracy/AntiPiracyPushHelper;->access$300(Lcom/oculus/antipiracy/AntiPiracyPushHelper;)Lcom/oculus/antipiracy/AntiPiracyServiceScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/antipiracy/AntiPiracyServiceScheduler;->scheduleJobService()V

    goto :goto_0
.end method
