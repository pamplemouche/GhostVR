.class public final Lcom/oculus/panelapp/debug/ShellDebugView;
.super Landroid/widget/LinearLayout;
.source "ShellDebugView.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ViewState$Listener;


# static fields
.field private static final TAB_IDS:[I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCoExTab:Lcom/oculus/panelapp/debug/CoExTab;

.field private mKeyboardHandler:Lcom/oculus/panelapp/debug/KeyboardHandler;

.field private mPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

.field private mSettingsIPC:Lcom/oculus/panelapp/debug/SettingsIPC;

.field private mTabHost:Lcom/oculus/vrshell/panels/views/ShellTabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const-class v0, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/debug/ShellDebugView;->TAG:Ljava/lang/String;

    const/16 v0, 0xc

    .line 18
    new-array v0, v0, [I

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_control:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_device:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_quick_launch:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_feature_flags:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_coex:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_tracking:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_xrsp:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_user:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_vrcast:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_system_dialog:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_system_tooltip:I

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_controller_repairing:I

    const/16 v2, 0xb

    aput v1, v0, v2

    sput-object v0, Lcom/oculus/panelapp/debug/ShellDebugView;->TAB_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getSettingsIPC()Lcom/oculus/panelapp/debug/SettingsIPC;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mSettingsIPC:Lcom/oculus/panelapp/debug/SettingsIPC;

    return-object v0
.end method

.method public initialize(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V
    .locals 5

    .line 38
    iput-object p1, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    .line 40
    sget v0, Lcom/oculus/panelapp/debug/R$id;->debug_panel_tabhost:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/debug/ShellDebugView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/vrshell/panels/views/ShellTabHost;

    iput-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mTabHost:Lcom/oculus/vrshell/panels/views/ShellTabHost;

    .line 41
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mTabHost:Lcom/oculus/vrshell/panels/views/ShellTabHost;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->setup()V

    .line 43
    new-instance v0, Lcom/oculus/panelapp/debug/SettingsIPC;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-direct {v0, v1}, Lcom/oculus/panelapp/debug/SettingsIPC;-><init>(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    iput-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mSettingsIPC:Lcom/oculus/panelapp/debug/SettingsIPC;

    .line 44
    new-instance v0, Lcom/oculus/panelapp/debug/KeyboardHandler;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    invoke-direct {v0, v1}, Lcom/oculus/panelapp/debug/KeyboardHandler;-><init>(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;)V

    iput-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mKeyboardHandler:Lcom/oculus/panelapp/debug/KeyboardHandler;

    .line 45
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/ShellDebugView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mKeyboardHandler:Lcom/oculus/panelapp/debug/KeyboardHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 47
    sget-object v0, Lcom/oculus/panelapp/debug/ShellDebugView;->TAB_IDS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 48
    invoke-virtual {p0, v3}, Lcom/oculus/panelapp/debug/ShellDebugView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;

    iget-object v4, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mTabHost:Lcom/oculus/vrshell/panels/views/ShellTabHost;

    invoke-interface {v3, p1, v4}, Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;->initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_0
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_coex:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/ShellDebugView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/debug/CoExTab;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mCoExTab:Lcom/oculus/panelapp/debug/CoExTab;

    return-void
.end method

.method public onAppPartyMembers(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mCoExTab:Lcom/oculus/panelapp/debug/CoExTab;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/debug/CoExTab;->setMembers(Ljava/lang/String;)V

    return-void
.end method

.method public onAppPartySystemParty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mCoExTab:Lcom/oculus/panelapp/debug/CoExTab;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/debug/CoExTab;->setPartyId(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mCoExTab:Lcom/oculus/panelapp/debug/CoExTab;

    invoke-virtual {v0, p2}, Lcom/oculus/panelapp/debug/CoExTab;->setLeaderId(Ljava/lang/String;)V

    const-string p2, "0"

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mCoExTab:Lcom/oculus/panelapp/debug/CoExTab;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/debug/CoExTab;->setMembers(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mCoExTab:Lcom/oculus/panelapp/debug/CoExTab;

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/debug/CoExTab;->setPeers(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceiveGetSettingResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mSettingsIPC:Lcom/oculus/panelapp/debug/SettingsIPC;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/panelapp/debug/SettingsIPC;->onReceiveGetSettingResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 75
    sget-object v0, Lcom/oculus/panelapp/debug/ShellDebugView;->TAB_IDS:[I

    iget-object v1, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mTabHost:Lcom/oculus/vrshell/panels/views/ShellTabHost;

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->getCurrentTab()I

    move-result v1

    aget v0, v0, v1

    sget v1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_control:I

    if-ne v0, v1, :cond_0

    .line 76
    sget v0, Lcom/oculus/panelapp/debug/R$id;->debug_tab_control:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/debug/ShellDebugView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/debug/ControlTab;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/debug/ControlTab;->onReceivePartyMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRemoteUsers(Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mCoExTab:Lcom/oculus/panelapp/debug/CoExTab;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/debug/CoExTab;->setPeers(Ljava/lang/String;)V

    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->SELECT:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewEnter(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->HOVER:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewExit(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public updateKeyboardCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mKeyboardHandler:Lcom/oculus/panelapp/debug/KeyboardHandler;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/debug/KeyboardHandler;->updateKeyboardCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateKeyboardText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/oculus/panelapp/debug/ShellDebugView;->mKeyboardHandler:Lcom/oculus/panelapp/debug/KeyboardHandler;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/debug/KeyboardHandler;->updateKeyboardText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
