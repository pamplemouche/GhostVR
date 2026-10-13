.class Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$1;
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

    .line 28
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 31
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;

    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/TestDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object p1

    const-string v0, "quit"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
