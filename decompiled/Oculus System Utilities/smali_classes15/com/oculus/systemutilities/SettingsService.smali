.class public Lcom/oculus/systemutilities/SettingsService;
.super Lcom/oculus/vrshell/panel/SingletonPanelService;
.source "SettingsService.java"


# instance fields
.field final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "systemutilities"

    invoke-direct {p0, v0}, Lcom/oculus/vrshell/panel/SingletonPanelService;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/systemutilities/SettingsService;->mMainHandler:Landroid/os/Handler;

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0}, Lcom/oculus/vrshell/panel/SingletonPanelService;->onCreate()V

    .line 21
    sget-object v0, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;->SETTINGS:Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    iget-object v1, p0, Lcom/oculus/systemutilities/SettingsService;->mMainHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/oculus/systemutilities/BaseService;->initialize(Landroid/content/Context;Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;Landroid/os/Handler;)V

    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/oculus/vrshell/panel/SingletonPanelService;->onDestroy()V

    .line 27
    invoke-static {}, Lcom/oculus/systemutilities/BaseService;->destroy()V

    .line 28
    return-void
.end method
