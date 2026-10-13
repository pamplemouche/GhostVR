.class Lcom/oculus/horizon/legacy/social/SocialManager$8;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;->refreshEntitlementsWithAchievements(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/SocialManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/SocialManager$8;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$8;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$900(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$EntitlementsWithAchievementsListener;

    .line 642
    invoke-interface {v0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$EntitlementsWithAchievementsListener;->onEntitlementsWithAchievementsRefreshError(Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0

    .line 644
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse;)V
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/SocialManager$8;->this$0:Lcom/oculus/horizon/legacy/social/SocialManager;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/SocialManager;->access$900(Lcom/oculus/horizon/legacy/social/SocialManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/SocialManager$EntitlementsWithAchievementsListener;

    .line 635
    iget-object v2, p1, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse;->active_android_entitlements:Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Entitlements;

    iget-object v2, v2, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Entitlements;->nodes:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/oculus/horizon/legacy/social/SocialManager$EntitlementsWithAchievementsListener;->onEntitlementsWithAchievementsRefreshed(Ljava/util/List;)V

    goto :goto_0

    .line 637
    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 631
    check-cast p1, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/SocialManager$8;->onResponse(Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse;)V

    return-void
.end method
