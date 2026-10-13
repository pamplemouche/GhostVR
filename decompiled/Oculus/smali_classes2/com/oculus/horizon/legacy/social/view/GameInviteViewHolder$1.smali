.class Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder$1;
.super Ljava/lang/Object;
.source "GameInviteViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/content/res/Resources;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/style/StyleManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;

.field final synthetic val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder$1;->val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;Z)V

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder$1;->val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 61
    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;

    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/GameInviteViewHolder;)Lcom/oculus/horizon/api/common/GameInvite;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/SocialManager;->doAcceptGameInvite(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/api/common/GameInvite;)V

    .line 62
    return-void
.end method
