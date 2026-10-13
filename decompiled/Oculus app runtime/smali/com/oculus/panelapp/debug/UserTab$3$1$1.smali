.class Lcom/oculus/panelapp/debug/UserTab$3$1$1;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab$3$1;->onResult(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab$3$1;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$1;->this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "DebugUserTab"

    const-string v1, "loginWithEmailAndPassword: success"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$3$1$1;->this$2:Lcom/oculus/panelapp/debug/UserTab$3$1;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$3;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$3;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/UserTab;->access$500(Lcom/oculus/panelapp/debug/UserTab;)V

    return-void
.end method
