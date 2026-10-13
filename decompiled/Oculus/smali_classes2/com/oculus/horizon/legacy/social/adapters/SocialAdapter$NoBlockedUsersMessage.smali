.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoBlockedUsersMessage;
.super Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
.source "SocialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoBlockedUsersMessage"
.end annotation


# instance fields
.field public final blockedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/social/api/BlockedUser;",
            ">;"
        }
    .end annotation
.end field

.field public final sectionSizeProvider:Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/social/api/BlockedUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->NO_BLOCKED_USER_MESSAGE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V

    .line 517
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoBlockedUsersMessage;->sectionSizeProvider:Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;

    .line 518
    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoBlockedUsersMessage;->blockedUsers:Ljava/util/List;

    .line 519
    return-void
.end method


# virtual methods
.method public getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoBlockedUsersMessage;->blockedUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 526
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;->getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    move-result-object v0

    goto :goto_0
.end method
