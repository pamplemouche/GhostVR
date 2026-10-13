.class public Lcom/oculus/horizon/help/HelpFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "HelpFragment.java"


# instance fields
.field mBugReporter:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/horizon/rageshake/BugReporter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mIsIncludedNonEmployeeProvider:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_non_employee_bug_report"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mStyleManager:Lcom/oculus/horizon/style/StyleManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/help/HelpFragment;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/help/HelpFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/help/HelpFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/help/HelpFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/help/HelpFragment;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/oculus/horizon/style/StyleManager;->$ul_$xXXcom_oculus_horizon_style_StyleManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/help/HelpFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-static {p0}, Lcom/oculus/horizon/rageshake/BugReporter;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_rageshake_BugReporter$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/help/HelpFragment;->mBugReporter:Lcom/facebook/inject/Lazy;

    invoke-static {p0}, Lcom/oculus/config/trusted_user/TrustedUserModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fnon$x5Femployee$x5Fbug$x5Freport$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/help/HelpFragment;->mIsIncludedNonEmployeeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/help/HelpFragment;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oculus/horizon/help/HelpFragment;->initiateBugReport()V

    return-void
.end method

.method private initiateBugReport()V
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/oculus/horizon/help/HelpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/help/HelpFragment;->mBugReporter:Lcom/facebook/inject/Lazy;

    .line 111
    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/rageshake/BugReporter;

    new-instance v2, Lcom/oculus/horizon/help/HelpFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/oculus/horizon/help/HelpFragment$3;-><init>(Lcom/oculus/horizon/help/HelpFragment;Landroidx/fragment/app/FragmentActivity;)V

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/rageshake/BugReporter;->createReport(Landroid/app/Activity;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/oculus/horizon/R$string;->help_title:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->HELP:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/oculus/horizon/help/HelpFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/help/HelpFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/help/HelpFragment;)V

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/help/HelpFragment;->mIsIncludedNonEmployeeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget v0, Lcom/oculus/horizon/R$layout;->settings_help_fragment:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/oculus/horizon/R$layout;->help_fragment:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/oculus/horizon/help/HelpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->help_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 96
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    sget v0, Lcom/oculus/horizon/R$id;->customer_support_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/oculus/horizon/help/HelpFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/help/HelpFragment$1;-><init>(Lcom/oculus/horizon/help/HelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/help/HelpFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    sget-object v1, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v0, v1, :cond_0

    .line 76
    sget v0, Lcom/oculus/horizon/R$id;->help_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 77
    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/help/HelpFragment;->mIsIncludedNonEmployeeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget v0, Lcom/oculus/horizon/R$id;->report_a_bug:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/help/HelpFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/help/HelpFragment$2;-><init>(Lcom/oculus/horizon/help/HelpFragment;)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_1
    return-void
.end method
