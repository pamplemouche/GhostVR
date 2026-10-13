.class Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder$1;
.super Ljava/lang/Object;
.source "FriendRequestsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/content/res/Resources;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/FriendRequestsViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenFriendRequests()V

    .line 48
    return-void
.end method
