.class public final Lcom/oculus/panelapp/dialog/DialogPanelApp;
.super Ljava/lang/Object;
.source "DialogPanelApp.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field private final mNativePanelApp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/oculus/panelapp/dialog/DialogPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/dialog/DialogPanelApp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 2
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object p1, Lcom/oculus/panelapp/dialog/DialogPanelApp;->TAG:Ljava/lang/String;

    const-string v0, "DialogPanelApp()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-object p2, p0, Lcom/oculus/panelapp/dialog/DialogPanelApp;->mContext:Landroid/content/Context;

    .line 30
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 31
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 32
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    const-string v0, "#main"

    aput-object v0, p1, p2

    .line 34
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [Landroid/view/Surface;

    .line 35
    invoke-interface {p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/view/Surface;

    .line 36
    array-length p4, p2

    add-int/lit8 p4, p4, -0x1

    aput-object p3, p2, p4

    .line 38
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {p5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p4, p4, [Ljava/lang/String;

    .line 47
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/panelapp/dialog/DialogPanelApp;->nativeCreateInstance([Ljava/lang/String;[Landroid/view/Surface;[Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oculus/panelapp/dialog/DialogPanelApp;->mNativePanelApp:J

    return-void
.end method

.method private native nativeCreateInstance([Ljava/lang/String;[Landroid/view/Surface;[Ljava/lang/String;)J
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/oculus/panelapp/dialog/DialogPanelApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomDialogDefinitionForCommonSystemDialog(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 63
    sget-object v0, Lcom/oculus/panelapp/dialog/DialogPanelApp;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Getting common system dialog definition for dialog ID \"%s\"."

    .line 65
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p1}, Lcom/oculus/systemdialog/CommonSystemDialog;->getCommonSystemDialog(Ljava/lang/String;)Lcom/oculus/systemdialog/CommonSystemDialog;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/oculus/panelapp/dialog/DialogPanelApp;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "Unable to find common system dialog with id \"%s\"."

    .line 74
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 79
    :cond_0
    sget-object p1, Lcom/oculus/panelapp/dialog/DialogPanelApp$1;->$SwitchMap$com$oculus$systemdialog$CommonSystemDialog:[I

    invoke-virtual {v0}, Lcom/oculus/systemdialog/CommonSystemDialog;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_1

    .line 83
    sget-object p1, Lcom/oculus/panelapp/dialog/DialogPanelApp;->TAG:Ljava/lang/String;

    const-string v0, "Common system dialog should not be null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 81
    :cond_1
    new-instance p1, Lcom/oculus/panelapp/dialog/commonsystemdialogs/GuardianAdjustDialogDefinition;

    iget-object v0, p0, Lcom/oculus/panelapp/dialog/DialogPanelApp;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oculus/panelapp/dialog/commonsystemdialogs/GuardianAdjustDialogDefinition;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/oculus/panelapp/dialog/commonsystemdialogs/GuardianAdjustDialogDefinition;->getDialogConfigurationIPCParcel()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getNativePointer()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/oculus/panelapp/dialog/DialogPanelApp;->mNativePanelApp:J

    return-wide v0
.end method
