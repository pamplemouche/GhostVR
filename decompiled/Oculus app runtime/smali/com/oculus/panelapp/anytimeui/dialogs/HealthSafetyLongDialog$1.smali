.class Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$1;
.super Ljava/lang/Object;
.source "HealthSafetyLongDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;)I

    move-result p1

    if-nez p1, :cond_0

    .line 39
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HealthSafetyLongDialog dialog dismissed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyLongDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
