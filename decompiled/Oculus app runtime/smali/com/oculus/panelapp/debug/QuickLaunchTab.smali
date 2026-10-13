.class public final Lcom/oculus/panelapp/debug/QuickLaunchTab;
.super Landroid/widget/FrameLayout;
.source "QuickLaunchTab.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;,
        Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickSystemUX;,
        Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickPanel;,
        Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickApp;,
        Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/debug/QuickLaunchTab;)Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab;->mAdapter:Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/debug/QuickLaunchTab;)Lcom/oculus/panelapp/debug/ShellDebugPanelApp;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab;->mPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    return-object p0
.end method


# virtual methods
.method public initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
    .locals 2

    .line 39
    check-cast p1, Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab;->mPanelApp:Lcom/oculus/panelapp/debug/ShellDebugPanelApp;

    .line 41
    sget p1, Lcom/oculus/panelapp/debug/R$id;->debug_tab_quick_launch:I

    const-string v0, "launch"

    const-string v1, "Launch"

    invoke-virtual {p2, v0, v1, p1}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget p1, Lcom/oculus/panelapp/debug/R$id;->quick_launch_list:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab;->mListView:Landroid/widget/ListView;

    .line 45
    new-instance p1, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;

    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/QuickLaunchTab;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;-><init>(Lcom/oculus/panelapp/debug/QuickLaunchTab;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab;->mAdapter:Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;

    .line 46
    iget-object p1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab;->mAdapter:Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->access$000(Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;)V

    .line 48
    iget-object p1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab;->mListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab;->mAdapter:Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
