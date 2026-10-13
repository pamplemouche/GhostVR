.class Lcom/oculus/autoupdates/AutoUpdateJobService$1;
.super Ljava/lang/Object;
.source "AutoUpdateJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/autoupdates/AutoUpdateJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/autoupdates/AutoUpdateJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/oculus/autoupdates/AutoUpdateJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oculus/autoupdates/AutoUpdateJobService$1;->this$0:Lcom/oculus/autoupdates/AutoUpdateJobService;

    iput-object p2, p0, Lcom/oculus/autoupdates/AutoUpdateJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdateJobService$1;->this$0:Lcom/oculus/autoupdates/AutoUpdateJobService;

    invoke-static {v0}, Lcom/oculus/autoupdates/AutoUpdateJobService;->access$000(Lcom/oculus/autoupdates/AutoUpdateJobService;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/util/device/DeviceUtils;->isStandAloneDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdateJobService$1;->this$0:Lcom/oculus/autoupdates/AutoUpdateJobService;

    .line 62
    invoke-static {v0}, Lcom/oculus/autoupdates/AutoUpdateJobService;->access$100(Lcom/oculus/autoupdates/AutoUpdateJobService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 63
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 64
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdateJobService$1;->this$0:Lcom/oculus/autoupdates/AutoUpdateJobService;

    invoke-static {v0}, Lcom/oculus/autoupdates/AutoUpdateJobService;->access$200(Lcom/oculus/autoupdates/AutoUpdateJobService;)Lcom/oculus/autoupdates/AutoUpdatesManager;

    move-result-object v0

    sget-object v1, Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;->BATTERY_TOO_LOW:Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;

    invoke-virtual {v0, v1}, Lcom/oculus/autoupdates/AutoUpdatesManager;->logBailingFromAutoUpdateCheck(Lcom/oculus/autoupdates/AutoUpdatesManager$AutoUpdateBlocker;)V

    .line 67
    invoke-static {}, Lcom/oculus/autoupdates/AutoUpdateJobService;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Battery level too low to initiate auto-update, bailing now."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdateJobService$1;->this$0:Lcom/oculus/autoupdates/AutoUpdateJobService;

    iget-object v1, p0, Lcom/oculus/autoupdates/AutoUpdateJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lcom/oculus/autoupdates/AutoUpdateJobService;->access$400(Lcom/oculus/autoupdates/AutoUpdateJobService;Landroid/app/job/JobParameters;)V

    .line 86
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/oculus/autoupdates/AutoUpdateJobService$1;->this$0:Lcom/oculus/autoupdates/AutoUpdateJobService;

    invoke-static {v0}, Lcom/oculus/autoupdates/AutoUpdateJobService;->access$200(Lcom/oculus/autoupdates/AutoUpdateJobService;)Lcom/oculus/autoupdates/AutoUpdatesManager;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/oculus/autoupdates/AutoUpdatesManager;->checkForUpdatesAndInstallIfNecessary()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/autoupdates/AutoUpdateJobService$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/autoupdates/AutoUpdateJobService$1$1;-><init>(Lcom/oculus/autoupdates/AutoUpdateJobService$1;)V

    .line 76
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_0
.end method
