.class public final Lcom/oculus/panelapp/dialog/commonsystemdialogs/GuardianAdjustDialogDefinition;
.super Lcom/oculus/systemdialog/DialogDefinitionCustom;
.source "GuardianAdjustDialogDefinition.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 15
    sget-object v0, Lcom/oculus/systemdialog/CommonSystemDialog;->GUARDIAN_ADJUST:Lcom/oculus/systemdialog/CommonSystemDialog;

    .line 16
    invoke-virtual {v0}, Lcom/oculus/systemdialog/CommonSystemDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/dialog/R$string;->guardian_adjust_dialog_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/panelapp/dialog/R$string;->guardian_adjust_dialog_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/systemdialog/DialogDefinitionCustom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/oculus/systemdialog/DialogButtonText;

    sget v1, Lcom/oculus/panelapp/dialog/R$string;->guardian_adjust_dialog_roomscale:I

    .line 25
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "roomscale"

    invoke-direct {v0, v2, v1}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/dialog/commonsystemdialogs/GuardianAdjustDialogDefinition;->setPrimaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 26
    new-instance v0, Lcom/oculus/systemdialog/DialogButtonText;

    sget v1, Lcom/oculus/panelapp/dialog/R$string;->guardian_adjust_dialog_stationary:I

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stationary"

    invoke-direct {v0, v2, v1}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/dialog/commonsystemdialogs/GuardianAdjustDialogDefinition;->setSecondaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 30
    new-instance v0, Lcom/oculus/systemdialog/DialogButtonText;

    sget v1, Lcom/oculus/panelapp/dialog/R$string;->guardian_adjust_dialog_cancel:I

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cancel"

    invoke-direct {v0, v1, p1}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/dialog/commonsystemdialogs/GuardianAdjustDialogDefinition;->setTertiaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 36
    invoke-virtual {p0}, Lcom/oculus/panelapp/dialog/commonsystemdialogs/GuardianAdjustDialogDefinition;->stylePrimaryAsSecondary()V

    return-void
.end method
