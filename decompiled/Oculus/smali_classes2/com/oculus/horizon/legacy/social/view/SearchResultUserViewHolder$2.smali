.class Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;
.super Ljava/lang/Object;
.source "SearchResultUserViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->bind(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

.field final synthetic val$friendStatus:Lcom/oculus/horizon/api/common/user/UserFriendStatus;

.field final synthetic val$user:Lcom/oculus/horizon/social/api/SearchResultUser;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;Lcom/oculus/horizon/api/common/user/UserFriendStatus;Lcom/oculus/horizon/social/api/SearchResultUser;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->val$friendStatus:Lcom/oculus/horizon/api/common/user/UserFriendStatus;

    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->val$user:Lcom/oculus/horizon/social/api/SearchResultUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->val$friendStatus:Lcom/oculus/horizon/api/common/user/UserFriendStatus;

    sget-object v1, Lcom/oculus/horizon/api/common/user/UserFriendStatus;->CAN_REQUEST:Lcom/oculus/horizon/api/common/user/UserFriendStatus;

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_USER_SEARCH:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFriendRequestSent(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->access$300(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->val$user:Lcom/oculus/horizon/social/api/SearchResultUser;

    sget-object v2, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->SEARCH:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/SocialManager;->doSendFriendRequest(Lcom/oculus/horizon/api/common/user/BasicUser;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$drawable;->friend_request_pending:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$drawable;->button_gray_solid_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 151
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_USER_SEARCH:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFriendRequestAccepted(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->access$300(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$2;->val$user:Lcom/oculus/horizon/social/api/SearchResultUser;

    iget-object v1, v1, Lcom/oculus/horizon/social/api/SearchResultUser;->user_id:Ljava/lang/String;

    sget-object v2, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->SEARCH:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/SocialManager;->doAcceptFriendRequest(Ljava/lang/String;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V

    goto :goto_0
.end method
