.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$EntitlementsWithAchievementsListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EntitlementsWithAchievementsListener"
.end annotation


# virtual methods
.method public abstract onEntitlementsWithAchievementsRefreshError(Lcom/oculus/http/core/base/ApiError;)V
.end method

.method public abstract onEntitlementsWithAchievementsRefreshed(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$EntitlementWithAchievements;",
            ">;)V"
        }
    .end annotation
.end method
