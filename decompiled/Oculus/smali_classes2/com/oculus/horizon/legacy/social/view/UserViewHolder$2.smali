.class Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;
.super Ljava/lang/Object;
.source "UserViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->bind(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

.field final synthetic val$friendStatus:Lcom/oculus/horizon/api/common/user/UserFriendStatus;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;Lcom/oculus/horizon/api/common/user/UserFriendStatus;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;->val$friendStatus:Lcom/oculus/horizon/api/common/user/UserFriendStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;->val$friendStatus:Lcom/oculus/horizon/api/common/user/UserFriendStatus;

    sget-object v1, Lcom/oculus/horizon/api/common/user/UserFriendStatus;->CAN_REQUEST:Lcom/oculus/horizon/api/common/user/UserFriendStatus;

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->access$300(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_FRIEND_REQUEST_FRIENDS_LIST:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFriendRequestSent(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->access$400(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Lcom/oculus/horizon/api/common/user/User;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->PROFILE:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/SocialManager;->doSendFriendRequest(Lcom/oculus/horizon/api/common/user/BasicUser;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$drawable;->friend_request_pending:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$drawable;->button_gray_solid_background:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 128
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->access$300(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_FRIEND_REQUEST_FRIENDS_LIST:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFriendRequestAccepted(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->access$400(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/UserViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/UserViewHolder;

    .line 124
    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/UserViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/UserViewHolder;)Lcom/oculus/horizon/api/common/user/User;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    sget-object v2, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->PROFILE:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/SocialManager;->doAcceptFriendRequest(Ljava/lang/String;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V

    goto :goto_0
.end method
