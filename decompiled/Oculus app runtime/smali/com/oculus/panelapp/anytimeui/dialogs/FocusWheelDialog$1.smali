.class Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog$1;
.super Ljava/lang/Object;
.source "FocusWheelDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    return-void
.end method
