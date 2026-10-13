.class Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$2;
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
    .line 96
    iput-object p1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$2;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$2;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->access$000(Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$2;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;

    invoke-static {v1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->access$100(Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;->startVerifyLogin(Ljava/lang/String;)V

    .line 100
    return-void
.end method
