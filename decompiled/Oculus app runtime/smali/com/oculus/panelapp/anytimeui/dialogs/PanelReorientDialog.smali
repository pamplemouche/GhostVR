.class public Lcom/oculus/panelapp/anytimeui/dialogs/PanelReorientDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "PanelReorientDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/PanelReorientDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PanelReorientDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/PanelReorientDialog;->TAG:Ljava/lang/String;

    const-string p2, "dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 24
    invoke-super {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->initialize()V

    .line 26
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/PanelReorientDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->QUEST:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    if-ne v0, v1, :cond_0

    .line 27
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->panel_reorient_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/PanelReorientDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 29
    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->panel_reorient_dialog_instructions_quest:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
