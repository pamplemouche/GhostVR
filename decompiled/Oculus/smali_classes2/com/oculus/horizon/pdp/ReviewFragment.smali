.class public Lcom/oculus/horizon/pdp/ReviewFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "ReviewFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDescriptionEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private mIsProcessing:Z

.field private mItemId:Ljava/lang/String;

.field private mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mRatingView:Lcom/oculus/horizon/widget/RatingView;

.field private mReferringPage:Ljava/lang/String;

.field private mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTitleEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private mUserRating:Lcom/oculus/horizon/api/common/Item$QualityRating;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mVersionCode:I


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/ReviewFragment;)V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/pdp/ReviewFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/ReviewFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/pdp/ReviewFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/ReviewFragment;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/oculus/horizon/pdp/StoreItemMethods;->$ul_$xXXcom_oculus_horizon_pdp_StoreItemMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/pdp/StoreItemMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ReviewFragment;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ReviewFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ReviewFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/oculus/horizon/pdp/ReviewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/pdp/ReviewFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mIsProcessing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/ReviewFragment;)Lcom/oculus/horizon/widget/ProgressButton;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/pdp/ReviewFragment;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->onSend()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/pdp/ReviewFragment;Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/ReviewFragment;->onSendFinished(Lcom/oculus/http/core/base/ApiError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/pdp/ReviewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/pdp/ReviewFragment;)Lcom/oculus/libraryapi/OVRLibraryInternal;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/pdp/ReviewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mReferringPage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/pdp/ReviewFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method private onSend()V
    .locals 7

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->startLoadingState()V

    .line 173
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mRatingView:Lcom/oculus/horizon/widget/RatingView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/RatingView;->getRating()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mTitleEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mDescriptionEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 177
    iget-object v6, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    new-instance v0, Lcom/oculus/horizon/api/rating/AddRatingRequest;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mVersionCode:I

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/api/rating/AddRatingRequest;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/oculus/horizon/pdp/ReviewFragment$3;

    invoke-direct {v1, p0, p0}, Lcom/oculus/horizon/pdp/ReviewFragment$3;-><init>(Lcom/oculus/horizon/pdp/ReviewFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v6, v0, v1}, Lcom/oculus/horizon/pdp/StoreItemMethods;->addRating(Lcom/oculus/horizon/api/rating/AddRatingRequest;Lretrofit/Callback;)V

    .line 190
    return-void
.end method

.method private onSendFinished(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 193
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->stopLoadingState()V

    .line 195
    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    if-ne v0, v1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->showOfflineModal()V

    .line 218
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    iget-object v1, v1, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget-object v1, v1, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_user_msg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->pdp_review_success:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 208
    invoke-static {}, Lcom/oculus/executors/OculusThreadExecutor;->getInstance()Lcom/oculus/executors/OculusThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/pdp/ReviewFragment$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/ReviewFragment$4;-><init>(Lcom/oculus/horizon/pdp/ReviewFragment;)V

    .line 209
    invoke-virtual {v0, v1}, Lcom/oculus/executors/OculusThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showOfflineModal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    sget v1, Lcom/oculus/horizon/R$string;->common_error_network_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 236
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_error_network_description:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 237
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 238
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const-string v1, "offline_modal_fragment"

    .line 239
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private startLoadingState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 221
    iput-boolean v2, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mIsProcessing:Z

    .line 222
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 223
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mTitleEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mDescriptionEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 225
    return-void
.end method

.method private stopLoadingState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mTitleEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mDescriptionEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 231
    iput-boolean v1, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mIsProcessing:Z

    .line 232
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/oculus/horizon/pdp/ReviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "getTrackingView called but shouldn\'t because implements own reportView"

    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mIsProcessing:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Lcom/oculus/horizon/R$style;->Theme_Light:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/ReviewFragment;->setTheme(I)V

    .line 38
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/ReviewFragment;)V

    .line 67
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 68
    const-string v0, "item_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mItemId:Ljava/lang/String;

    .line 69
    const-string v0, "referring_page"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mReferringPage:Ljava/lang/String;

    .line 70
    const-string v0, "rating"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$QualityRating;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mUserRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    .line 71
    const-string v0, "package_name"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mPackageName:Ljava/lang/String;

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 77
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mVersionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mPackageName:Ljava/lang/String;

    const-string v2, "package_name is null"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mVersionCode:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string v1, "Invalid version_code: -1"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 84
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v0, "version_code"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mVersionCode:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 83
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    sget v0, Lcom/oculus/horizon/R$layout;->review_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 159
    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mDescriptionEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 160
    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mTitleEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 161
    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mRatingView:Lcom/oculus/horizon/widget/RatingView;

    .line 162
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 163
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 153
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 147
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->pdp_action_review:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 148
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    sget v0, Lcom/oculus/horizon/R$id;->rating:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/RatingView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mRatingView:Lcom/oculus/horizon/widget/RatingView;

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mRatingView:Lcom/oculus/horizon/widget/RatingView;

    new-instance v1, Lcom/oculus/horizon/pdp/ReviewFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/ReviewFragment$1;-><init>(Lcom/oculus/horizon/pdp/ReviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/RatingView;->setOnRatingViewChangedListener(Lcom/oculus/horizon/widget/RatingView$OnRatingViewChangeListener;)V

    .line 106
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mTitleEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 107
    sget v0, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mDescriptionEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 109
    sget v0, Lcom/oculus/horizon/R$id;->send_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mSendButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/pdp/ReviewFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/ReviewFragment$2;-><init>(Lcom/oculus/horizon/pdp/ReviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mUserRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mTitleEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mUserRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mDescriptionEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mUserRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mRatingView:Lcom/oculus/horizon/widget/RatingView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mUserRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget v1, v1, Lcom/oculus/horizon/api/common/Item$QualityRating;->score:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/RatingView;->setRating(F)V

    .line 124
    :cond_0
    return-void
.end method

.method protected reportView()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mItemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ReviewFragment;->mReferringPage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportUserReviewsAuthorView(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected reportViewEnd()V
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->USER_REVIEWS_AUTHOR:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/ReviewFragment;->reportViewEndInternal(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 142
    return-void
.end method
