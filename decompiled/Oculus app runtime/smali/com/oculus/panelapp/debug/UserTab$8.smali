.class Lcom/oculus/panelapp/debug/UserTab$8;
.super Landroid/os/ResultReceiver;
.source "UserTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab;->setLoginStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/UserTab;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab;Landroid/os/Handler;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$8;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 342
    iget-object p2, p0, Lcom/oculus/panelapp/debug/UserTab$8;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    new-instance v0, Lcom/oculus/panelapp/debug/UserTab$8$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/panelapp/debug/UserTab$8$1;-><init>(Lcom/oculus/panelapp/debug/UserTab$8;I)V

    invoke-virtual {p2, v0}, Lcom/oculus/panelapp/debug/UserTab;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
