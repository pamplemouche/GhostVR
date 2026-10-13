.class Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$2;
.super Ljava/lang/Object;
.source "FriendViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialDialogFactory;Lcom/oculus/horizon/social/SocialUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;

.field final synthetic val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$2;->val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$2;->val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->access$200(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)Lcom/oculus/horizon/api/common/user/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenProfile(Lcom/oculus/horizon/api/common/user/User;)V

    .line 96
    return-void
.end method
