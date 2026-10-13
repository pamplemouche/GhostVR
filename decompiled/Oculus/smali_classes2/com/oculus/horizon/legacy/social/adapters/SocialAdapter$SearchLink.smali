.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SearchLink;
.super Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
.source "SocialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchLink"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->SEARCH:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V

    .line 222
    return-void
.end method
