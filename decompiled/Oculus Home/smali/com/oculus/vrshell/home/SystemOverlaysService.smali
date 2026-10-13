.class public Lcom/oculus/vrshell/home/SystemOverlaysService;
.super Lcom/oculus/vrshell/home/StartRenderingOverlaysService;
.source "SystemOverlaysService.java"


# instance fields
.field mMainHandler:Landroid/os/Handler;

.field mStopRenderingOverlaysReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "home"

    invoke-direct {p0, v0}, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/home/SystemOverlaysService;->mMainHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0}, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->onCreate()V

    .line 28
    sget-object v1, Lcom/oculus/modules/codegen/ServiceModule$ServiceType;->SYSTEM_OVERLAYS:Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    iget-object v2, p0, Lcom/oculus/vrshell/home/SystemOverlaysService;->mMainHandler:Landroid/os/Handler;

    invoke-static {p0, v1, v2}, Lcom/oculus/vrshell/home/BaseService;->initialize(Landroid/content/Context;Lcom/oculus/modules/codegen/ServiceModule$ServiceType;Landroid/os/Handler;)V

    .line 31
    invoke-static {p0}, Lcom/oculus/vrshell/home/OverlaysInputBlocker;->stopBlockingInput(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oculus.vrshell.home.STOP_RENDERING_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/oculus/vrshell/home/SystemOverlaysService$1;

    invoke-direct {v1, p0}, Lcom/oculus/vrshell/home/SystemOverlaysService$1;-><init>(Lcom/oculus/vrshell/home/SystemOverlaysService;)V

    iput-object v1, p0, Lcom/oculus/vrshell/home/SystemOverlaysService;->mStopRenderingOverlaysReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iget-object v1, p0, Lcom/oculus/vrshell/home/SystemOverlaysService;->mStopRenderingOverlaysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oculus/vrshell/home/SystemOverlaysService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->onDestroy()V

    .line 55
    invoke-static {}, Lcom/oculus/vrshell/home/BaseService;->destroy()V

    .line 56
    iget-object v0, p0, Lcom/oculus/vrshell/home/SystemOverlaysService;->mStopRenderingOverlaysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oculus/vrshell/home/SystemOverlaysService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    return-void
.end method
