.class Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$3;
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
    .line 89
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$3;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$3;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->access$400(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$3;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)Lcom/oculus/horizon/social/model/FriendRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->user_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder$3;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;

    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/FriendRequestViewHolder;)Lcom/oculus/horizon/social/model/FriendRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/social/model/FriendRequest;->user:Lcom/oculus/horizon/api/common/user/FriendRequestUser;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/user/FriendRequestUser;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
