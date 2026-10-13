.class public final Lcom/oculus/panelapp/debug/ShellDebugPanelApp;
.super Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;
.source "ShellDebugPanelApp.java"


# static fields
.field private static final MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    const-class v0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->TAG:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v8, Lcom/oculus/panelapp/debug/R$style;->PanelAppTheme:I

    const-string v2, "#main"

    const/16 v3, 0x308

    const/16 v4, 0x190

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Landroid/content/Context;",
            "Landroid/view/Surface;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    return-void
.end method

.method private native nativeCreateInstance(JJ)J
.end method


# virtual methods
.method protected createNativeInstance()J
    .locals 4

    .line 33
    sget-object v0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v0, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->width:I

    int-to-long v0, v0

    sget-object v2, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v2, v2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->height:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->nativeCreateInstance(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected createViewForLayer(Ljava/lang/String;ILandroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 44
    sget-object v0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inflating view for viewIdentifier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x2203c5c

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "#main"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-nez p2, :cond_3

    .line 50
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;

    if-nez p1, :cond_2

    .line 54
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/debug/R$layout;->debug_panel:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/debug/ShellDebugView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;

    .line 55
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;

    invoke-virtual {p1, p0}, Lcom/oculus/panelapp/debug/ShellDebugView;->initialize(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    .line 56
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;

    return-object p1

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "trying to recreate main layer!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown layerName: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected getLayerSpec(Ljava/lang/String;I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
    .locals 0

    .line 38
    sget-object p1, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-object p1
.end method

.method protected getRequiresActivityToken()Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->isStandaloneVr()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSettingsIPC()Lcom/oculus/panelapp/debug/SettingsIPC;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;

    invoke-virtual {v0}, Lcom/oculus/panelapp/debug/ShellDebugView;->getSettingsIPC()Lcom/oculus/panelapp/debug/SettingsIPC;

    move-result-object v0

    return-object v0
.end method

.method public onAppPartyMembers(Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/debug/ShellDebugView;->onAppPartyMembers(Ljava/lang/String;)V

    return-void
.end method

.method public onAppPartySystemParty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/debug/ShellDebugView;->onAppPartySystemParty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveGetSettingResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/panelapp/debug/ShellDebugView;->onReceiveGetSettingResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/debug/ShellDebugView;->onReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteUsers(Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/debug/ShellDebugView;->onRemoteUsers(Ljava/lang/String;)V

    return-void
.end method

.method public updateKeyboardCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/debug/ShellDebugView;->updateKeyboardCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateKeyboardText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->mMainView:Lcom/oculus/panelapp/debug/ShellDebugView;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/debug/ShellDebugView;->updateKeyboardText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
