.class Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder$1;
.super Ljava/lang/Object;
.source "FriendsAchievementsHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Landroid/content/res/Resources;Lcom/oculus/horizon/style/StyleManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;

.field final synthetic val$profileAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder$1;->val$profileAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendsAchievementsHeaderViewHolder$1;->val$profileAdapter:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->showFriends()V

    .line 76
    return-void
.end method
