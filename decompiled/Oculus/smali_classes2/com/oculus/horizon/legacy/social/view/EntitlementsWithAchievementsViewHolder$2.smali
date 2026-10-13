.class Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder$2;
.super Ljava/lang/Object;
.source "EntitlementsWithAchievementsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->bind(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;

.field final synthetic val$entitlements:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder$2;->val$entitlements:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;

    .line 79
    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->getUser()Lcom/oculus/horizon/api/common/user/User;

    move-result-object v0

    iget-object v2, v0, Lcom/oculus/horizon/api/common/user/User;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/EntitlementsWithAchievementsViewHolder$2;->val$entitlements:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$EntitlementWithAchievements;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$EntitlementWithAchievements;->item:Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;

    .line 78
    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->doOpenAchievements(Ljava/lang/String;Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;)V

    .line 80
    return-void
.end method
