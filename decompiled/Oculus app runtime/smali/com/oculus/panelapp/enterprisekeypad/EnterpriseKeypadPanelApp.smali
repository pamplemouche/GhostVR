.class public final Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;
.super Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;
.source "EnterpriseKeypadPanelApp.java"


# static fields
.field private static final MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private adminPin:Ljava/lang/StringBuilder;

.field private enterpriseConfig:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;

.field private mMainView:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    const-class v0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->TAG:Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v8, Lcom/oculus/panelapp/enterprisekeypad/R$style;->PanelAppTheme:I

    const-string v2, "#main"

    const/16 v3, 0x140

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

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

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->adminPin:Ljava/lang/StringBuilder;

    .line 37
    invoke-static {p2}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;->readEnterprise(Landroid/content/Context;)Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->enterpriseConfig:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;

    return-void
.end method

.method private native nativeCreateInstance(JJ)J
.end method

.method private native nativeSetEnterpriseModeIndex(JI)V
.end method

.method private unlockMode(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->enterpriseConfig:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;

    iget-object v1, v1, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;->enterpriseModes:[Lcom/oculus/os/enterprise/Mode;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->enterpriseConfig:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;

    iget-object v1, v1, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;->enterpriseModes:[Lcom/oculus/os/enterprise/Mode;

    aget-object v1, v1, v0

    .line 136
    invoke-interface {v1}, Lcom/oculus/os/enterprise/Mode;->getPin()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    invoke-interface {v1}, Lcom/oculus/os/enterprise/Mode;->getPin()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->getNativePointer()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->nativeSetEnterpriseModeIndex(JI)V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected createNativeInstance()J
    .locals 4

    .line 96
    sget-object v0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v0, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->width:I

    int-to-long v0, v0

    sget-object v2, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v2, v2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->height:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->nativeCreateInstance(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected createViewForLayer(Ljava/lang/String;ILandroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 107
    sget-object v0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inflating view for viewIdentifier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
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

    .line 112
    iget-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->mMainView:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;

    if-nez p1, :cond_2

    .line 117
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/enterprisekeypad/R$layout;->enterprise_keypad_panel:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;

    iput-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->mMainView:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;

    .line 118
    iget-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->mMainView:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;

    invoke-virtual {p1, p0}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->initialize(Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;)V

    .line 119
    iget-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->mMainView:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;

    return-object p1

    .line 113
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "trying to recreate main layer!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
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

    .line 101
    sget-object p1, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-object p1
.end method

.method protected handleKeyboardCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x74a1474a

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const v0, -0x7190c196

    if-eq p1, v0, :cond_1

    const v0, -0x93b0ba1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "BACKSPACE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p1, "DISMISS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string p1, "ACTION_KEY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "quitAndHide"

    .line 85
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->queueRawCommand(Ljava/lang/String;)V

    goto :goto_2

    .line 76
    :cond_5
    iget-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->adminPin:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->unlockMode(Ljava/lang/String;)V

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->adminPin:Ljava/lang/StringBuilder;

    .line 79
    iget-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->mMainView:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;

    iget-object p2, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->adminPin:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->setCodeLength(I)V

    goto :goto_2

    .line 65
    :cond_6
    iget-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->adminPin:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    .line 69
    :cond_7
    iget-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->adminPin:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 70
    iget-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->mMainView:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;

    iget-object p2, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->adminPin:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->setCodeLength(I)V

    :goto_2
    return-void
.end method

.method protected handleKeyboardText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->adminPin:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->mMainView:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;

    iget-object p2, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->adminPin:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->setCodeLength(I)V

    return-void
.end method

.method public onForeground()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->onForeground()V

    .line 45
    iget-object v0, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadPanelApp;->mMainView:Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseKeypadView;->openKeyboard()V

    return-void
.end method
