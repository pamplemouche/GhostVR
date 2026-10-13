.class Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$3;
.super Ljava/lang/Object;
.source "ProfileHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->bind(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

.field final synthetic val$user:Lcom/oculus/horizon/api/common/user/User;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;Lcom/oculus/horizon/api/common/user/User;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$3;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$3;->val$user:Lcom/oculus/horizon/api/common/user/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$3;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$500(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_PROFILE:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFriendRequestAccepted(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$3;->this$0:Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;->access$600(Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/ProfileHeaderViewHolder$3;->val$user:Lcom/oculus/horizon/api/common/user/User;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    sget-object v2, Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;->PROFILE:Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/SocialManager;->doAcceptFriendRequest(Ljava/lang/String;Lcom/oculus/horizon/social/request/FriendRequestSource$Origin;)V

    .line 213
    return-void
.end method
