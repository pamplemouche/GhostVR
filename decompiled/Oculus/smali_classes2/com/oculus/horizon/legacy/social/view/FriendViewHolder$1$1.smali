.class Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1$1;
.super Ljava/lang/Object;
.source "FriendViewHolder.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1$1;->this$1:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 76
    sget v0, Lcom/oculus/horizon/R$id;->unfriend:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1$1;->this$1:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;

    iget-object v0, v0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;

    .line 78
    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->access$300(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)Lcom/oculus/horizon/legacy/social/SocialDialogFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1$1;->this$1:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;

    iget-object v1, v1, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;

    .line 79
    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1$1;->this$1:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;

    iget-object v2, v2, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;

    .line 80
    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)Lcom/oculus/horizon/api/common/user/User;

    move-result-object v2

    sget-object v3, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_PROFILE:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/legacy/social/SocialDialogFactory;->newUnfriendDialog(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroid/app/Dialog;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1$1;->this$1:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;

    iget-object v1, v1, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->showAlertDialog(Landroid/app/Dialog;)V

    .line 84
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
