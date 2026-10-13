.class Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$2;
.super Ljava/lang/Object;
.source "HealthSafetyLongDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;Landroid/os/Handler;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->access$010(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;)I

    .line 58
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;)I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$string;->health_safety_dialog_callout:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;)V

    .line 64
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$2;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
