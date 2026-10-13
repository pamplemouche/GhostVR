.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$PartyInvites;
.super Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
.source "SocialAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Invites;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartyInvites"
.end annotation


# instance fields
.field public final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/PartyInvite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/PartyInvite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->PARTY_INVITE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V

    .line 381
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$PartyInvites;->list:Ljava/util/List;

    .line 382
    return-void
.end method


# virtual methods
.method public getInvites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/oculus/horizon/api/common/Invite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$PartyInvites;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$PartyInvites;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 400
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->PARTY_INVITES:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    :goto_0
    return-object v0

    .line 394
    :pswitch_0
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    goto :goto_0

    .line 397
    :pswitch_1
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->PARTY_INVITE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
