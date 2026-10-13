.class Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$7;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SocialSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$7;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$7;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->isViewDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$7;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$7;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->access$300(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;->hasUserInput()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->access$500(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;Z)V

    .line 186
    :cond_0
    return-void
.end method
