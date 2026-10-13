.class Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$1;
.super Ljava/lang/Object;
.source "ControllerRecenterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "opt-out"

    goto :goto_0

    :cond_0
    const-string p1, "opt-in"

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
