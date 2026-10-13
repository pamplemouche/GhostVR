.class Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder$1;
.super Ljava/lang/Object;
.source "SelectableUserViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;

    move-result-object v0

    iget-boolean v0, v0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;->selected:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;->user:Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/SocialManager;->removeFromIncludedUsersList(Lcom/oculus/horizon/api/common/user/User;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/SelectableUserViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;->user:Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/SocialManager;->addToIncludedUsersList(Lcom/oculus/horizon/api/common/user/User;)V

    goto :goto_0
.end method
