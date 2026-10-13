.class public Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "GenericSystemDialog.java"


# static fields
.field static final ACCEPT_DEFAULT_RESULT:Ljava/lang/String; = "accept"

.field static final CANCEL_DEFAULT_RESULT:Ljava/lang/String; = "cancel"

.field static final GEAR_DEFAULT_RESULT:Ljava/lang/String; = "gear"

.field static final MIDDLE_DEFAULT_RESULT:Ljava/lang/String; = "middle"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mStandardLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->TAG:Ljava/lang/String;

    const-string p2, "GenericSystemDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;)Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->mStandardLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    return-object p0
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 51
    sget v0, Lcom/oculus/panelapp/anytimeui/R$id;->system_dialog_layout:I

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->TAG:Ljava/lang/String;

    const-string v1, "GenericSystemDialog did not have an id \'@+id/system_dialog_layout\' defined for the layout."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_0
    instance-of v1, v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    if-nez v1, :cond_1

    .line 59
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->TAG:Ljava/lang/String;

    const-string v1, "GenericSystemDialog did not have a SystemDialogStandardLayout instance for id \'@+id/system_dialog_layout\'."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_1
    check-cast v0, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    iput-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->mStandardLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    .line 65
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->mStandardLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;)V

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->setOnCloseListener(Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout$OnButtonClickedListener;)V

    return-void
.end method

.method public onBackButton()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->mStandardLayout:Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/views/SystemDialogStandardLayout;->getBackResult()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/GenericSystemDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
