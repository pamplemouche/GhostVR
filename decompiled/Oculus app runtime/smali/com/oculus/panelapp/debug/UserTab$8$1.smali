.class Lcom/oculus/panelapp/debug/UserTab$8$1;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab$8;->onReceiveResult(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/debug/UserTab$8;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab$8;I)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$8$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$8;

    iput p2, p0, Lcom/oculus/panelapp/debug/UserTab$8$1;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLoginStatus resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oculus/panelapp/debug/UserTab$8$1;->val$resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DebugUserTab"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget v0, p0, Lcom/oculus/panelapp/debug/UserTab$8$1;->val$resultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$8$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$8;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$8;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/UserTab;->access$800(Lcom/oculus/panelapp/debug/UserTab;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/debug/R$string;->user_tab_user_is_logged_in:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$8$1;->this$1:Lcom/oculus/panelapp/debug/UserTab$8;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/UserTab$8;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/UserTab;->access$800(Lcom/oculus/panelapp/debug/UserTab;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/debug/R$string;->user_tab_user_is_logged_out:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
