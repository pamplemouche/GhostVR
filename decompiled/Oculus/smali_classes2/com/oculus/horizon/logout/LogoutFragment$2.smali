.class Lcom/oculus/horizon/logout/LogoutFragment$2;
.super Landroid/os/ResultReceiver;
.source "LogoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/logout/LogoutFragment;->initiateLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/logout/LogoutFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/logout/LogoutFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oculus/horizon/logout/LogoutFragment$2;->this$0:Lcom/oculus/horizon/logout/LogoutFragment;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/logout/LogoutFragment$2;->this$0:Lcom/oculus/horizon/logout/LogoutFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logout/LogoutFragment;->setLoading(Z)V

    .line 108
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/logout/LogoutFragment$2;->this$0:Lcom/oculus/horizon/logout/LogoutFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/logout/LogoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/oculus/horizon/logout/LogoutFragment$2;->this$0:Lcom/oculus/horizon/logout/LogoutFragment;

    invoke-static {v1}, Lcom/oculus/horizon/logout/LogoutFragment;->access$100(Lcom/oculus/horizon/logout/LogoutFragment;)Lcom/oculus/horizon/navigation/IntentFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oculus/horizon/navigation/IntentFactory;->newStartActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 112
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {}, Lcom/oculus/horizon/logout/LogoutFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Api error when calling logout."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/logout/LogoutFragment$2;->this$0:Lcom/oculus/horizon/logout/LogoutFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/logout/LogoutFragment;->dismiss()V

    goto :goto_0
.end method
