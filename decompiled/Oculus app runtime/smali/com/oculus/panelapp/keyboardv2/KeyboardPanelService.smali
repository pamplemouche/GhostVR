.class public Lcom/oculus/panelapp/keyboardv2/KeyboardPanelService;
.super Lcom/oculus/vrshell/panelservice/PanelService;
.source "KeyboardPanelService.java"


# static fields
.field private static TAG:Ljava/lang/String; = "KeyboardPanelService"


# instance fields
.field private mApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
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

    .line 23
    new-instance v6, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    .line 25
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    iput-object v6, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelService;->mApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    .line 26
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelService;->mApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->inflateDefaultLayers()V

    .line 27
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelService;->mApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->initializeKeyboard()V

    .line 28
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelService;->mApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getNativePointer()J

    move-result-wide p1

    return-wide p1
.end method

.method public onCreate()V
    .locals 1

    const-string v0, "vrshellkeyboardv2"

    .line 16
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    invoke-super {p0}, Lcom/oculus/vrshell/panelservice/PanelService;->onCreate()V

    return-void
.end method

.method protected onShellTokenReady(Landroid/os/IBinder;)V
    .locals 2

    .line 33
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelService;->TAG:Ljava/lang/String;

    const-string v1, "App token received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelService;->mApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->onShellTokenReady(Landroid/os/IBinder;)V

    return-void
.end method
