.class Lcom/oculus/panelapp/debug/UserTab$4$1;
.super Landroid/os/ResultReceiver;
.source "UserTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/debug/UserTab$4;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab$4;Landroid/os/Handler;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$4$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$4;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$4$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$4;

    iget-object p1, p1, Lcom/oculus/panelapp/debug/UserTab$4;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    new-instance p2, Lcom/oculus/panelapp/debug/UserTab$4$1$1;

    invoke-direct {p2, p0}, Lcom/oculus/panelapp/debug/UserTab$4$1$1;-><init>(Lcom/oculus/panelapp/debug/UserTab$4$1;)V

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/debug/UserTab;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
