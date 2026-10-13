.class public Lcom/oculus/panelapp/dialog/DialogPanelService;
.super Lcom/oculus/vrshell/panelservice/PanelService;
.source "DialogPanelService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mDialogPanelApp:Lcom/oculus/panelapp/dialog/DialogPanelApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/oculus/panelapp/dialog/DialogPanelService;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/dialog/DialogPanelService;->TAG:Ljava/lang/String;

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

    .line 25
    new-instance v6, Lcom/oculus/panelapp/dialog/DialogPanelApp;

    .line 27
    invoke-virtual {p0}, Lcom/oculus/panelapp/dialog/DialogPanelService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/panelapp/dialog/DialogPanelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/dialog/DialogPanelApp;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    iput-object v6, p0, Lcom/oculus/panelapp/dialog/DialogPanelService;->mDialogPanelApp:Lcom/oculus/panelapp/dialog/DialogPanelApp;

    .line 28
    iget-object p1, p0, Lcom/oculus/panelapp/dialog/DialogPanelService;->mDialogPanelApp:Lcom/oculus/panelapp/dialog/DialogPanelApp;

    invoke-virtual {p1}, Lcom/oculus/panelapp/dialog/DialogPanelApp;->getNativePointer()J

    move-result-wide p1

    return-wide p1
.end method

.method public onCreate()V
    .locals 1

    const-string v0, "vrshelldialogpanel"

    .line 16
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    invoke-super {p0}, Lcom/oculus/vrshell/panelservice/PanelService;->onCreate()V

    return-void
.end method
