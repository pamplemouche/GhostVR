.class public abstract Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;
.super Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.source "RefreshableSocialAdapter.java"


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/legacy/social/view/SocialViewHolderFactory;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/navigation/IntentFactory;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/legacy/social/view/SocialViewHolderFactory;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/navigation/IntentFactory;)V

    .line 22
    return-void
.end method


# virtual methods
.method public abstract refresh()V
.end method
