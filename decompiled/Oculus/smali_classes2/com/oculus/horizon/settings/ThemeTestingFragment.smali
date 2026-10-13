.class public Lcom/oculus/horizon/settings/ThemeTestingFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "ThemeTestingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/settings/ThemeTestingFragment$SummerFragment;,
        Lcom/oculus/horizon/settings/ThemeTestingFragment$WinterFragment;,
        Lcom/oculus/horizon/settings/ThemeTestingFragment$HalloweenFragment;,
        Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeDarkFragment;,
        Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeLightFragment;,
        Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeBaseFragment;,
        Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeFragmentsAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/oculus/horizon/R$string;->settings_internal:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_INTERNAL:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 36
    sget v0, Lcom/oculus/horizon/R$layout;->settings_internal_theme_testing_fragment:I

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 39
    sget v0, Lcom/oculus/horizon/R$id;->view_pager:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 40
    new-instance v2, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeFragmentsAdapter;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ThemeTestingFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oculus/horizon/settings/ThemeTestingFragment$ThemeFragmentsAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 42
    return-object v1
.end method
