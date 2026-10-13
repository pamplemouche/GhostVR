.class Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog$1;
.super Ljava/lang/Object;
.source "HealthSafetyDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/HealthSafetyDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    const-string v0, "ok"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
