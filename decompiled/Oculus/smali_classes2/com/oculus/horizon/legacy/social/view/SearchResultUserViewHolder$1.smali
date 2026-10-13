.class Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$1;
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

.field final synthetic val$user:Lcom/oculus/horizon/social/api/SearchResultUser;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;Lcom/oculus/horizon/social/api/SearchResultUser;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$1;->val$user:Lcom/oculus/horizon/social/api/SearchResultUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setEnabled(Z)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$1;->val$user:Lcom/oculus/horizon/social/api/SearchResultUser;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/SearchResultUser;->alias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$1;->val$user:Lcom/oculus/horizon/social/api/SearchResultUser;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/SearchResultUser;->alias:Ljava/lang/String;

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$1;->val$user:Lcom/oculus/horizon/social/api/SearchResultUser;

    iget-object v2, v2, Lcom/oculus/horizon/social/api/SearchResultUser;->user_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/SearchResultUserViewHolder$1;->val$user:Lcom/oculus/horizon/social/api/SearchResultUser;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/SearchResultUser;->name:Ljava/lang/String;

    goto :goto_0
.end method
