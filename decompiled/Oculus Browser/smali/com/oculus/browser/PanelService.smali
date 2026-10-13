.class public Lcom/oculus/browser/PanelService;
.super Lcom/oculus/vrshell/panelservice/PanelService;
.source "PG"


# static fields
.field public static final TAG:Ljava/lang/String; = "PanelService"


# instance fields
.field public mApplication:Lcom/oculus/browser/HydraApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/vrshell/panelservice/PanelService;-><init>()V

    return-void
.end method


# virtual methods
.method public createNativePanelAppInstance(Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)J
    .locals 3

    .line 1
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PanelService"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/oculus/browser/ShellEnvironment;

    invoke-direct {v0, p3}, Lcom/oculus/browser/ShellEnvironment;-><init>(Landroid/os/Bundle;)V

    .line 3
    iget-object p3, p0, Lcom/oculus/browser/PanelService;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {p3, v0}, Lcom/oculus/browser/HydraApplication;->prePanelAppInitialize(Lcom/oculus/browser/ShellEnvironment;)V

    .line 4
    new-instance p3, Lcom/oculus/browser/PanelApp;

    iget-object v1, p0, Lcom/oculus/browser/PanelService;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-direct {p3, v1, p1, p2, v0}, Lcom/oculus/browser/PanelApp;-><init>(Lcom/oculus/browser/HydraApplication;Landroid/view/Surface;Ljava/util/Map;Lcom/oculus/browser/ShellEnvironment;)V

    .line 5
    iget-object p1, p0, Lcom/oculus/browser/PanelService;->mApplication:Lcom/oculus/browser/HydraApplication;

    invoke-virtual {p1}, Lcom/oculus/browser/HydraApplication;->postPanelAppInitialize()V

    .line 6
    invoke-virtual {p3}, Lcom/oculus/browser/PanelApp;->getNativePointer()J

    move-result-wide p1

    return-wide p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/oculus/browser/HydraApplication;

    iput-object v0, p0, Lcom/oculus/browser/PanelService;->mApplication:Lcom/oculus/browser/HydraApplication;

    .line 2
    invoke-super {p0}, Lcom/oculus/vrshell/panelservice/PanelService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/oculus/vrshell/panelservice/PanelService;->onDestroy()V

    return-void
.end method
