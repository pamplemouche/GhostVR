.class Lcom/oculus/horizon/login/LoginFragment$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/login/LoginFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/login/LoginFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/login/LoginFragment;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oculus/horizon/login/LoginFragment$1;->this$0:Lcom/oculus/horizon/login/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment$1;->this$0:Lcom/oculus/horizon/login/LoginFragment;

    invoke-static {v0}, Lcom/oculus/horizon/login/LoginFragment;->access$300(Lcom/oculus/horizon/login/LoginFragment;)Lcom/oculus/horizon/login/LoginPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/login/LoginFragment$1;->this$0:Lcom/oculus/horizon/login/LoginFragment;

    iget-object v2, p0, Lcom/oculus/horizon/login/LoginFragment$1;->this$0:Lcom/oculus/horizon/login/LoginFragment;

    .line 92
    invoke-static {v2}, Lcom/oculus/horizon/login/LoginFragment;->access$000(Lcom/oculus/horizon/login/LoginFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oculus/horizon/login/LoginFragment;->access$100(Lcom/oculus/horizon/login/LoginFragment;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/login/LoginFragment$1;->this$0:Lcom/oculus/horizon/login/LoginFragment;

    iget-object v3, p0, Lcom/oculus/horizon/login/LoginFragment$1;->this$0:Lcom/oculus/horizon/login/LoginFragment;

    invoke-static {v3}, Lcom/oculus/horizon/login/LoginFragment;->access$200(Lcom/oculus/horizon/login/LoginFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oculus/horizon/login/LoginFragment;->access$100(Lcom/oculus/horizon/login/LoginFragment;Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/login/LoginPresenter;->startLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
