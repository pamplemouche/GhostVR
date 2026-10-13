.class Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeFragmentsAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "ThemeTestingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/ThemeTestingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeFragmentsAdapter"
.end annotation


# instance fields
.field private final mFragments:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 5

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 51
    new-instance v0, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeLightFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeLightFragment;-><init>()V

    new-instance v1, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeDarkFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeDarkFragment;-><init>()V

    new-instance v2, Lcom/oculus/horizon/settings/ThemeTestingFragment$HalloweenFragment;

    invoke-direct {v2}, Lcom/oculus/horizon/settings/ThemeTestingFragment$HalloweenFragment;-><init>()V

    new-instance v3, Lcom/oculus/horizon/settings/ThemeTestingFragment$WinterFragment;

    invoke-direct {v3}, Lcom/oculus/horizon/settings/ThemeTestingFragment$WinterFragment;-><init>()V

    new-instance v4, Lcom/oculus/horizon/settings/ThemeTestingFragment$SummerFragment;

    invoke-direct {v4}, Lcom/oculus/horizon/settings/ThemeTestingFragment$SummerFragment;-><init>()V

    .line 52
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeFragmentsAdapter;->mFragments:Lcom/google/common/collect/ImmutableList;

    .line 58
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeFragmentsAdapter;->mFragments:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeFragmentsAdapter;->mFragments:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeFragmentsAdapter;->mFragments:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
