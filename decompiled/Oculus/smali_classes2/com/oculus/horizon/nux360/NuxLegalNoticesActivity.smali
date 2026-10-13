.class public Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NuxLegalNoticesActivity.java"


# instance fields
.field private mContent:Landroid/widget/TextView;

.field private mContentArea:Landroid/widget/FrameLayout;

.field private mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mLoadingIndicatorSection:Landroid/widget/FrameLayout;

.field private mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)V
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/oculus/horizon/nux360/NuxMethods;->$ul_$xXXcom_oculus_horizon_nux360_NuxMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/NuxMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mLoadingIndicatorSection:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mContentArea:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)Lcom/oculus/horizon/widget/EmptyErrorView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    return-object v0
.end method

.method private prefetchNuxData()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mNuxMethods:Lcom/oculus/horizon/nux360/NuxMethods;

    new-instance v1, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity$1;-><init>(Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/NuxMethods;->getTos(Lretrofit/Callback;)V

    .line 86
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {p0, p0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;)V

    .line 47
    sget v0, Lcom/oculus/horizon/R$layout;->nux360_legal_notices_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->setContentView(I)V

    .line 49
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 50
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->nux_legal_notices_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 52
    sget v0, Lcom/oculus/horizon/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mContent:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/oculus/horizon/R$id;->error_view:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 54
    sget v0, Lcom/oculus/horizon/R$id;->content_area:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mContentArea:Landroid/widget/FrameLayout;

    .line 55
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 56
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator_section:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mLoadingIndicatorSection:Landroid/widget/FrameLayout;

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->TERMS_OF_SERVICE:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->prefetchNuxData()V

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 91
    sget v1, Lcom/oculus/horizon/R$menu;->common_close:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 92
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_close:I

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/NuxLegalNoticesActivity;->onBackPressed()V

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
