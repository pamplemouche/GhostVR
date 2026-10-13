.class Lcom/oculus/horizon/tos/TermsOfServiceActivity$1$1;
.super Ljava/lang/Object;
.source "TermsOfServiceActivity.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$1$1;->this$1:Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$1$1;->this$1:Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;

    iget-object v0, v0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;->this$0:Lcom/oculus/horizon/tos/TermsOfServiceActivity;

    invoke-static {v0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->access$000(Lcom/oculus/horizon/tos/TermsOfServiceActivity;)Lcom/oculus/horizon/widget/ProgressButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 65
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$1$1;->this$1:Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;

    iget-object v0, v0, Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;->this$0:Lcom/oculus/horizon/tos/TermsOfServiceActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->finish()V

    .line 68
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/tos/TermsOfServiceActivity$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
