.class public Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "CreditCardFormFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;,
        Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;
    }
.end annotation


# instance fields
.field private mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCVVFieldAdvancingTextWatcher:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;

.field private mContext:Landroid/content/Context;

.field private mCountry:Landroid/widget/EditText;

.field private mCountryCodeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/oculus/http/core/common/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private mCountryLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mCreditCardCVV:Landroid/widget/EditText;

.field private mCreditCardCVVLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mCreditCardIcon:Landroid/widget/ImageView;

.field private mCreditCardInfoErrorMessage:Landroid/widget/TextView;

.field private mCreditCardNumber:Landroid/widget/EditText;

.field private mCreditCardNumberErrorMessage:Landroid/widget/TextView;

.field private mCreditCardNumberLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mEventListener:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

.field private mExpirationMonth:Landroid/widget/EditText;

.field private mExpirationMonthLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mExpirationYear:Landroid/widget/EditText;

.field private mExpirationYearLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mInitialViewHeight:I

.field mLocaleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedCountry:Lcom/oculus/http/core/common/CountryCode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mZip:Landroid/widget/EditText;

.field private mZipKeyboardOpenListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mZipLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V
    .locals 1

    .prologue
    .line 60
    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mLocaleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/Editable;Lcom/oculus/util/commerce/PaymentCardAssociation;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->formatCCNumber(Landroid/text/Editable;Lcom/oculus/util/commerce/PaymentCardAssociation;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->scrollToView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZipKeyboardOpenListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryCodeAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Lcom/oculus/http/core/common/CountryCode;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->onSelectCountry(Lcom/oculus/http/core/common/CountryCode;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZip:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Lcom/oculus/horizon/api/registration/SupportedCountriesResponse;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->onFetchSupportedCountriesResponse(Lcom/oculus/horizon/api/registration/SupportedCountriesResponse;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->onFetchSupportedCountriesError(Lcom/oculus/http/core/base/ApiError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/text/Editable;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->updateCreditCardDisplayIcon(Landroid/text/Editable;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Lcom/oculus/util/commerce/PaymentCardAssociation;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->updateExpectedLengthForCVV(Lcom/oculus/util/commerce/PaymentCardAssociation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->moveFocusToNextField(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCountrySelect()V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mEventListener:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mInitialViewHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)Lcom/oculus/horizon/widget/ProgressButton;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    return-object v0
.end method

.method private clearInputErrors()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumberLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationMonthLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationYearLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVVLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZipLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardInfoErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumberErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    return-void
.end method

.method private fetchSupportedCountries()V
    .locals 4

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 612
    new-instance v1, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 614
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 615
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setCancelable(Z)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 619
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    new-instance v2, Lcom/oculus/horizon/api/registration/SupportedCountriesRequest;

    invoke-direct {v2}, Lcom/oculus/horizon/api/registration/SupportedCountriesRequest;-><init>()V

    new-instance v3, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$11;

    invoke-direct {v3, p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$11;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/api/ApiRequestManager;->post(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V

    .line 634
    return-void
.end method

.method private static formatCCNumber(Landroid/text/Editable;Lcom/oculus/util/commerce/PaymentCardAssociation;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->stripNonNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    :try_start_0
    invoke-virtual {p1}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getCardType()Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->formatCreditCardNumberWithSpaces(Lcom/oculus/util/commerce/PaymentCardAssociation$CardType;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 398
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p0, v3, v1, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 400
    return-void

    .line 398
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p0, v3, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    throw v0
.end method

.method private getRootView()Landroid/view/View;
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private logError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 671
    const-string v0, "CreditCardFormFragment"

    invoke-static {v0, p1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method private moveFocusToNextField(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 412
    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 413
    return-void
.end method

.method private onFetchSupportedCountriesError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    if-ne v0, v1, :cond_0

    .line 653
    sget v0, Lcom/oculus/horizon/R$string;->common_error_network:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 658
    :goto_0
    invoke-direct {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->onFetchSupportedCountriesError(Ljava/lang/String;)V

    .line 659
    return-void

    .line 655
    :cond_0
    sget v0, Lcom/oculus/horizon/R$string;->commerce_display_country_list_error:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    const-string v1, "Failed to fetch supported country list"

    invoke-direct {p0, v1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onFetchSupportedCountriesError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 664
    invoke-direct {p0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mEventListener:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mEventListener:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    invoke-interface {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;->removeFocus()V

    .line 668
    :cond_0
    return-void
.end method

.method private onFetchSupportedCountriesResponse(Lcom/oculus/horizon/api/registration/SupportedCountriesResponse;)V
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryCodeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 638
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryCodeAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mLocaleProvider:Ljavax/inject/Provider;

    .line 639
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/oculus/horizon/api/registration/SupportedCountriesResponse;->getCountries()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oculus/http/core/util/CountryUtils;->createLocalizedCountryList(Ljava/util/Locale;Lcom/google/common/collect/ImmutableList;)Ljava/util/List;

    move-result-object v0

    .line 638
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 641
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryCodeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    sget v0, Lcom/oculus/horizon/R$string;->commerce_display_country_list_error:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    const-string v1, "Failed to fetch supported country list"

    invoke-direct {p0, v1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->logError(Ljava/lang/String;)V

    .line 644
    invoke-direct {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->onFetchSupportedCountriesError(Ljava/lang/String;)V

    .line 647
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCountrySelect()V

    .line 648
    return-void
.end method

.method private onSelectCountry(Lcom/oculus/http/core/common/CountryCode;)V
    .locals 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSelectedCountry:Lcom/oculus/http/core/common/CountryCode;

    .line 581
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSelectedCountry:Lcom/oculus/http/core/common/CountryCode;

    .line 582
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSelectedCountry:Lcom/oculus/http/core/common/CountryCode;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountry:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSelectedCountry:Lcom/oculus/http/core/common/CountryCode;

    iget-object v2, v2, Lcom/oculus/http/core/common/CountryCode;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardInfoErrorMessage:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSelectedCountry:Lcom/oculus/http/core/common/CountryCode;

    invoke-virtual {v1, v0}, Lcom/oculus/http/core/common/CountryCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZip:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->clearInputErrors()V

    .line 591
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZip:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 593
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZip:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 595
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$10;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$10;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V

    const-wide/16 v2, 0xfa

    .line 596
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    return-void
.end method

.method private scrollToView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 290
    return-void
.end method

.method private setAllTextsToErrorState()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumberLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationMonthLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationYearLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVVLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZipLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 508
    return-void
.end method

.method private showCountrySelect()V
    .locals 5

    .prologue
    .line 537
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryCodeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->fetchSupportedCountries()V

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    new-instance v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->registration_country_title:I

    .line 544
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryCodeAdapter:Landroid/widget/ArrayAdapter;

    new-instance v2, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$9;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$9;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V

    .line 545
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    new-instance v2, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$8;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$8;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V

    .line 555
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v3

    .line 565
    invoke-virtual {v3}, Lcom/oculus/horizon/widget/CustomAlertDialog;->show()V

    .line 567
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSelectedCountry:Lcom/oculus/http/core/common/CountryCode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSelectedCountry:Lcom/oculus/http/core/common/CountryCode;

    iget-object v0, v0, Lcom/oculus/http/core/common/CountryCode;->isoCode:Ljava/lang/String;

    move-object v1, v0

    .line 571
    :goto_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryCodeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_0

    .line 572
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryCodeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/http/core/common/CountryCode;

    iget-object v0, v0, Lcom/oculus/http/core/common/CountryCode;->isoCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    invoke-virtual {v3}, Lcom/oculus/horizon/widget/CustomAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 567
    :cond_2
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mLocaleProvider:Ljavax/inject/Provider;

    .line 570
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v1, v0}, Lcom/oculus/http/core/util/CountryUtils;->getCurrentCountryIsoCode(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 571
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method

.method private showCreditCardInfoErrorMessage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mEventListener:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mEventListener:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    invoke-interface {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;->hideKeyboardAndRemoveFocus()V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardInfoErrorMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardInfoErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    return-void
.end method

.method private showCreditCardNumberErrorMessage()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mEventListener:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mEventListener:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    invoke-interface {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;->hideKeyboardAndRemoveFocus()V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumberErrorMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    return-void
.end method

.method private updateCreditCardDisplayIcon(Landroid/text/Editable;I)V
    .locals 2

    .prologue
    .line 403
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateExpectedLengthForCVV(Lcom/oculus/util/commerce/PaymentCardAssociation;)V
    .locals 4

    .prologue
    .line 293
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    .line 294
    invoke-virtual {p1}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getCVVLength()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 295
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVV:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 296
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCVVFieldAdvancingTextWatcher:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;

    invoke-virtual {p1}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getCVVLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;->updateExpectedLength(I)V

    .line 297
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_ADD_PAYMENT_METHOD:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 133
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Landroid/widget/ArrayAdapter;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/oculus/horizon/R$style;->Theme_Light_Dialog:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/oculus/horizon/R$layout;->custom_alert_dialog_item:I

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryCodeAdapter:Landroid/widget/ArrayAdapter;

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V

    .line 128
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 143
    sget v0, Lcom/oculus/horizon/R$layout;->add_credit_card_fragment:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 145
    sget v0, Lcom/oculus/horizon/R$id;->credit_card_info_section:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 147
    sget v0, Lcom/oculus/horizon/R$id;->card_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardIcon:Landroid/widget/ImageView;

    .line 148
    sget v0, Lcom/oculus/horizon/R$id;->card_number:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumber:Landroid/widget/EditText;

    .line 149
    sget v0, Lcom/oculus/horizon/R$id;->card_number_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumberLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumber:Landroid/widget/EditText;

    new-instance v2, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$1;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    sget v0, Lcom/oculus/horizon/R$id;->card_cvv:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVV:Landroid/widget/EditText;

    .line 182
    sget v0, Lcom/oculus/horizon/R$id;->card_cvv_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVVLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 183
    new-instance v0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVV:Landroid/widget/EditText;

    sget-object v3, Lcom/oculus/util/commerce/PaymentCardAssociation;->UNKNOWN:Lcom/oculus/util/commerce/PaymentCardAssociation;

    .line 185
    invoke-virtual {v3}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getCVVLength()I

    move-result v3

    invoke-direct {v0, p0, v2, v3}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/widget/EditText;I)V

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCVVFieldAdvancingTextWatcher:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;

    .line 186
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVV:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCVVFieldAdvancingTextWatcher:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    sget v0, Lcom/oculus/horizon/R$id;->card_expiration_month:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationMonth:Landroid/widget/EditText;

    .line 189
    sget v0, Lcom/oculus/horizon/R$id;->card_expiration_month_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationMonthLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 190
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationMonth:Landroid/widget/EditText;

    new-instance v2, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;

    iget-object v3, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationMonth:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3, v5}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 193
    sget v0, Lcom/oculus/horizon/R$id;->card_expiration_year:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationYear:Landroid/widget/EditText;

    .line 194
    sget v0, Lcom/oculus/horizon/R$id;->card_expiration_year_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationYearLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 195
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationYear:Landroid/widget/EditText;

    new-instance v2, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;

    iget-object v3, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationYear:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3, v5}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;Landroid/widget/EditText;I)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    sget v0, Lcom/oculus/horizon/R$id;->card_country:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountry:Landroid/widget/EditText;

    .line 199
    sget v0, Lcom/oculus/horizon/R$id;->card_country_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 200
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountry:Landroid/widget/EditText;

    new-instance v2, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$2;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountry:Landroid/widget/EditText;

    new-instance v2, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$3;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$3;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    sget v0, Lcom/oculus/horizon/R$id;->card_zip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZip:Landroid/widget/EditText;

    .line 218
    sget v0, Lcom/oculus/horizon/R$id;->card_zip_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZipLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 219
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZip:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZip:Landroid/widget/EditText;

    new-instance v2, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$4;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$4;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 235
    new-instance v0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$5;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$5;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZipKeyboardOpenListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 246
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZip:Landroid/widget/EditText;

    new-instance v2, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$6;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$6;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 264
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 266
    sget v0, Lcom/oculus/horizon/R$id;->credit_card_info_error_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardInfoErrorMessage:Landroid/widget/TextView;

    .line 267
    sget v0, Lcom/oculus/horizon/R$id;->credit_card_number_error_message:I

    .line 268
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumberErrorMessage:Landroid/widget/TextView;

    .line 270
    sget v0, Lcom/oculus/horizon/R$id;->save_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 271
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v2, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$7;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$7;-><init>(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->destroy()V

    .line 349
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroy()V

    .line 350
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 325
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardIcon:Landroid/widget/ImageView;

    .line 326
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumber:Landroid/widget/EditText;

    .line 327
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumberLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 328
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVV:Landroid/widget/EditText;

    .line 329
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVVLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 330
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCVVFieldAdvancingTextWatcher:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$FieldAdvancingTextWatcher;

    .line 331
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationMonth:Landroid/widget/EditText;

    .line 332
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationMonthLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 333
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationYear:Landroid/widget/EditText;

    .line 334
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationYearLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 335
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountry:Landroid/widget/EditText;

    .line 336
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 337
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZip:Landroid/widget/EditText;

    .line 338
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZipLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 339
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZipKeyboardOpenListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 340
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardInfoErrorMessage:Landroid/widget/TextView;

    .line 341
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumberErrorMessage:Landroid/widget/TextView;

    .line 342
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 343
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 344
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->pause()V

    .line 314
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 315
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 302
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->resume()V

    .line 303
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 306
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mInitialViewHeight:I

    .line 286
    return-void
.end method

.method public setCreditCardFormEventListener(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mEventListener:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;

    .line 354
    return-void
.end method

.method public showError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->setAllTextsToErrorState()V

    .line 375
    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    if-ne v0, v1, :cond_1

    .line 376
    sget v0, Lcom/oculus/horizon/R$string;->common_error_network:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_1
    const v0, 0x1cdb16

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    sget v0, Lcom/oculus/horizon/R$string;->commerce_invalid_credit_card_info:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVVLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationMonthLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationYearLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 383
    :cond_2
    const v0, 0x1cdaff

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    sget v0, Lcom/oculus/horizon/R$string;->commerce_invalid_credit_card_info:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZipLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 386
    :cond_3
    const v0, 0x14a559

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 387
    sget v0, Lcom/oculus/horizon/R$string;->commerce_card_card_error_reached_limit:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_4
    sget v0, Lcom/oculus/horizon/R$string;->commerce_card_generic_error:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLoadingState()V
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    goto :goto_0
.end method

.method public stopLoadingState()V
    .locals 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    goto :goto_0
.end method

.method public validateAndCreateCreditCardModel()Lcom/oculus/horizon/commerce/CreditCardModel;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 422
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->clearInputErrors()V

    .line 423
    const/4 v1, 0x1

    .line 426
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->stripNonNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {v0}, Lcom/oculus/util/commerce/CreditCardUtils;->isCardNumberValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 429
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardNumberLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, " "

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 430
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardNumberErrorMessage()V

    move v2, v4

    .line 435
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationMonth:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    iget-object v3, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationYear:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "20"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-static {v1}, Lcom/oculus/util/commerce/CreditCardUtils;->isValidMonth(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 439
    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationMonthLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v5, " "

    invoke-virtual {v2, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 440
    sget v2, Lcom/oculus/horizon/R$string;->commerce_invalid_credit_card_info:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    move v2, v4

    .line 443
    :cond_0
    invoke-static {v6}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationYearLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v5, " "

    invoke-virtual {v2, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 445
    sget v2, Lcom/oculus/horizon/R$string;->commerce_invalid_credit_card_info:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    move v2, v4

    .line 448
    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 450
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 451
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 452
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 449
    invoke-static {v5, v7, v3}, Lcom/oculus/util/commerce/CreditCardUtils;->isExpired(Ljava/util/Calendar;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationMonthLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, " "

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mExpirationYearLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, " "

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 455
    sget v2, Lcom/oculus/horizon/R$string;->commerce_card_expired:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    move v2, v4

    .line 459
    :cond_2
    iget-object v3, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVV:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 460
    invoke-static {v5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 461
    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVVLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, " "

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 462
    sget v2, Lcom/oculus/horizon/R$string;->commerce_invalid_credit_card_info:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    move v2, v4

    .line 467
    :cond_3
    invoke-static {v0}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->determineCardAssociation(Ljava/lang/String;)Lcom/oculus/util/commerce/PaymentCardAssociation;

    move-result-object v3

    .line 468
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getCVVLength()I

    move-result v3

    if-eq v7, v3, :cond_4

    .line 469
    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCreditCardCVVLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, " "

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 470
    sget v2, Lcom/oculus/horizon/R$string;->commerce_invalid_cvv_for_amex:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    move v2, v4

    .line 474
    :cond_4
    iget-object v3, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 475
    iget-object v7, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSelectedCountry:Lcom/oculus/http/core/common/CountryCode;

    if-eqz v7, :cond_5

    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 476
    :cond_5
    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mCountryLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v3, " "

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 477
    sget v2, Lcom/oculus/horizon/R$string;->commerce_invalid_credit_card_info:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    move v2, v4

    .line 480
    :cond_6
    iget-object v3, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZip:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 481
    iget-object v7, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSelectedCountry:Lcom/oculus/http/core/common/CountryCode;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSelectedCountry:Lcom/oculus/http/core/common/CountryCode;

    iget-object v7, v7, Lcom/oculus/http/core/common/CountryCode;->isoCode:Ljava/lang/String;

    .line 482
    invoke-static {v3, v7}, Lcom/oculus/util/commerce/CreditCardUtils;->isZipCodeValidForCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 483
    :cond_7
    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mZipLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v7, " "

    invoke-virtual {v2, v7}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 484
    sget v2, Lcom/oculus/horizon/R$string;->commerce_invalid_credit_card_info:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showCreditCardInfoErrorMessage(Ljava/lang/String;)V

    move v2, v4

    .line 488
    :cond_8
    if-nez v2, :cond_9

    .line 489
    const/4 v0, 0x0

    .line 492
    :goto_1
    return-object v0

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "20"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->mSelectedCountry:Lcom/oculus/http/core/common/CountryCode;

    iget-object v4, v4, Lcom/oculus/http/core/common/CountryCode;->isoCode:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/oculus/horizon/commerce/CreditCardModelUtils;->fromUserInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/commerce/CreditCardModel;

    move-result-object v0

    goto :goto_1

    :cond_a
    move v2, v1

    goto/16 :goto_0
.end method
