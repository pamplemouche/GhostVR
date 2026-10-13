.class public Lcom/oculus/panelapp/dogfood/DogfoodPanelService;
.super Lcom/oculus/vrshell/panelservice/PanelService;
.source "DogfoodPanelService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelService;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/oculus/vrshell/panelservice/PanelService;-><init>()V

    return-void
.end method


# virtual methods
.method protected createNativePanelAppInstance(Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/os/Bundle;",
            ")J"
        }
    .end annotation

    .line 26
    new-instance v6, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    .line 28
    invoke-virtual {p0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    iput-object v6, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelService;->mApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    .line 29
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelService;->mApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    invoke-virtual {p1}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->inflateDefaultLayers()V

    .line 30
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelService;->mApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    invoke-virtual {p1}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->initializeBroadcastReceiver()V

    .line 31
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelService;->mApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    invoke-virtual {p1}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->getNativePointer()J

    move-result-wide p1

    return-wide p1
.end method

.method public onCreate()V
    .locals 1

    const-string v0, "vrshelldogfoodpanel"

    .line 19
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    invoke-super {p0}, Lcom/oculus/vrshell/panelservice/PanelService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/oculus/vrshell/panelservice/PanelService;->onDestroy()V

    .line 44
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelService;->mApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    invoke-virtual {v0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->onDestroy()V

    return-void
.end method

.method protected onShellTokenReady(Landroid/os/IBinder;)V
    .locals 2

    .line 36
    sget-object v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelService;->TAG:Ljava/lang/String;

    const-string v1, "App token received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelService;->mApp:Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->onShellTokenReady(Landroid/os/IBinder;)V

    return-void
.end method
