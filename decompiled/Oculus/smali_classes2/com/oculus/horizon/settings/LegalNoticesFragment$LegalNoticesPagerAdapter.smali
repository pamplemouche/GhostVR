.class Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "LegalNoticesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/LegalNoticesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegalNoticesPagerAdapter"
.end annotation


# static fields
.field private static final FRAGMENT_TITLES:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPEN_SOURCE_TRACKING_VIEW:Lcom/oculus/horizon/logging/TrackingViews$View;

.field private static final TOS_TRACKING_VIEW:Lcom/oculus/horizon/logging/TrackingViews$View;


# instance fields
.field private mActivity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 61
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->TERMS_OF_SERVICE:Lcom/oculus/horizon/logging/TrackingViews$View;

    sput-object v0, Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;->TOS_TRACKING_VIEW:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 65
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_OPEN_SOURCE:Lcom/oculus/horizon/logging/TrackingViews$View;

    sput-object v0, Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;->OPEN_SOURCE_TRACKING_VIEW:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 69
    sget v0, Lcom/oculus/horizon/R$string;->common_tos:I

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_privacy_policy:I

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->settings_open_source:I

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$string;->settings_home_open_source:I

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 70
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;->FRAGMENT_TITLES:Lcom/google/common/collect/ImmutableList;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 80
    iput-object p1, p0, Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 81
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;->FRAGMENT_TITLES:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    packed-switch p1, :pswitch_data_0

    .line 101
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    new-instance v0, Lcom/oculus/horizon/settings/LegalWebViewFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/settings/LegalWebViewFragment;-><init>()V

    .line 89
    const-string v1, "https://www.oculus.com/legal/terms-of-service/"

    sget-object v2, Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;->TOS_TRACKING_VIEW:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-static {v1, v2}, Lcom/oculus/horizon/settings/LegalWebViewFragment;->createArgs(Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/LegalWebViewFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 92
    :pswitch_1
    new-instance v0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;-><init>()V

    goto :goto_0

    .line 94
    :pswitch_2
    new-instance v0, Lcom/oculus/horizon/settings/LegalWebViewFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/settings/LegalWebViewFragment;-><init>()V

    .line 95
    const-string v1, "https://www.facebook.com/legal/thirdpartynotices"

    sget-object v2, Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;->OPEN_SOURCE_TRACKING_VIEW:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 96
    invoke-static {v1, v2}, Lcom/oculus/horizon/settings/LegalWebViewFragment;->createArgs(Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroid/os/Bundle;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/LegalWebViewFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 99
    :pswitch_3
    new-instance v0, Lcom/oculus/horizon/settings/OculusOpenSourceSettingsFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/settings/OculusOpenSourceSettingsFragment;-><init>()V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/oculus/horizon/settings/LegalNoticesFragment$LegalNoticesPagerAdapter;->FRAGMENT_TITLES:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
