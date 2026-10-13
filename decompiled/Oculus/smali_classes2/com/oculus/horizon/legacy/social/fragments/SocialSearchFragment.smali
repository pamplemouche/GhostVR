.class public Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;
.super Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;
.source "SocialSearchFragment.java"


# instance fields
.field private mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mBackButton:Landroid/widget/ImageView;

.field private mClearButton:Landroid/view/View;

.field private mHintLabel:Landroid/widget/TextView;

.field private mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchInstructionsLabel:Landroid/widget/TextView;

.field private mStyleManager:Lcom/oculus/horizon/style/StyleManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSyncFBFriendsLayout:Landroid/widget/LinearLayout;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/horizon/style/StyleManager;->$ul_$xXXcom_oculus_horizon_style_StyleManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;->$ul_$xXXcom_oculus_horizon_legacy_social_adapters_SocialSearchFragmentAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mHintLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mClearButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->updateShowableContentOnSearchChange(Z)V

    return-void
.end method

.method private openMainStore()V
    .locals 3

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    const v1, 0x10018000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method private shouldShowSyncFacebookFriends()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->isFacebookFriendsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateShowableContentOnSearchChange(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 266
    if-eqz p1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSyncFBFriendsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchInstructionsLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 273
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->shouldShowSyncFacebookFriends()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSyncFBFriendsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSyncFBFriendsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchInstructionsLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "empty_friend_search"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportFindFacebookFriendsEntryPointImpression(Ljava/lang/String;Z)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSyncFBFriendsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchInstructionsLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected destroyViews()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mHintLabel:Landroid/widget/TextView;

    .line 225
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mBackButton:Landroid/widget/ImageView;

    .line 226
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mClearButton:Landroid/view/View;

    .line 227
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 228
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    .line 229
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 230
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSyncFBFriendsLayout:Landroid/widget/LinearLayout;

    .line 231
    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchInstructionsLabel:Landroid/widget/TextView;

    .line 232
    return-void
.end method

.method protected getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SOCIAL_USER_SEARCH:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V

    .line 62
    invoke-super {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 236
    sget v0, Lcom/oculus/horizon/R$menu;->social_search:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 237
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 238
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->setHasOptionsMenu(Z)V

    .line 69
    sget v0, Lcom/oculus/horizon/R$layout;->common_search_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 242
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_done:I

    if-ne v0, v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->openMainStore()V

    .line 244
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 214
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->onPause()V

    .line 215
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->onResume()V

    .line 203
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/MainActivity;

    .line 204
    invoke-virtual {v0}, Lcom/oculus/horizon/main/MainActivity;->getTitleBarHelper()Lcom/oculus/horizon/main/TitleBarHelper;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/main/TitleBarHelper;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 208
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 209
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    sget v0, Lcom/oculus/horizon/R$id;->search_box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    .line 77
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->hideErrorView()V

    .line 78
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->hideUnderline()V

    .line 81
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v1

    sget-object v2, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v1, v2, :cond_0

    .line 82
    sget v1, Lcom/oculus/horizon/R$id;->search_bar_separator_divider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_0
    sget v1, Lcom/oculus/horizon/R$id;->hint_label:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mHintLabel:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mHintLabel:Landroid/widget/TextView;

    sget v2, Lcom/oculus/horizon/R$string;->social_search_box_hint:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 88
    sget v1, Lcom/oculus/horizon/R$id;->back_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mBackButton:Landroid/widget/ImageView;

    .line 89
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mBackButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$1;-><init>(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget v1, Lcom/oculus/horizon/R$id;->clear_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mClearButton:Landroid/view/View;

    .line 99
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mClearButton:Landroid/view/View;

    new-instance v2, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$2;-><init>(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$3;-><init>(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$4;-><init>(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    sget v0, Lcom/oculus/horizon/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 143
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 144
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$5;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$5;-><init>(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 164
    sget v0, Lcom/oculus/horizon/R$id;->search_instructions_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchInstructionsLabel:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSearchInstructionsLabel:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->social_search_instructions:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 167
    sget v0, Lcom/oculus/horizon/R$id;->sync_facebook_friends_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mSyncFBFriendsLayout:Landroid/widget/LinearLayout;

    .line 169
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_sync_facebook_friends_button:I

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 171
    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$6;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$6;-><init>(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;

    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$7;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$7;-><init>(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 191
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->mAdapter:Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;->notifyDataSetChanged()V

    .line 192
    return-void
.end method
