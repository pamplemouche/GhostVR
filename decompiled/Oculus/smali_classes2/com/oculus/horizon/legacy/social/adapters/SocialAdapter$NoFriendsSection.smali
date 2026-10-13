.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoFriendsSection;
.super Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
.source "SocialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoFriendsSection"
.end annotation


# instance fields
.field public final adapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

.field public final lists:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field public final sectionSizeProvider:Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;


# direct methods
.method public varargs constructor <init>(Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;[Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;",
            "Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;",
            "[",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 475
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->NO_FRIENDS_SECTION:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V

    .line 476
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoFriendsSection;->lists:[Ljava/util/List;

    .line 477
    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoFriendsSection;->adapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    .line 478
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoFriendsSection;->sectionSizeProvider:Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;

    .line 479
    return-void
.end method


# virtual methods
.method public getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;
    .locals 4

    .prologue
    .line 484
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoFriendsSection;->adapter:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 492
    :goto_0
    return-object v0

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoFriendsSection;->lists:[Ljava/util/List;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 488
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 489
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    goto :goto_0

    .line 487
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 492
    :cond_2
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;->getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    move-result-object v0

    goto :goto_0
.end method
