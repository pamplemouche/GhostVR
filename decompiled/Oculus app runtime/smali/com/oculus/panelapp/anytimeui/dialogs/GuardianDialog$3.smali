.class Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$3;
.super Ljava/lang/Object;
.source "GuardianDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

.field final synthetic val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$3;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 602
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 603
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$400(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 604
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$500()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->updateDialogContents(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;)V

    goto :goto_0

    .line 606
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$3;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$800(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
