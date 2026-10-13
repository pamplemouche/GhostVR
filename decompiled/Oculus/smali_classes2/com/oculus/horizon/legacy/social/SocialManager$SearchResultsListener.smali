.class public interface abstract Lcom/oculus/horizon/legacy/social/SocialManager$SearchResultsListener;
.super Ljava/lang/Object;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/SocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchResultsListener"
.end annotation


# virtual methods
.method public abstract onSearchResults(ILjava/util/List;Lcom/oculus/horizon/social/api/SearchResultMode;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/social/api/SearchResultUser;",
            ">;",
            "Lcom/oculus/horizon/social/api/SearchResultMode;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract onSearchSkipped(I)V
.end method
