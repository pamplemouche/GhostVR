.class Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$2;
.super Ljava/lang/Object;
.source "IPDAdjustDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->goToDoneState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;)Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->DONE:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->setIPDAdjustState(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;Z)V

    return-void
.end method
