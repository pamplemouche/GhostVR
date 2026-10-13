.class Lcom/oculus/horizon/nux360/Nux360VerificationFragment$1;
.super Ljava/lang/Object;
.source "Nux360VerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360VerificationFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360VerificationFragment;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->access$000(Lcom/oculus/horizon/nux360/Nux360VerificationFragment;)Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->changeEmail()V

    .line 62
    return-void
.end method
