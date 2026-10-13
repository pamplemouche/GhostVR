.class Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$4;
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

    .line 612
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$4;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 615
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$4;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$4;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$900(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
