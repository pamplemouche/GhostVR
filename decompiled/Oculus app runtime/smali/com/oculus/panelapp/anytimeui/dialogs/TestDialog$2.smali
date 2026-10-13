.class Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$2;
.super Ljava/lang/Object;
.source "TestDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    return-void
.end method
