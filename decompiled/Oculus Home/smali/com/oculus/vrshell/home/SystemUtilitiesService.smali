.class public Lcom/oculus/vrshell/home/SystemUtilitiesService;
.super Lcom/oculus/vrshell/home/CommonService;
.source "SystemUtilitiesService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/oculus/modules/codegen/ServiceModule$ServiceType;->SYSTEM_UTILITIES:Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    invoke-direct {p0, v0}, Lcom/oculus/vrshell/home/CommonService;-><init>(Lcom/oculus/modules/codegen/ServiceModule$ServiceType;)V

    .line 11
    return-void
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 17
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "screen_capture_running"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const-string v0, "screen_capture_running"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/oculus/vrshell/home/module/ScreenCaptureModule;->broadcastIsScreenCaptureRunning(Z)V

    .line 20
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/vrshell/home/CommonService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
