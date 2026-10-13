.class Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$2;
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

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;Landroid/widget/CheckBox;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;->access$002(Lcom/oculus/panelapp/anytimeui/dialogs/ControllerRecenterDialog;Z)Z

    return-void
.end method
