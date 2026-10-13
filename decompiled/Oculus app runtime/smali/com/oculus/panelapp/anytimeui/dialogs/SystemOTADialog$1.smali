.class Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog$1;
.super Ljava/lang/Object;
.source "SystemOTADialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemOTA dialog dismissed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SystemOTADialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    const-string v0, "ok"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
