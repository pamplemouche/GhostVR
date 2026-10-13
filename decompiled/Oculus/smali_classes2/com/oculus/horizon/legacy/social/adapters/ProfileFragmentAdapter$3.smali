.class Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$3;
.super Ljava/lang/Object;
.source "ProfileFragmentAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->makeSectionSizeProvider()Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mDefaultSectionSizeProvider:Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;

.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)V
    .locals 1

    .prologue
    .line 344
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$3;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$3;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    .line 346
    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->makeRemainingSpaceHeightProvider()Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$3;->mDefaultSectionSizeProvider:Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;

    .line 345
    return-void
.end method


# virtual methods
.method public getHeightInPx()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$3;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$200(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$3;->this$0:Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;->access$500(Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    const/4 v0, 0x0

    .line 353
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/ProfileFragmentAdapter$3;->mDefaultSectionSizeProvider:Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;

    invoke-interface {v0}, Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;->getHeightInPx()I

    move-result v0

    goto :goto_0
.end method
