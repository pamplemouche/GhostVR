.class public Lcom/oculus/horizon/settings/RequestRefundFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "RequestRefundFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REASON_ENUMS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mComments:Lcom/oculus/horizon/widget/CustomEditText;

.field private mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mItemId:Ljava/lang/String;

.field private mLibraryTimestamp:J

.field private mPlayTime:J

.field private mReasonError:Landroid/widget/TextView;

.field private mReasonIndex:I

.field private mReasonSelect:Lcom/oculus/horizon/widget/CustomEditText;

.field private mStoresManager:Lcom/oculus/horizon/store/StoresManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/RequestRefundFragment;)V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/RequestRefundFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/RequestRefundFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/RequestRefundFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/RequestRefundFragment;)V
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/RequestRefundFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-static {p0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->$ul_$xXXcom_oculus_horizon_debug_DebugErrorToaster$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/RequestRefundFragment;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    invoke-static {p0}, Lcom/oculus/horizon/store/StoresManager;->$ul_$xXXcom_oculus_horizon_store_StoresManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/StoresManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/RequestRefundFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/RequestRefundFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-class v0, Lcom/oculus/horizon/settings/RequestRefundFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/RequestRefundFragment;->TAG:Ljava/lang/String;

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unauthorized_purchase"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "unintentional_purchase"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uncomfortable_experience"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "defective_issues"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "defective_start"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "incorrect_description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "double_charged"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "other"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/settings/RequestRefundFragment;->REASON_ENUMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mReasonIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/RequestRefundFragment;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mReasonIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/oculus/horizon/settings/RequestRefundFragment;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mReasonIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/RequestRefundFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mReasonError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/RequestRefundFragment;)Lcom/oculus/horizon/widget/CustomEditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mReasonSelect:Lcom/oculus/horizon/widget/CustomEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/RequestRefundFragment;)Lcom/oculus/horizon/widget/CustomEditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mComments:Lcom/oculus/horizon/widget/CustomEditText;

    return-object v0
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 201
    sget v0, Lcom/oculus/horizon/R$string;->commerce_request_refund:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_REQUEST_REFUND:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 95
    iget v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mReasonIndex:I

    if-gez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mReasonError:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 102
    const-string v2, "REASON"

    sget-object v3, Lcom/oculus/horizon/settings/RequestRefundFragment;->REASON_ENUMS:[Ljava/lang/String;

    iget v4, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mReasonIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "COMMENT"

    iget-object v3, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mComments:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-virtual {v3}, Lcom/oculus/horizon/widget/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "REFUND_BUNDLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 105
    const-string v1, "action_continue_refund"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/RequestRefundFragment;)V

    .line 77
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mItemId:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PLAY_TIME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mPlayTime:J

    .line 79
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "LIBRARY_TS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mLibraryTimestamp:J

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 85
    sget v0, Lcom/oculus/horizon/R$layout;->request_refund_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 87
    sget v0, Lcom/oculus/horizon/R$id;->request_refund_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    .line 88
    invoke-virtual {v0, p0}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->destroy()V

    .line 183
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onDestroy()V

    .line 184
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->pause()V

    .line 189
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onPause()V

    .line 190
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 195
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->updateTitleBarText()V

    .line 196
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->resume()V

    .line 197
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    .line 112
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 114
    sget v0, Lcom/oculus/horizon/R$id;->learn_more_links:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    sget v1, Lcom/oculus/horizon/R$string;->commerce_refund_policy_label:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/settings/RequestRefundFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    sget v2, Lcom/oculus/horizon/R$string;->common_tos:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/settings/RequestRefundFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    sget v3, Lcom/oculus/horizon/R$string;->commerce_request_refund_learn_more_links:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    .line 118
    invoke-virtual {p0, v3, v4}, Lcom/oculus/horizon/settings/RequestRefundFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 119
    const-string v4, "https://www.oculus.com/legal/return-policy"

    .line 121
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v1

    const-string v4, "https://www.oculus.com/terms"

    .line 122
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v1}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLink(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 128
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RequestRefundFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$array;->commerce_request_refund_reasons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/widget/ArrayAdapter;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/oculus/horizon/R$style;->Theme_Light_Dialog:I

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget v3, Lcom/oculus/horizon/R$layout;->custom_alert_dialog_item:I

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 136
    new-instance v2, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    iget-object v3, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/oculus/horizon/R$string;->commerce_request_refund_reason_hint:I

    .line 138
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/oculus/horizon/settings/RequestRefundFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/oculus/horizon/settings/RequestRefundFragment$2;-><init>(Lcom/oculus/horizon/settings/RequestRefundFragment;[Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2, v1, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    new-instance v2, Lcom/oculus/horizon/settings/RequestRefundFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/RequestRefundFragment$1;-><init>(Lcom/oculus/horizon/settings/RequestRefundFragment;)V

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v1

    .line 162
    sget v0, Lcom/oculus/horizon/R$id;->refund_reason_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mReasonSelect:Lcom/oculus/horizon/widget/CustomEditText;

    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mReasonSelect:Lcom/oculus/horizon/widget/CustomEditText;

    invoke-virtual {v0, v6}, Lcom/oculus/horizon/widget/CustomEditText;->setLocked(Z)V

    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mReasonSelect:Lcom/oculus/horizon/widget/CustomEditText;

    new-instance v2, Lcom/oculus/horizon/settings/RequestRefundFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/oculus/horizon/settings/RequestRefundFragment$3;-><init>(Lcom/oculus/horizon/settings/RequestRefundFragment;Lcom/oculus/horizon/widget/CustomAlertDialog;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/CustomEditText;->setOnFocusChangeListener(Lcom/oculus/horizon/widget/CustomEditText$OnFocusChangeListener;)V

    .line 175
    sget v0, Lcom/oculus/horizon/R$id;->refund_reason_error_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mReasonError:Landroid/widget/TextView;

    .line 177
    sget v0, Lcom/oculus/horizon/R$id;->comments:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomEditText;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RequestRefundFragment;->mComments:Lcom/oculus/horizon/widget/CustomEditText;

    .line 178
    return-void
.end method
