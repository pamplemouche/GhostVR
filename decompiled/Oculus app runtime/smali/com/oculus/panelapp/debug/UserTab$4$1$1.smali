.class Lcom/oculus/panelapp/debug/UserTab$4$1$1;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab$4$1;->onReceiveResult(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oculus/panelapp/debug/UserTab$4$1;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab$4$1;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$4$1$1;->this$2:Lcom/oculus/panelapp/debug/UserTab$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$4$1$1;->this$2:Lcom/oculus/panelapp/debug/UserTab$4$1;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$4$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$4;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$4;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/UserTab;->access$500(Lcom/oculus/panelapp/debug/UserTab;)V

    return-void
.end method
