.class public Lcom/oculus/auth/service/AuthService;
.super Landroid/app/IntentService;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/auth/service/AuthService$AuthResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mAuthManager:Lcom/oculus/auth/service/AuthManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTrustedAppVerified:Lcom/oculus/auth/service/AuthTrustedAppVerifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/auth/service/AuthService;)V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/auth/service/AuthService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/auth/service/AuthService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/auth/service/AuthService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/auth/service/AuthService;)V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/auth/service/AuthService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/auth/service/AuthManager;->$ul_$xXXcom_oculus_auth_service_AuthManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/auth/service/AuthManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/auth/service/AuthService;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    invoke-static {p0}, Lcom/oculus/auth/service/AuthTrustedAppVerifier;->$ul_$xXXcom_oculus_auth_service_AuthTrustedAppVerifier$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/auth/service/AuthTrustedAppVerifier;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/auth/service/AuthService;->mTrustedAppVerified:Lcom/oculus/auth/service/AuthTrustedAppVerifier;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/auth/service/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/auth/service/AuthService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "AuthService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private isCallerAppTrusted(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 134
    invoke-static {p1}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/oculus/auth/service/AuthService;->mTrustedAppVerified:Lcom/oculus/auth/service/AuthTrustedAppVerifier;

    invoke-virtual {v1, v0}, Lcom/oculus/auth/service/AuthTrustedAppVerifier;->isTrusted(Lcom/facebook/secure/trustedapp/AppIdentity;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 22
    invoke-static {p0, p0}, Lcom/oculus/auth/service/AuthService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/auth/service/AuthService;)V

    .line 38
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    sget-object v0, Lcom/oculus/auth/service/AuthService;->TAG:Ljava/lang/String;

    const-string v1, "Intent action is null"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 47
    :cond_0
    sget-object v0, Lcom/oculus/auth/service/AuthService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent action is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/oculus/auth/service/AuthService;->isCallerAppTrusted(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    sget-object v0, Lcom/oculus/auth/service/AuthService;->TAG:Ljava/lang/String;

    const-string v1, "Called from untrusted app."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 129
    sget-object v0, Lcom/oculus/auth/service/AuthService;->TAG:Ljava/lang/String;

    const-string v1, "Unrecognized intent action: %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :sswitch_0
    const-string v3, "com.oculus.auth.ACTION_LOGIN_API"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v3, "com.oculus.auth.ACTION_LOGIN_WITH_FB_AUTH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "com.oculus.auth.ACTION_LOGOUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "com.oculus.auth.ACTION_STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "com.oculus.auth.ACTION_SEND_TWO_FACTOR_CODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "com.oculus.auth.ACTION_VERIFY_LOGIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "com.oculus.auth.ACTION_VERIFY_PIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v3, "com.oculus.auth.ACTION_FETCH_TWO_FACTOR_METHODS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v3, "com.oculus.auth.ACTION_RESEND_LOGIN_APPROVAL_CODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v3, "com.oculus.auth.ACTION_FB_LOGIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v3, "com.oculus.auth.ACTION_FB_VERIFY_LOGIN_APPROVALS_CODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_b
    const-string v3, "com.oculus.auth.ACTION_FB_CHECK_MACHINE_APPROVAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "com.oculus.auth.ACTION_FB_MACHINE_APPROVAL_LOGIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "com.oculus.auth.ACTION_FB_RESEND_SMS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "com.oculus.auth.ACTION_LINK_FB_ACCOUNT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_1

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/AuthManager;->performLogin(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/AuthManager;->performLoginWithFbAuth(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/AuthManager;->performLogout(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 70
    :pswitch_3
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/AuthManager;->performQueryLogin(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 75
    :pswitch_4
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/AuthManager;->performSendTwoFactorCode(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 80
    :pswitch_5
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/AuthManager;->performVerifyLogin(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 85
    :pswitch_6
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/AuthManager;->performVerifyPin(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 90
    :pswitch_7
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/AuthManager;->performFetchTwoFactorMethods(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 95
    :pswitch_8
    iget-object v0, p0, Lcom/oculus/auth/service/AuthService;->mAuthManager:Lcom/oculus/auth/service/AuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/AuthManager;->performResendLoginApprovalsCode(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 100
    :pswitch_9
    sget v0, Lcom/oculus/auth/service/AuthModule$UL_id;->$ul_$xXXcom_oculus_auth_service_FacebookAuthManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/auth/service/AuthService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/service/FacebookAuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/FacebookAuthManager;->performFBLogin(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 105
    :pswitch_a
    sget v0, Lcom/oculus/auth/service/AuthModule$UL_id;->$ul_$xXXcom_oculus_auth_service_FacebookAuthManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/auth/service/AuthService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/service/FacebookAuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/FacebookAuthManager;->performFBVerifyLoginApprovalCode(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 110
    :pswitch_b
    sget v0, Lcom/oculus/auth/service/AuthModule$UL_id;->$ul_$xXXcom_oculus_auth_service_FacebookAuthManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/auth/service/AuthService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/service/FacebookAuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/FacebookAuthManager;->performFBPollForApproval(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 115
    :pswitch_c
    sget v0, Lcom/oculus/auth/service/AuthModule$UL_id;->$ul_$xXXcom_oculus_auth_service_FacebookAuthManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/auth/service/AuthService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/service/FacebookAuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/FacebookAuthManager;->performFBMachineApprovalLogin(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 120
    :pswitch_d
    sget v0, Lcom/oculus/auth/service/AuthModule$UL_id;->$ul_$xXXcom_oculus_auth_service_FacebookAuthManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/auth/service/AuthService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/service/FacebookAuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/FacebookAuthManager;->performFBResendSms(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 125
    :pswitch_e
    sget v0, Lcom/oculus/auth/service/AuthModule$UL_id;->$ul_$xXXcom_oculus_auth_service_FacebookAuthManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/auth/service/AuthService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/service/FacebookAuthManager;

    invoke-virtual {v0, p1}, Lcom/oculus/auth/service/FacebookAuthManager;->performFBLinkAccount(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        -0x6c202826 -> :sswitch_b
        -0x6a946896 -> :sswitch_8
        -0x5ffa057b -> :sswitch_2
        -0x53c44b13 -> :sswitch_3
        -0x3fe107d6 -> :sswitch_6
        -0x3fbf7bbf -> :sswitch_9
        -0x236997d -> :sswitch_1
        0xd228129 -> :sswitch_0
        0x1449293d -> :sswitch_d
        0x19e72510 -> :sswitch_a
        0x1ca31f6d -> :sswitch_c
        0x27e06d15 -> :sswitch_7
        0x340be0be -> :sswitch_5
        0x6a38584e -> :sswitch_4
        0x73951054 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
