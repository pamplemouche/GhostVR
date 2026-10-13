.class Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$3;
.super Ljava/lang/Object;
.source "BrowserChoiceDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/BrowserChoiceDialog;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
