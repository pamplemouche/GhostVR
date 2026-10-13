.class public final Lcom/oculus/panelapp/debug/SystemTooltipTab;
.super Landroid/widget/LinearLayout;
.source "SystemTooltipTab.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
    .locals 3

    .line 19
    sget v0, Lcom/oculus/panelapp/debug/R$id;->debug_tab_system_tooltip:I

    const-string v1, "system_tooltip"

    const-string v2, "System Tooltip"

    invoke-virtual {p2, v1, v2, v0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    invoke-virtual {p1}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->getSystemTooltipController()Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/debug/R$id;->tooltip_text:I

    sget v0, Lcom/oculus/panelapp/debug/R$id;->tooltip_data:I

    const-string v1, "#main"

    .line 23
    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipController;->initializeTooltipsOnSubtree(Landroid/view/View;Ljava/lang/String;II)V

    return-void
.end method
