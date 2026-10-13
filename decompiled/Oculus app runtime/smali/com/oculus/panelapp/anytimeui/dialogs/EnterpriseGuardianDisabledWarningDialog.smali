.class public final Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "EnterpriseGuardianDisabledWarningDialog.java"


# static fields
.field private static final DIALOG_DURATION:J = 0x1770L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;->TAG:Ljava/lang/String;

    const-string p2, "EnterpriseGuardianDisabledWarningDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "black"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionSetBackground(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;)V

    .line 37
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog$1;->start()V

    return-void
.end method
