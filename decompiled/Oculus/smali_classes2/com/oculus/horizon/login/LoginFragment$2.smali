.class Lcom/oculus/horizon/login/LoginFragment$2;
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
    .line 98
    iput-object p1, p0, Lcom/oculus/horizon/login/LoginFragment$2;->this$0:Lcom/oculus/horizon/login/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment$2;->this$0:Lcom/oculus/horizon/login/LoginFragment;

    invoke-static {v0}, Lcom/oculus/horizon/login/LoginFragment;->access$300(Lcom/oculus/horizon/login/LoginFragment;)Lcom/oculus/horizon/login/LoginPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/login/LoginPresenter;->startResetPassword()V

    .line 102
    return-void
.end method
