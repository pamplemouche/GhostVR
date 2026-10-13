.class public Lcom/oculus/horizon/legacy/social/fragments/FriendsFragmentAutoProvider;
.super Lcom/facebook/inject/AbstractComponentProvider;
.source "FriendsFragmentAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractComponentProvider",
        "<",
        "Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractComponentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    instance-of v0, p1, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragmentAutoProvider;

    return v0
.end method

.method public inject(Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;)V

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/FriendsFragmentAutoProvider;->inject(Lcom/oculus/horizon/legacy/social/fragments/FriendsFragment;)V

    return-void
.end method
