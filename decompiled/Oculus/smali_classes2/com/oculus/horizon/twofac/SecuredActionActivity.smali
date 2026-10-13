.class public Lcom/oculus/horizon/twofac/SecuredActionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SecuredActionActivity.java"

# interfaces
.implements Lcom/facebook/common/propertybag/PropertyBag;
.implements Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$LoginApprovalsFragmentHost;
.implements Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodsFragmentHost;


# instance fields
.field private mLoginDataHolder:Lcom/oculus/horizon/login/LoginDataHolder;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mPropertyBagHelper:Lcom/facebook/common/propertybag/PropertyBagHelper;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/twofac/SecuredActionActivity;)V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/twofac/SecuredActionActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/twofac/SecuredActionActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/twofac/SecuredActionActivity;)V
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/login/LoginDataHolder;->$ul_$xXXcom_oculus_horizon_login_LoginDataHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/login/LoginDataHolder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/twofac/SecuredActionActivity;->mLoginDataHolder:Lcom/oculus/horizon/login/LoginDataHolder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 28
    new-instance v0, Lcom/facebook/common/propertybag/PropertyBagHelper;

    invoke-direct {v0}, Lcom/facebook/common/propertybag/PropertyBagHelper;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/twofac/SecuredActionActivity;->mPropertyBagHelper:Lcom/facebook/common/propertybag/PropertyBagHelper;

    return-void
.end method

.method private removeFromBackstack(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 92
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 93
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 94
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 95
    return-void
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 79
    sget v1, Lcom/oculus/horizon/R$id;->content:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 80
    if-eqz p3, :cond_1

    .line 81
    if-eqz p4, :cond_0

    .line 82
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 84
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 86
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 87
    return-void
.end method

.method private showTwoFactorMethodsFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/oculus/horizon/login/LoginData$Builder;

    iget-object v1, p0, Lcom/oculus/horizon/twofac/SecuredActionActivity;->mLoginDataHolder:Lcom/oculus/horizon/login/LoginDataHolder;

    invoke-virtual {v1}, Lcom/oculus/horizon/login/LoginDataHolder;->getLoginData()Lcom/oculus/horizon/login/LoginData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/login/LoginData$Builder;-><init>(Lcom/oculus/horizon/login/LoginData;)V

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/login/LoginData$Builder;->setSecuredAction(Z)Lcom/oculus/horizon/login/LoginData$Builder;

    .line 44
    iget-object v1, p0, Lcom/oculus/horizon/twofac/SecuredActionActivity;->mLoginDataHolder:Lcom/oculus/horizon/login/LoginDataHolder;

    invoke-virtual {v0}, Lcom/oculus/horizon/login/LoginData$Builder;->build()Lcom/oculus/horizon/login/LoginData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/login/LoginDataHolder;->setLoginData(Lcom/oculus/horizon/login/LoginData;)V

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v1, "title"

    sget v2, Lcom/oculus/horizon/R$string;->secured_actions_title:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    new-instance v1, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;-><init>()V

    .line 48
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v3, v3}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 50
    return-void
.end method


# virtual methods
.method public getProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/twofac/SecuredActionActivity;->mPropertyBagHelper:Lcom/facebook/common/propertybag/PropertyBagHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/common/propertybag/PropertyBagHelper;->getProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loginApprovalsProceedNext()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->setResult(I)V

    .line 67
    invoke-virtual {p0}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->finish()V

    .line 68
    return-void
.end method

.method public loginApprovalsProceedTerminalNext()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->setResult(I)V

    .line 73
    invoke-virtual {p0}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->finish()V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {p0, p0}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/twofac/SecuredActionActivity;)V

    .line 34
    sget v0, Lcom/oculus/horizon/R$layout;->secured_action_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->setContentView(I)V

    .line 36
    if-nez p1, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->showTwoFactorMethodsFragment()V

    .line 39
    :cond_0
    return-void
.end method

.method public setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/twofac/SecuredActionActivity;->mPropertyBagHelper:Lcom/facebook/common/propertybag/PropertyBagHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/common/propertybag/PropertyBagHelper;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public twoFactorProceedNext(Landroidx/fragment/app/Fragment;)V
    .locals 4
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->removeFromBackstack(Landroidx/fragment/app/Fragment;)V

    .line 57
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v1, "title"

    sget v2, Lcom/oculus/horizon/R$string;->secured_actions_title:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    new-instance v1, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;-><init>()V

    .line 60
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v3, v3}, Lcom/oculus/horizon/twofac/SecuredActionActivity;->showFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    .line 62
    return-void
.end method
