.class public Lcom/oculus/modules/AuthModuleImpl;
.super Lcom/oculus/modules/codegen/AuthModule;
.source "AuthModuleImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOVRAuth:Lcom/oculus/authapi/OVRAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oculus/modules/AuthModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/AuthModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oculus/modules/codegen/AuthModule;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oculus/modules/AuthModuleImpl;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/oculus/modules/AuthModuleImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/oculus/modules/AuthModuleImpl;->makeLoginResult()Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/modules/AuthModuleImpl;->makeCheckFbMachineApprovalResult(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/oculus/modules/AuthModuleImpl;->makeSendTwoFactorCodeResult()Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/modules/AuthModuleImpl;->makeSendTwoFactorCodeResult(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/oculus/modules/AuthModuleImpl;->makeVerifyLoginResult()Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/modules/AuthModuleImpl;->makeVerifyLoginResult(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/modules/AuthModuleImpl;->makeFbLoginResult(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oculus/modules/AuthModuleImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/AuthModuleImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/modules/AuthModuleImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/authapi/AuthLoginError;)Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/authapi/AuthLoginError;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/modules/AuthModuleImpl;->makeLoginResult(Lcom/oculus/authapi/AuthLoginError;)Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/oculus/modules/AuthModuleImpl;->makeLinkFbAccountResult()Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/modules/AuthModuleImpl;->makeLinkFbAccountResult(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/oculus/modules/AuthModuleImpl;->makeLoginWithFbAuthResult()Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/authapi/AuthLoginWithFbAuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/authapi/AuthLoginWithFbAuthError;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/modules/AuthModuleImpl;->makeLoginWithFbAuthResult(Lcom/oculus/authapi/AuthLoginWithFbAuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/authapi/AuthFbLoginResult;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/authapi/AuthFbLoginResult;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/modules/AuthModuleImpl;->makeFbLoginResult(Lcom/oculus/authapi/AuthFbLoginResult;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/authapi/AuthFbLoginError;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/authapi/AuthFbLoginError;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/modules/AuthModuleImpl;->makeFbLoginResult(Lcom/oculus/authapi/AuthFbLoginError;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Z)Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/modules/AuthModuleImpl;->makeCheckFbMachineApprovalResult(Z)Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;

    move-result-object v0

    return-object v0
.end method

.method private static makeCheckFbMachineApprovalResult(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;
    .locals 4
    .param p0, "from"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 409
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;-><init>()V

    .line 410
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;
    new-instance v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-direct {v1}, Lcom/oculus/modules/codegen/AuthModule$AuthError;-><init>()V

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    .line 411
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getErrorCode()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->code:D

    .line 412
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->message:Ljava/lang/String;

    .line 413
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->title:Ljava/lang/String;

    .line 414
    return-object v0
.end method

.method private static makeCheckFbMachineApprovalResult(Z)Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;
    .locals 2
    .param p0, "approved"    # Z

    .prologue
    .line 402
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;-><init>()V

    .line 403
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;->approved:Ljava/lang/Boolean;

    .line 404
    return-object v0
.end method

.method private static makeFbLoginResult(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;
    .locals 4
    .param p0, "from"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 379
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;-><init>()V

    .line 380
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;
    new-instance v1, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-direct {v1}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;-><init>()V

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    .line 381
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getErrorCode()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->code:D

    .line 382
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->message:Ljava/lang/String;

    .line 383
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->title:Ljava/lang/String;

    .line 384
    return-object v0
.end method

.method private static makeFbLoginResult(Lcom/oculus/authapi/AuthFbLoginError;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;
    .locals 4
    .param p0, "from"    # Lcom/oculus/authapi/AuthFbLoginError;

    .prologue
    .line 388
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;-><init>()V

    .line 389
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;
    new-instance v1, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-direct {v1}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;-><init>()V

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    .line 390
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginError;->getErrorCode()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->code:D

    .line 391
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginError;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->message:Ljava/lang/String;

    .line 392
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginError;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->title:Ljava/lang/String;

    .line 393
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginError;->getUid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->fbUserId:Ljava/lang/String;

    .line 394
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginError;->getMachineId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->machineId:Ljava/lang/String;

    .line 395
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginError;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->authToken:Ljava/lang/String;

    .line 396
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginError;->getLoginFirstFactor()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->loginFirstFactor:Ljava/lang/String;

    .line 397
    return-object v0
.end method

.method private static makeFbLoginResult(Lcom/oculus/authapi/AuthFbLoginResult;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;
    .locals 2
    .param p0, "from"    # Lcom/oculus/authapi/AuthFbLoginResult;

    .prologue
    .line 372
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;-><init>()V

    .line 373
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;
    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginResult;->getUid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->fbUserId:Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->fbAccessToken:Ljava/lang/String;

    .line 375
    return-object v0
.end method

.method private static makeLinkFbAccountResult()Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;-><init>()V

    return-object v0
.end method

.method private static makeLinkFbAccountResult(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;
    .locals 4
    .param p0, "from"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 341
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;-><init>()V

    .line 342
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;
    new-instance v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-direct {v1}, Lcom/oculus/modules/codegen/AuthModule$AuthError;-><init>()V

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    .line 343
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getErrorCode()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->code:D

    .line 344
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->message:Ljava/lang/String;

    .line 345
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->title:Ljava/lang/String;

    .line 346
    return-object v0
.end method

.method private static makeLoginResult()Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;
    .locals 1

    .prologue
    .line 319
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;-><init>()V

    return-object v0
.end method

.method private static makeLoginResult(Lcom/oculus/authapi/AuthLoginError;)Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;
    .locals 5
    .param p0, "from"    # Lcom/oculus/authapi/AuthLoginError;

    .prologue
    const/4 v4, 0x0

    .line 323
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;-><init>()V

    .line 324
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;
    new-instance v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;

    invoke-direct {v1}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;-><init>()V

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;

    .line 325
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginError;->getErrorCode()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->code:D

    .line 326
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginError;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->message:Ljava/lang/String;

    .line 327
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginError;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->title:Ljava/lang/String;

    .line 328
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginError;->getNonce()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->nonce:Ljava/lang/String;

    .line 329
    iget-object v2, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginError;->getTwoFactorMethods()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginError;->getTwoFactorMethods()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginError;->getTwoFactorMethods()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;

    iget-object v1, v1, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->id:Ljava/lang/String;

    :goto_0
    iput-object v1, v2, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->methodId:Ljava/lang/String;

    .line 332
    return-object v0

    .line 331
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static makeLoginWithFbAuthResult()Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;-><init>()V

    return-object v0
.end method

.method private static makeLoginWithFbAuthResult(Lcom/oculus/authapi/AuthLoginWithFbAuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;
    .locals 4
    .param p0, "from"    # Lcom/oculus/authapi/AuthLoginWithFbAuthError;

    .prologue
    .line 355
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;-><init>()V

    .line 356
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;
    new-instance v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-direct {v1}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;-><init>()V

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    .line 357
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->getErrorCode()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->code:D

    .line 358
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->message:Ljava/lang/String;

    .line 359
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->title:Ljava/lang/String;

    .line 360
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->name:Ljava/lang/String;

    .line 361
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->getFbUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->fbUserId:Ljava/lang/String;

    .line 362
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->getFbAccessToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->fbAccessToken:Ljava/lang/String;

    .line 363
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->getEmail()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->email:Ljava/lang/String;

    .line 364
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->getProfilePicUri()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->profilePicUri:Ljava/lang/String;

    .line 365
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->getUsernameSuggestions()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->usernameSuggestions:Ljava/util/List;

    .line 366
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->getAllEmails()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->allEmails:Ljava/util/List;

    .line 367
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->getExistingEmailConflict()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;->existingEmailConflict:Ljava/lang/String;

    .line 368
    return-object v0
.end method

.method private static makeSendTwoFactorCodeResult()Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;
    .locals 1

    .prologue
    .line 418
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;-><init>()V

    return-object v0
.end method

.method private static makeSendTwoFactorCodeResult(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;
    .locals 4
    .param p0, "from"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 423
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;-><init>()V

    .line 424
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;
    new-instance v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-direct {v1}, Lcom/oculus/modules/codegen/AuthModule$AuthError;-><init>()V

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    .line 425
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getErrorCode()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->code:D

    .line 426
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->message:Ljava/lang/String;

    .line 427
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->title:Ljava/lang/String;

    .line 428
    return-object v0
.end method

.method private static makeVerifyLoginResult()Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;
    .locals 1

    .prologue
    .line 432
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;-><init>()V

    return-object v0
.end method

.method private static makeVerifyLoginResult(Lcom/oculus/authapi/AuthError;)Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;
    .locals 4
    .param p0, "from"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 437
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;-><init>()V

    .line 438
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;
    new-instance v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-direct {v1}, Lcom/oculus/modules/codegen/AuthModule$AuthError;-><init>()V

    iput-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    .line 439
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getErrorCode()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->code:D

    .line 440
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->message:Ljava/lang/String;

    .line 441
    iget-object v1, v0, Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/modules/codegen/AuthModule$AuthError;->title:Ljava/lang/String;

    .line 442
    return-object v0
.end method

.method private declared-synchronized ovrAuth()Lcom/oculus/authapi/OVRAuth;
    .locals 3

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/modules/AuthModuleImpl;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/oculus/authapi/OVRAuth;

    iget-object v1, p0, Lcom/oculus/modules/AuthModuleImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oculus/modules/AuthModuleImpl$11;

    invoke-direct {v2, p0}, Lcom/oculus/modules/AuthModuleImpl$11;-><init>(Lcom/oculus/modules/AuthModuleImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/oculus/authapi/OVRAuth;-><init>(Landroid/content/Context;Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;)V

    iput-object v0, p0, Lcom/oculus/modules/AuthModuleImpl;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/oculus/modules/AuthModuleImpl;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected checkFbMachineApprovalImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "fbUserId"    # Ljava/lang/String;
    .param p2, "machineId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;>;"
    sget-object v0, Lcom/oculus/modules/AuthModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "checkFbMachineApprovalImpl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/oculus/modules/AuthModuleImpl;->ovrAuth()Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/AuthModuleImpl$5;

    invoke-direct {v1, p0, p3}, Lcom/oculus/modules/AuthModuleImpl$5;-><init>(Lcom/oculus/modules/AuthModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/authapi/OVRAuth;->checkFbMachineApproval(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 135
    return-void
.end method

.method protected completeFbLoginAfterMachineApprovalImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "fbUserId"    # Ljava/lang/String;
    .param p2, "machineId"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p4, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;>;"
    sget-object v0, Lcom/oculus/modules/AuthModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "completeFbLoginAfterMachineApproval()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/oculus/modules/AuthModuleImpl;->ovrAuth()Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/AuthModuleImpl$8;

    invoke-direct {v1, p0, p4}, Lcom/oculus/modules/AuthModuleImpl$8;-><init>(Lcom/oculus/modules/AuthModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/oculus/authapi/OVRAuth;->completeFbLoginAfterMachineApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 206
    return-void
.end method

.method protected completeFbLoginWithTwoFactorCodeImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 7
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "fbUserId"    # Ljava/lang/String;
    .param p3, "machineId"    # Ljava/lang/String;
    .param p4, "firstFactor"    # Ljava/lang/String;
    .param p5, "twoFactorCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p6, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;>;"
    sget-object v0, Lcom/oculus/modules/AuthModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "completeFbLoginWithTwoFactorCodeImpl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/oculus/modules/AuthModuleImpl;->ovrAuth()Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    new-instance v6, Lcom/oculus/modules/AuthModuleImpl$9;

    invoke-direct {v6, p0, p6}, Lcom/oculus/modules/AuthModuleImpl$9;-><init>(Lcom/oculus/modules/AuthModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/authapi/OVRAuth;->completeFbLoginWithTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 233
    return-void
.end method

.method protected linkFbAccountImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "fbUserId"    # Ljava/lang/String;
    .param p2, "fbAccessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;>;"
    sget-object v0, Lcom/oculus/modules/AuthModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "linkFbAccountImpl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lcom/oculus/modules/AuthModuleImpl;->ovrAuth()Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/AuthModuleImpl$2;

    invoke-direct {v1, p0, p3}, Lcom/oculus/modules/AuthModuleImpl$2;-><init>(Lcom/oculus/modules/AuthModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/authapi/OVRAuth;->linkFbAccount(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 69
    return-void
.end method

.method protected loginToFbImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "emailOrPhone"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;>;"
    sget-object v0, Lcom/oculus/modules/AuthModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "loginToFbImpl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/oculus/modules/AuthModuleImpl;->ovrAuth()Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/AuthModuleImpl$4;

    invoke-direct {v1, p0, p3}, Lcom/oculus/modules/AuthModuleImpl$4;-><init>(Lcom/oculus/modules/AuthModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/authapi/OVRAuth;->loginToFb(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 113
    return-void
.end method

.method protected loginWithEmailAndPasswordImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;>;"
    sget-object v0, Lcom/oculus/modules/AuthModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "loginWithEmailAndPasswordImpl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-direct {p0}, Lcom/oculus/modules/AuthModuleImpl;->ovrAuth()Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/AuthModuleImpl$1;

    invoke-direct {v1, p0, p3}, Lcom/oculus/modules/AuthModuleImpl$1;-><init>(Lcom/oculus/modules/AuthModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/authapi/OVRAuth;->loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 47
    return-void
.end method

.method protected loginWithFbAuthImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "fbAccessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;>;"
    sget-object v0, Lcom/oculus/modules/AuthModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "loginWithFbAuthImpl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0}, Lcom/oculus/modules/AuthModuleImpl;->ovrAuth()Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/AuthModuleImpl$3;

    invoke-direct {v1, p0, p2}, Lcom/oculus/modules/AuthModuleImpl$3;-><init>(Lcom/oculus/modules/AuthModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, p1, v1}, Lcom/oculus/authapi/OVRAuth;->loginWithFbAuth(Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 90
    return-void
.end method

.method protected marshallJSConstantErrorCodeAnomalousLogin()D
    .locals 2

    .prologue
    .line 298
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    return-wide v0
.end method

.method protected marshallJSConstantErrorCodeDeviceAlreadyClaimed()D
    .locals 2

    .prologue
    .line 258
    const-wide/high16 v0, -0x3fd4000000000000L    # -14.0

    return-wide v0
.end method

.method protected marshallJSConstantErrorCodeHttpError()D
    .locals 2

    .prologue
    .line 278
    const-wide/high16 v0, -0x3fe8000000000000L    # -6.0

    return-wide v0
.end method

.method protected marshallJSConstantErrorCodeInvalidCreds()D
    .locals 2

    .prologue
    .line 263
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method protected marshallJSConstantErrorCodeLoginApprovalsInvalidCode()D
    .locals 2

    .prologue
    .line 268
    const-wide/high16 v0, -0x3fdc000000000000L    # -10.0

    return-wide v0
.end method

.method protected marshallJSConstantErrorCodeNetworkError()D
    .locals 2

    .prologue
    .line 273
    const-wide/high16 v0, -0x3ff0000000000000L    # -4.0

    return-wide v0
.end method

.method protected marshallJSConstantErrorCodeNoLinkedAccount()D
    .locals 2

    .prologue
    .line 283
    const-wide/high16 v0, -0x3fd6000000000000L    # -13.0

    return-wide v0
.end method

.method protected marshallJSConstantErrorCodeRateLimited()D
    .locals 2

    .prologue
    .line 288
    const-wide/high16 v0, -0x3fec000000000000L    # -5.0

    return-wide v0
.end method

.method protected marshallJSConstantErrorCodeTwoFactorLoginRequired()D
    .locals 2

    .prologue
    .line 293
    const-wide/high16 v0, -0x3fe0000000000000L    # -8.0

    return-wide v0
.end method

.method protected sendTwoFactorCodeImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "methodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p3, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;>;"
    sget-object v0, Lcom/oculus/modules/AuthModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "sendTwoFactorCodeImpl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/oculus/modules/AuthModuleImpl;->ovrAuth()Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/AuthModuleImpl$6;

    invoke-direct {v1, p0, p3}, Lcom/oculus/modules/AuthModuleImpl$6;-><init>(Lcom/oculus/modules/AuthModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/authapi/OVRAuth;->sendTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 157
    return-void
.end method

.method protected statusImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/AuthModule$AuthStatusResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthStatusResult;>;"
    sget-object v0, Lcom/oculus/modules/AuthModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "statusImpl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/oculus/modules/AuthModuleImpl;->ovrAuth()Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/AuthModuleImpl$10;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/oculus/modules/AuthModuleImpl$10;-><init>(Lcom/oculus/modules/AuthModuleImpl;Landroid/os/Handler;Lcom/oculus/modules/codegen/Resolver;)V

    invoke-virtual {v0, v1}, Lcom/oculus/authapi/OVRAuth;->status(Landroid/os/ResultReceiver;)V

    .line 254
    return-void
.end method

.method protected verifyLoginImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/modules/codegen/Resolver;)V
    .locals 7
    .param p1, "nonce"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "methodId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "fbAccessToken"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "isSecuredAction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p6, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;>;"
    sget-object v0, Lcom/oculus/modules/AuthModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "verifyLoginImpl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/oculus/modules/AuthModuleImpl;->ovrAuth()Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    const/4 v5, 0x0

    new-instance v6, Lcom/oculus/modules/AuthModuleImpl$7;

    invoke-direct {v6, p0, p6}, Lcom/oculus/modules/AuthModuleImpl$7;-><init>(Lcom/oculus/modules/AuthModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/authapi/OVRAuth;->verifyLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/authapi/AuthResultCallback;)V

    .line 182
    return-void
.end method
