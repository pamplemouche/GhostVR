.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoResultsMessage;
.super Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
.source "SocialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoResultsMessage"
.end annotation


# instance fields
.field public final header:I

.field public final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field public final message:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .line 418
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->NO_RESULTS_MESSAGE:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V

    .line 419
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoResultsMessage;->list:Ljava/util/List;

    .line 420
    iput p2, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoResultsMessage;->header:I

    .line 421
    iput p3, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoResultsMessage;->message:I

    .line 422
    return-void
.end method


# virtual methods
.method public getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoResultsMessage;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;->getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    goto :goto_0
.end method
