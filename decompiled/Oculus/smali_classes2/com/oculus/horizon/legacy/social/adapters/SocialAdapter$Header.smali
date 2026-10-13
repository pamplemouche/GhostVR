.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;
.super Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
.source "SocialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field public final labelResId:I

.field public final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field public final showBadge:Z

.field public final showCount:Z


# direct methods
.method public constructor <init>(ILjava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 270
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->HEADER:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V

    .line 271
    iput p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;->labelResId:I

    .line 272
    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;->list:Ljava/util/List;

    .line 273
    iput-boolean p3, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;->showBadge:Z

    .line 274
    iput-boolean p4, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;->showCount:Z

    .line 275
    return-void
.end method


# virtual methods
.method public getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;->getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    goto :goto_0
.end method
