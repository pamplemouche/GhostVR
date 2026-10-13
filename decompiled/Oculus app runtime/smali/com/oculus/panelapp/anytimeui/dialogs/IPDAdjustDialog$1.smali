.class Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$1;
.super Ljava/lang/Object;
.source "IPDAdjustDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->onActionButton()Z
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

    .line 188
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;

    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;->VERTICAL_VIDEO:Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog;Lcom/oculus/panelapp/anytimeui/dialogs/IPDAdjustDialog$IPDAdjustState;Z)V

    return-void
.end method
