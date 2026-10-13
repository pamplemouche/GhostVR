.class public Lcom/oculus/vrshell/home/CommonService;
.super Lcom/oculus/vrshell/panel/SingletonPanelService;
.source "CommonService.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field final mMainHandler:Landroid/os/Handler;

.field final mServiceType:Lcom/oculus/modules/codegen/ServiceModule$ServiceType;


# direct methods
.method public constructor <init>(Lcom/oculus/modules/codegen/ServiceModule$ServiceType;)V
    .locals 1
    .param p1, "serviceType"    # Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    .prologue
    .line 17
    const-string v0, "home"

    invoke-direct {p0, v0}, Lcom/oculus/vrshell/panel/SingletonPanelService;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/vrshell/home/CommonService;->mMainHandler:Landroid/os/Handler;

    .line 18
    iput-object p1, p0, Lcom/oculus/vrshell/home/CommonService;->mServiceType:Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/oculus/vrshell/panel/SingletonPanelService;->onCreate()V

    .line 24
    iget-object v0, p0, Lcom/oculus/vrshell/home/CommonService;->mServiceType:Lcom/oculus/modules/codegen/ServiceModule$ServiceType;

    iget-object v1, p0, Lcom/oculus/vrshell/home/CommonService;->mMainHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/oculus/vrshell/home/BaseService;->initialize(Landroid/content/Context;Lcom/oculus/modules/codegen/ServiceModule$ServiceType;Landroid/os/Handler;)V

    .line 25
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/oculus/vrshell/panel/SingletonPanelService;->onDestroy()V

    .line 36
    invoke-static {}, Lcom/oculus/vrshell/home/BaseService;->destroy()V

    .line 37
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/vrshell/panel/SingletonPanelService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 40
    invoke-static {p1}, Lcom/oculus/vrshell/home/BaseService;->onTrimMemory(I)V

    .line 41
    return-void
.end method
