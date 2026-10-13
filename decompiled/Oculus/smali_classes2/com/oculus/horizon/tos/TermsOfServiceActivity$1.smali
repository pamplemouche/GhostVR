.class Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;
.super Ljava/lang/Object;
.source "TermsOfServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/tos/TermsOfServiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/tos/TermsOfServiceActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/tos/TermsOfServiceActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;->this$0:Lcom/oculus/horizon/tos/TermsOfServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;->this$0:Lcom/oculus/horizon/tos/TermsOfServiceActivity;

    invoke-static {v0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->access$100(Lcom/oculus/horizon/tos/TermsOfServiceActivity;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/tos/TermsOfServiceActivity$1$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity$1$1;-><init>(Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;)V

    sget-object v2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 59
    invoke-virtual {v0, v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 72
    return-void
.end method
