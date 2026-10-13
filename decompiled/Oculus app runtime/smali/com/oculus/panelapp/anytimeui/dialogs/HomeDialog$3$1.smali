.class Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3$1;
.super Lcom/oculus/os/BugReporterServiceConnection;
.source "HomeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;

    invoke-direct {p0, p2, p3}, Lcom/oculus/os/BugReporterServiceConnection;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected onReportGenerated(Ljava/lang/String;)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bugReport-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
