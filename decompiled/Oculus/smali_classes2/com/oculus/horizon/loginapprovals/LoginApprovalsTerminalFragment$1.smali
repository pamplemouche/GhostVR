.class Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment$1;
.super Ljava/lang/Object;
.source "LoginApprovalsTerminalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment$1;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment$1;->this$0:Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->onBackPressed()Z

    .line 83
    return-void
.end method
