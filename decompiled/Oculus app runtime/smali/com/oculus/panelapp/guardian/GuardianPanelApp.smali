.class public final Lcom/oculus/panelapp/guardian/GuardianPanelApp;
.super Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;
.source "GuardianPanelApp.java"


# static fields
.field private static final MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mMainView:Lcom/oculus/panelapp/guardian/GuardianView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    const-class v0, Lcom/oculus/panelapp/guardian/GuardianPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/guardian/GuardianPanelApp;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v8, Lcom/oculus/panelapp/guardian/R$style;->PanelAppTheme:I

    const-string v2, "#main"

    const/16 v3, 0x2bc

    const/16 v4, 0x190

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/guardian/GuardianPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

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
    sget-object v0, Lcom/oculus/panelapp/guardian/GuardianPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v0, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->width:I

    int-to-long v0, v0

    sget-object v2, Lcom/oculus/panelapp/guardian/GuardianPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v2, v2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->height:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/panelapp/guardian/GuardianPanelApp;->nativeCreateInstance(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected createViewForLayer(Ljava/lang/String;ILandroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 43
    sget-object v0, Lcom/oculus/panelapp/guardian/GuardianPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inflating view for viewIdentifier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
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

    .line 48
    iget-object p1, p0, Lcom/oculus/panelapp/guardian/GuardianPanelApp;->mMainView:Lcom/oculus/panelapp/guardian/GuardianView;

    if-nez p1, :cond_2

    .line 52
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/guardian/R$layout;->guardian_panel:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/guardian/GuardianView;

    iput-object p1, p0, Lcom/oculus/panelapp/guardian/GuardianPanelApp;->mMainView:Lcom/oculus/panelapp/guardian/GuardianView;

    .line 53
    iget-object p1, p0, Lcom/oculus/panelapp/guardian/GuardianPanelApp;->mMainView:Lcom/oculus/panelapp/guardian/GuardianView;

    invoke-virtual {p1, p0}, Lcom/oculus/panelapp/guardian/GuardianView;->initialize(Lcom/oculus/panelapp/guardian/GuardianPanelApp;)V

    .line 54
    iget-object p1, p0, Lcom/oculus/panelapp/guardian/GuardianPanelApp;->mMainView:Lcom/oculus/panelapp/guardian/GuardianView;

    return-object p1

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "trying to recreate main layer!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
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
    sget-object p1, Lcom/oculus/panelapp/guardian/GuardianPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-object p1
.end method
