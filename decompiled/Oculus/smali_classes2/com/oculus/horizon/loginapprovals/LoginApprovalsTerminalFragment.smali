.class public Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "LoginApprovalsTerminalFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment$LoginApprovalsTerminalFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment$LoginApprovalsTerminalFragmentHost;",
        ">;",
        "Lcom/oculus/horizon/common/BackPressListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLogger:Lcom/oculus/horizon/login/LoginLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLoginDataHolder:Lcom/oculus/horizon/login/LoginDataHolder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;)V
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;)V
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/oculus/horizon/login/LoginLogger;->$ul_$xXXcom_oculus_horizon_login_LoginLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/login/LoginLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->mLogger:Lcom/oculus/horizon/login/LoginLogger;

    invoke-static {p0}, Lcom/oculus/horizon/login/LoginDataHolder;->$ul_$xXXcom_oculus_horizon_login_LoginDataHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/login/LoginDataHolder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->mLoginDataHolder:Lcom/oculus/horizon/login/LoginDataHolder;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->LOGIN_APPROVALS_TERMINAL:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment$LoginApprovalsTerminalFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment$LoginApprovalsTerminalFragmentHost;->loginApprovalsBackToLogin()V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->mLogger:Lcom/oculus/horizon/login/LoginLogger;

    const-string v1, "return_to_login"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/login/LoginLogger;->reportLoginApprovalsFunnelAction(Ljava/lang/String;)V

    .line 93
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;)V

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$style;->Theme_Nux360_Light:I

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->login_approvals_terminal_fragment:I

    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->mLoginDataHolder:Lcom/oculus/horizon/login/LoginDataHolder;

    invoke-virtual {v0}, Lcom/oculus/horizon/login/LoginDataHolder;->getLoginData()Lcom/oculus/horizon/login/LoginData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/login/LoginData;->getVerifyLoginErrorTitle()Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->mLoginDataHolder:Lcom/oculus/horizon/login/LoginDataHolder;

    invoke-virtual {v0}, Lcom/oculus/horizon/login/LoginDataHolder;->getLoginData()Lcom/oculus/horizon/login/LoginData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/login/LoginData;->getVerifyLoginErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 66
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/facebook/common/string/StringUtil;->isAnyEmptyOrNull([Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    sget-object v0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->TAG:Ljava/lang/String;

    const-string v1, "Failed to verify login"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget v0, Lcom/oculus/horizon/R$string;->common_error_generic_title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    sget v0, Lcom/oculus/horizon/R$string;->common_error_generic_description:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 72
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;->setupToolbar(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 74
    sget v0, Lcom/oculus/horizon/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget v0, Lcom/oculus/horizon/R$id;->return_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    new-instance v1, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment$1;-><init>(Lcom/oculus/horizon/loginapprovals/LoginApprovalsTerminalFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void

    :cond_0
    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_0
.end method
