.class Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder$1;
.super Ljava/lang/Object;
.source "NoFriendsSectionViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder;

.field final synthetic val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder$1;->val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/NoFriendsSectionViewHolder$1;->val$socialAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenSearch()V

    .line 26
    return-void
.end method
