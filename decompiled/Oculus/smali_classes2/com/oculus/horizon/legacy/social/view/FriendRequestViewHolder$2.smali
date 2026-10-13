.class Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$2;
.super Ljava/lang/Object;
.source "FriendRequestViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/style/StyleManager;Lcom/oculus/horizon/logging/OculusLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;Z)V

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_LANDING_PAGE:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFriendRequestRejected(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->access$300(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)Lcom/oculus/horizon/social/model/FriendRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/SocialManager;->doRejectFriendRequest(Lcom/oculus/horizon/social/model/FriendRequest;)V

    .line 86
    return-void
.end method
