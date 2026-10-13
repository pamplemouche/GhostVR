.class public Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "Nux360FBLoginExistingAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$FBLoginExistingAccountFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$FBLoginExistingAccountFragmentHost;",
        ">;"
    }
.end annotation


# instance fields
.field private mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->$ul_$xXXcom_oculus_horizon_nux360_Nux360FBLoginDataHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->FB_LOGIN_EXISTING_ACCOUNT:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$style;->Theme_Nux360_Light:I

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->nux360_fblogin_existing_account:I

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 52
    sget v0, Lcom/oculus/horizon/R$id;->existing_account_email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->getData()Lcom/oculus/horizon/nux360/FBLoginData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/FBLoginData;->getExistingEmailConflict()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/horizon/util/EmailUtils;->maskEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget v0, Lcom/oculus/horizon/R$id;->existing_account_connect_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    new-instance v2, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$1;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget v0, Lcom/oculus/horizon/R$id;->create_account_link:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    new-instance v2, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment$2;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Lcom/oculus/horizon/R$string;->common_fblogin_existing_account:I

    invoke-virtual {p0, v1, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginExistingAccountFragment;->setupToolbar(Landroid/view/View;I)V

    .line 83
    return-object v1
.end method
