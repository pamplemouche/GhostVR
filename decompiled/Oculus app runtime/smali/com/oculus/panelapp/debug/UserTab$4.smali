.class Lcom/oculus/panelapp/debug/UserTab$4;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab;->setLoginUIState(Lcom/oculus/panelapp/debug/ShellDebugPanelApp;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/UserTab;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$4;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 214
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$4;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-static {p1}, Lcom/oculus/panelapp/debug/UserTab;->access$200(Lcom/oculus/panelapp/debug/UserTab;)Lcom/oculus/authapi/OVRAuth;

    move-result-object p1

    new-instance v0, Lcom/oculus/panelapp/debug/UserTab$4$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/panelapp/debug/UserTab$4$1;-><init>(Lcom/oculus/panelapp/debug/UserTab$4;Landroid/os/Handler;)V

    invoke-virtual {p1, v0}, Lcom/oculus/authapi/OVRAuth;->logout(Landroid/os/ResultReceiver;)V

    return-void
.end method
