.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$GameInvites;
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
    name = "GameInvites"
.end annotation


# instance fields
.field public final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/GameInvite;",
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
            "Lcom/oculus/horizon/api/common/GameInvite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->GAME_INVITE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V

    .line 347
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$GameInvites;->list:Ljava/util/List;

    .line 348
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
    .line 352
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$GameInvites;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$GameInvites;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 366
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->GAME_INVITES:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    :goto_0
    return-object v0

    .line 360
    :pswitch_0
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    goto :goto_0

    .line 363
    :pswitch_1
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->GAME_INVITE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
