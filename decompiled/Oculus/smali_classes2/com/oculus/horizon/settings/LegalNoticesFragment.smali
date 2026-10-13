.class public Lcom/oculus/horizon/settings/LegalNoticesFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "LegalNoticesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/oculus/horizon/R$string;->settings_legal:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_LEGAL_NOTICES:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 25
    sget v0, Lcom/oculus/horizon/R$layout;->legal_notices_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LegalNoticesFragment;->updateTitleBarText()V

    .line 50
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/oculus/horizon/R$id;->pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 34
    new-instance v1, Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LegalNoticesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 35
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 37
    sget v1, Lcom/oculus/horizon/R$id;->tab_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 38
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 39
    return-void
.end method
