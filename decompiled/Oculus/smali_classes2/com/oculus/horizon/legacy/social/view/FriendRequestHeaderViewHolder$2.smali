.class Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder$2;
.super Ljava/lang/Object;
.source "FriendRequestHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/style/StyleManager;Lcom/oculus/horizon/logging/OculusLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;Z)V

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_PROFILE:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFriendRequestRejected(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->access$300(Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/FriendRequestHeaderViewHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/SocialManager;->doRejectFriendRequest(Ljava/lang/String;)V

    .line 63
    return-void
.end method
