.class Lcom/oculus/panelapp/debug/ControllerRepairingTab;
.super Landroid/widget/LinearLayout;
.source "ControllerRepairingTab.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/oculus/panelapp/debug/ControllerRepairingTab;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/debug/ControllerRepairingTab;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/oculus/panelapp/debug/ControllerRepairingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/oculus/panelapp/debug/ControllerRepairingTab;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
    .locals 2

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/ControllerRepairingTab;->setVisibility(I)V

    .line 30
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_controller_repairing:I

    const-string v0, "controller_repairing"

    const-string v1, "Controller Repairing"

    invoke-virtual {p2, v0, v1, p1}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    sget p1, Lcom/oculus/panelapp/debug/R$id;->controller_repairing_left_controller_button:I

    .line 34
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/ControllerRepairingTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 35
    sget p2, Lcom/oculus/panelapp/debug/R$id;->controller_repairing_right_controller_button:I

    .line 36
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/debug/ControllerRepairingTab;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 38
    new-instance v0, Lcom/oculus/panelapp/debug/ControllerRepairingTab$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/debug/ControllerRepairingTab$1;-><init>(Lcom/oculus/panelapp/debug/ControllerRepairingTab;)V

    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance p1, Lcom/oculus/panelapp/debug/ControllerRepairingTab$2;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/debug/ControllerRepairingTab$2;-><init>(Lcom/oculus/panelapp/debug/ControllerRepairingTab;)V

    invoke-virtual {p2, p1}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
