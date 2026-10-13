.class Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$4;
.super Ljava/lang/Object;
.source "ProfileFragmentAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->makeFriendsAchievementsHeaderParamsProvider()Lcom/oculus/horizon/legacy/social/adapters/FriendsAchievementsHeaderParamsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$4;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFriendsCount()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$4;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$300(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasEntitlementsWithAchievements()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$4;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$600(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFriends()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$4;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$300(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAchievementsHeaderSelected()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$4;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$500(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)Z

    move-result v0

    return v0
.end method

.method public isViewerProfile()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$4;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$200(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)Z

    move-result v0

    return v0
.end method
