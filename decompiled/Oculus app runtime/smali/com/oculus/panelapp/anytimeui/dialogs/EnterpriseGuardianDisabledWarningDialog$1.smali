.class Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog$1;
.super Ljava/lang/Thread;
.source "EnterpriseGuardianDisabledWarningDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1770

    .line 29
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "env resetBackground"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueRawCommand(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/EnterpriseGuardianDisabledWarningDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
