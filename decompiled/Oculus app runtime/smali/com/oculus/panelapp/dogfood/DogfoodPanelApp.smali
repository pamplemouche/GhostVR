.class public final Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;
.super Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;
.source "DogfoodPanelApp.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;

.field private mMainView:Lcom/oculus/panelapp/dogfood/DogfoodView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 19
    const-class v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->TAG:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v8, Lcom/oculus/panelapp/dogfood/R$style;->PanelAppTheme:I

    const-string v2, "#main"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V
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

    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    return-void
.end method

.method private native nativeCreateInstance(JJ)J
.end method

.method private native nativeSetPendingNavigation(JLjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public actionNavigate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 44
    sget-object v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionNavigate - App:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Uri:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->getNativePointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->nativeSetPendingNavigation(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createNativeInstance()J
    .locals 4

    .line 50
    sget-object v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v0, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->width:I

    int-to-long v0, v0

    sget-object v2, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v2, v2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->height:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->nativeCreateInstance(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected createViewForLayer(Ljava/lang/String;ILandroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 61
    sget-object v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inflating view for viewIdentifier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
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

    .line 67
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->mMainView:Lcom/oculus/panelapp/dogfood/DogfoodView;

    if-nez p1, :cond_2

    .line 71
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/dogfood/R$layout;->dogfood_panel:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/dogfood/DogfoodView;

    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->mMainView:Lcom/oculus/panelapp/dogfood/DogfoodView;

    .line 72
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->mMainView:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-virtual {p1, p0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->initialize(Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;)V

    .line 73
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->mMainView:Lcom/oculus/panelapp/dogfood/DogfoodView;

    return-object p1

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "trying to recreate main layer!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
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

    .line 55
    sget-object p1, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-object p1
.end method

.method initializeBroadcastReceiver()V
    .locals 3

    .line 32
    new-instance v0, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;

    iget-object v1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->mMainView:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-direct {v0, v1}, Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V

    iput-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->mBroadcastReceiver:Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oculus.updater.STATE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->mBroadcastReceiver:Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->mBroadcastReceiver:Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->mBroadcastReceiver:Lcom/oculus/panelapp/dogfood/DogfoodPanelBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
