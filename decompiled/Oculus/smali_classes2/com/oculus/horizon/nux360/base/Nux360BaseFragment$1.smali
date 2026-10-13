.class Lcom/oculus/horizon/nux360/base/Nux360BaseFragment$1;
.super Ljava/lang/Object;
.source "Nux360BaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->setupToolbar(Landroid/view/View;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment$1;->this$0:Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment$1;->this$0:Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 50
    :cond_0
    return-void
.end method
