.class public abstract Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SocialAdapter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoBlockedUsersMessage;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SelectableUser;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoFriendsSection;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ProfileHeader;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequestHeader;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$NoResultsMessage;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$PartyInvites;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$GameInvites;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Invites;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendsAchievementsHeader;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$Header;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FindFacebookFriendsLink;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$SearchLink;,
        Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Landroidx/fragment/app/FragmentActivity;

.field private final mCloseables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private final mFailedData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oculus/horizon/social/model/SocialData;",
            ">;"
        }
    .end annotation
.end field

.field protected final mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

.field private final mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLoadedData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oculus/horizon/social/model/SocialData;",
            ">;"
        }
    .end annotation
.end field

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mSocialData:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/social/model/SocialData;",
            ">;"
        }
    .end annotation
.end field

.field private mSocialFragment:Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;

.field protected final mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

.field private final mSocialViewHolderFactory:Lcom/oculus/horizon/legacy/social/view/SocialViewHolderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/legacy/social/view/SocialViewHolderFactory;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/navigation/IntentFactory;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mLoadedData:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mFailedData:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mCloseables:Ljava/util/Set;

    .line 86
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mSocialManager:Lcom/oculus/horizon/legacy/social/SocialManager;

    .line 87
    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mSocialViewHolderFactory:Lcom/oculus/horizon/legacy/social/view/SocialViewHolderFactory;

    .line 88
    iput-object p3, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    .line 89
    iput-object p4, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    .line 90
    return-void
.end method

.method public static setOptionalParameter(Landroid/widget/TextView;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 619
    if-eqz p1, :cond_0

    .line 620
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 621
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    const/4 v0, 0x1

    .line 625
    :goto_0
    return v0

    .line 624
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setOptionalParameter(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 636
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 637
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    const/4 v0, 0x1

    .line 642
    :goto_0
    return v0

    .line 641
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract attachListeners()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/social/model/SocialData;",
            ">;"
        }
    .end annotation
.end method

.method protected clearLoadedData()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mLoadedData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mFailedData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 160
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    iput-object v3, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mSocialData:Lcom/google/common/collect/ImmutableList;

    .line 113
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->detachListeners()V

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mCloseables:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    .line 116
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    sget-object v2, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mCloseables:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 122
    iput-object v3, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    return-void
.end method

.method protected abstract detachListeners()V
.end method

.method public doOpenAchievements(Ljava/lang/String;Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;)V
    .locals 4

    .prologue
    .line 707
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v2, p2, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;->id:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/horizon/social/api/EntitlementsWithAchievementsResponse$Item;->display_name:Ljava/lang/String;

    .line 708
    invoke-virtual {v1, p1, v2, v3}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newAchievementsFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 710
    return-void
.end method

.method public doOpenFacebookFriends()V
    .locals 2

    .prologue
    .line 651
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    .line 652
    invoke-virtual {v1}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newFBConnectFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 654
    return-void
.end method

.method public doOpenFriendRequests()V
    .locals 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/oculus/horizon/legacy/social/fragments/FriendRequestsFragment;

    .line 684
    invoke-static {v1, v2}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 683
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 685
    return-void
.end method

.method public doOpenGameInvites()V
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/oculus/horizon/legacy/social/fragments/GameInvitesFragment;

    invoke-static {v1, v2}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 689
    return-void
.end method

.method public doOpenPartyCallActivity(Lcom/oculus/horizon/api/common/user/User;)V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/oculus/horizon/navigation/IntentFactory;->newPartyCallActivityIntent(Landroid/content/Context;Lcom/oculus/horizon/api/common/user/User;)Landroid/content/Intent;

    move-result-object v0

    .line 658
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 659
    return-void
.end method

.method public doOpenPartyCallNUXActivity(Lcom/oculus/horizon/social/model/PrivacyState;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 663
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    .line 665
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 664
    invoke-interface/range {v0 .. v5}, Lcom/oculus/horizon/navigation/IntentFactory;->newPartyCallNUXActivityIntent(Landroid/content/Context;Lcom/oculus/horizon/social/model/PrivacyState;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    .line 666
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 667
    return-void
.end method

.method public doOpenPartyInvites()V
    .locals 2

    .prologue
    .line 692
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    .line 693
    invoke-virtual {v1}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newPartyInvitesFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 694
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 695
    return-void
.end method

.method public doOpenPrivacySettings()V
    .locals 3

    .prologue
    .line 698
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/oculus/horizon/settings/PrivacySettingsFragment;

    .line 699
    invoke-static {v1, v2}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 698
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 700
    return-void
.end method

.method public doOpenProfile(Lcom/oculus/horizon/api/common/user/User;)V
    .locals 2

    .prologue
    .line 677
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    .line 678
    invoke-virtual {v1, p1}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newProfileFragment(Landroid/os/Parcelable;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 680
    return-void
.end method

.method public doOpenProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 670
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    .line 671
    invoke-virtual {v1, p1, p2}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newProfileFragment(Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 673
    return-void
.end method

.method public doOpenProfilePictureBottomSheet()V
    .locals 3

    .prologue
    .line 703
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;-><init>()V

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mSocialFragment:Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public doOpenSearch()V
    .locals 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    const/4 v3, 0x0

    .line 647
    invoke-static {v1, v2, v3}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 646
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 648
    return-void
.end method

.method public getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;)V
    .locals 1

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mSocialFragment:Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;

    .line 95
    invoke-virtual {p1}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 97
    return-void
.end method

.method public isInErrorState()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mFailedData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mLoadedData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mSocialData:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeRemainingSpaceHeightProvider()Lcom/oculus/horizon/legacy/social/adapters/SectionSizeProvider;
    .locals 1

    .prologue
    .line 535
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$1;-><init>(Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 192
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mSocialViewHolderFactory:Lcom/oculus/horizon/legacy/social/view/SocialViewHolderFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oculus/horizon/legacy/social/view/SocialViewHolderFactory;->onCreateViewHolder(Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Landroid/view/ViewGroup;I)Lcom/oculus/horizon/legacy/social/view/SocialAdapterViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public registerListeners()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->attachListeners()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mSocialData:Lcom/google/common/collect/ImmutableList;

    .line 108
    return-void
.end method

.method public setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 567
    invoke-static {p1, p2, p3}, Lcom/oculus/horizon/legacy/social/adapters/AvatarHelper;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V

    .line 568
    return-void
.end method

.method public setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/oculus/horizon/api/common/user/ProfilePhoto;)V
    .locals 1

    .prologue
    .line 559
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/oculus/horizon/api/common/user/ProfilePhoto;->uri:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 560
    return-void

    .line 559
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 563
    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V

    .line 564
    return-void

    .line 563
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/oculus/horizon/api/common/user/ProfilePhoto;)V
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/oculus/horizon/api/common/user/ProfilePhoto;)V

    .line 556
    return-void
.end method

.method public setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setAvatar(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public setDismissKeyboardOnTouchListener(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 572
    new-instance v0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$2;-><init>(Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 582
    return-void
.end method

.method protected setFailed(Lcom/oculus/horizon/social/model/SocialData;)V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to load social data [%s]"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mFailedData:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method protected setLoaded(Lcom/oculus/horizon/social/model/SocialData;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loaded social data [%s]"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mLoadedData:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public showAlertDialog(Landroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mSocialFragment:Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->showDialog(Landroid/app/Dialog;)V

    .line 142
    return-void
.end method

.method public styleButton(Landroid/widget/TextView;III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 590
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    if-eqz p3, :cond_0

    .line 592
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 596
    :goto_0
    invoke-virtual {p1, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 600
    new-array v0, v3, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    .line 601
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, p4, v0}, Landroidx/fragment/app/FragmentActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 602
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 603
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 604
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 606
    new-array v0, v3, [I

    const v1, 0x1010098

    aput v1, v0, v2

    .line 607
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, p4, v0}, Landroidx/fragment/app/FragmentActivity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 608
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 609
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 610
    return-void

    .line 594
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
