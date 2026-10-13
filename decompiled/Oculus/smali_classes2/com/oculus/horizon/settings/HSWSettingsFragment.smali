.class public Lcom/oculus/horizon/settings/HSWSettingsFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "HSWSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;
.implements Lcom/oculus/horizon/hsw/HSWVideoFragment$Listener;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnCancelListener;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHSWOptOut:Landroid/widget/Switch;

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/HSWSettingsFragment;)V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/HSWSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/HSWSettingsFragment;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;->$ul_$xXXcom_oculus_horizon_client$x5Fpreferences_api_ClientPreferencesMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mHSWOptOut:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/HSWSettingsFragment;Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mutatePreference(Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/HSWSettingsFragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->startHSWVideoFragment()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private mutatePreference(Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;Z)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    new-instance v1, Lcom/oculus/horizon/settings/HSWSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/HSWSettingsFragment$4;-><init>(Lcom/oculus/horizon/settings/HSWSettingsFragment;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;->mutatePreference(Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;ZLretrofit/Callback;)V

    .line 189
    return-void
.end method

.method private startHSWVideoFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    new-instance v0, Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/hsw/HSWVideoFragment;-><init>()V

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 194
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->content_frame:I

    .line 196
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 197
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 199
    return-void
.end method


# virtual methods
.method public createSpannable(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4

    .prologue
    .line 132
    new-instance v0, Lcom/oculus/horizon/settings/HSWSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/settings/HSWSettingsFragment$3;-><init>(Lcom/oculus/horizon/settings/HSWSettingsFragment;)V

    .line 147
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 148
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 149
    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 150
    return-object p1
.end method

.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 219
    sget v0, Lcom/oculus/horizon/R$string;->settings_hsw_options:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_NUX_PREFERENCES:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel(Lcom/oculus/horizon/modal/AlertDialogFragment;I)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 162
    const/4 v0, -0x1

    if-ne v0, p3, :cond_0

    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasOptedOutHSW(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 164
    sget-object v0, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_OPT_OUT_HSW:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mutatePreference(Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;Z)V

    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mHSWOptOut:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public onComplete()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 155
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 156
    iget-object v2, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mHSWOptOut:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasOptedOutHSW()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 157
    return v1

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/HSWSettingsFragment;)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    sget v0, Lcom/oculus/horizon/R$layout;->settings_hsw:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 68
    sget v0, Lcom/oculus/horizon/R$id;->toggle:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mHSWOptOut:Landroid/widget/Switch;

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mHSWOptOut:Landroid/widget/Switch;

    new-instance v4, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;-><init>(Lcom/oculus/horizon/settings/HSWSettingsFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v4, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mHSWOptOut:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasOptedOutHSW()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 104
    sget v0, Lcom/oculus/horizon/R$id;->play_button:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 105
    new-instance v4, Lcom/oculus/horizon/settings/HSWSettingsFragment$2;

    invoke-direct {v4, p0}, Lcom/oculus/horizon/settings/HSWSettingsFragment$2;-><init>(Lcom/oculus/horizon/settings/HSWSettingsFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    sget v0, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oculus/horizon/R$string;->settings_hsw_description:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 114
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    sget v0, Lcom/oculus/horizon/R$id;->explanation:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    sget v4, Lcom/oculus/horizon/R$string;->settings_hsw_extra_information:I

    invoke-virtual {p0, v4}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 120
    sget v5, Lcom/oculus/horizon/R$string;->settings_hsw_link:I

    invoke-virtual {p0, v5}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 121
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0, v2, v1, v5}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->createSpannable(Landroid/text/SpannableString;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 128
    return-object v3

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->updateTitleBarText()V

    .line 210
    return-void
.end method
