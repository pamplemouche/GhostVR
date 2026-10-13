.class Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$1;
.super Ljava/lang/Object;
.source "LoginApprovalsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$1;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$1;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->access$000(Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;->resendConfirmationCode()V

    .line 91
    return-void
.end method
