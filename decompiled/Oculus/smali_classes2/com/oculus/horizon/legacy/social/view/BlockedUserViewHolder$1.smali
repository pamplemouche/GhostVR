.class Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder$1;
.super Ljava/lang/Object;
.source "BlockedUserViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/legacy/social/SocialDialogFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;

.field final synthetic val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

.field final synthetic val$socialDialogFactory:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

.field final synthetic val$socialManager:Lcom/oculus/horizon/legacy/social/SocialManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;Lcom/oculus/horizon/legacy/social/SocialDialogFactory;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder$1;->val$socialDialogFactory:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder$1;->val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iput-object p4, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder$1;->val$socialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder$1;->val$socialDialogFactory:Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder$1;->val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 40
    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder$1;->val$socialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    iget-object v3, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;

    .line 42
    invoke-static {v3}, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder;)Lcom/oculus/horizon/social/api/BlockedUser;

    move-result-object v3

    sget-object v4, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_PROFILE:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 39
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/legacy/social/SocialDialogFactory;->newUnblockDialog(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/social/api/BlockedUser;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroid/app/Dialog;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/BlockedUserViewHolder$1;->val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->showAlertDialog(Landroid/app/Dialog;)V

    .line 45
    return-void
.end method
