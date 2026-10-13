.class public abstract Lcom/oculus/modules/codegen/AuthModule;
.super Ljava/lang/Object;
.source "AuthModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;,
        Lcom/oculus/modules/codegen/AuthModule$AuthStatusResult;,
        Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;,
        Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthError;,
        Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;,
        Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;,
        Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;,
        Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;,
        Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;,
        Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;,
        Lcom/oculus/modules/codegen/AuthModule$AuthError;,
        Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;
    }
.end annotation


# static fields
.field protected static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/modules/codegen/AuthModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/AuthModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/AuthModule;->nativeInvokeCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected static final describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "checkFbMachineApproval"

    const-string v3, "+ssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "completeFbLoginAfterMachineApproval"

    const-string v3, "+sssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "completeFbLoginWithTwoFactorCode"

    const-string v3, "+sssssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Landroid/util/Pair;

    const-string v2, "linkFbAccount"

    const-string v3, "+ssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Landroid/util/Pair;

    const-string v2, "loginToFb"

    const-string v3, "+ssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Landroid/util/Pair;

    const-string v2, "loginWithEmailAndPassword"

    const-string v3, "+ssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Landroid/util/Pair;

    const-string v2, "loginWithFbAuth"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Landroid/util/Pair;

    const-string v2, "sendTwoFactorCode"

    const-string v3, "+ssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Landroid/util/Pair;

    const-string v2, "status"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Landroid/util/Pair;

    const-string v2, "verifyLogin"

    const-string v3, "+ssssbii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final checkFbMachineApproval(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "fbUserId"    # Ljava/lang/String;
    .param p2, "machineId"    # Ljava/lang/String;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 77
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/AuthModule$1;-><init>(Lcom/oculus/modules/codegen/AuthModule;II)V

    .line 93
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/AuthModule;->checkFbMachineApprovalImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 94
    return-void
.end method

.method protected abstract checkFbMachineApprovalImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method protected final completeFbLoginAfterMachineApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "fbUserId"    # Ljava/lang/String;
    .param p2, "machineId"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 96
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$2;

    invoke-direct {v0, p0, p4, p5}, Lcom/oculus/modules/codegen/AuthModule$2;-><init>(Lcom/oculus/modules/codegen/AuthModule;II)V

    .line 112
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;>;"
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oculus/modules/codegen/AuthModule;->completeFbLoginAfterMachineApprovalImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 113
    return-void
.end method

.method protected abstract completeFbLoginAfterMachineApprovalImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method protected final completeFbLoginWithTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "fbUserId"    # Ljava/lang/String;
    .param p3, "machineId"    # Ljava/lang/String;
    .param p4, "firstFactor"    # Ljava/lang/String;
    .param p5, "twoFactorCode"    # Ljava/lang/String;
    .param p6, "resolveID"    # I
    .param p7, "rejectID"    # I

    .prologue
    .line 115
    new-instance v6, Lcom/oculus/modules/codegen/AuthModule$3;

    invoke-direct {v6, p0, p6, p7}, Lcom/oculus/modules/codegen/AuthModule$3;-><init>(Lcom/oculus/modules/codegen/AuthModule;II)V

    .local v6, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 131
    invoke-virtual/range {v0 .. v6}, Lcom/oculus/modules/codegen/AuthModule;->completeFbLoginWithTwoFactorCodeImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 132
    return-void
.end method

.method protected abstract completeFbLoginWithTwoFactorCodeImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/modules/codegen/AuthModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final linkFbAccount(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "fbUserId"    # Ljava/lang/String;
    .param p2, "fbAccessToken"    # Ljava/lang/String;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 134
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$4;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/AuthModule$4;-><init>(Lcom/oculus/modules/codegen/AuthModule;II)V

    .line 150
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthFbLinkResult;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/AuthModule;->linkFbAccountImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 151
    return-void
.end method

.method protected abstract linkFbAccountImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method protected final loginToFb(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "emailOrPhone"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 153
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$5;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/AuthModule$5;-><init>(Lcom/oculus/modules/codegen/AuthModule;II)V

    .line 169
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/AuthModule;->loginToFbImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 170
    return-void
.end method

.method protected abstract loginToFbImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method protected final loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 172
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$6;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/AuthModule$6;-><init>(Lcom/oculus/modules/codegen/AuthModule;II)V

    .line 188
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/AuthModule;->loginWithEmailAndPasswordImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 189
    return-void
.end method

.method protected abstract loginWithEmailAndPasswordImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method protected final loginWithFbAuth(Ljava/lang/String;II)V
    .locals 1
    .param p1, "fbAccessToken"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 191
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$7;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/AuthModule$7;-><init>(Lcom/oculus/modules/codegen/AuthModule;II)V

    .line 207
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthLoginWithFbAuthResult;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/AuthModule;->loginWithFbAuthImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 208
    return-void
.end method

.method protected abstract loginWithFbAuthImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method protected abstract marshallJSConstantErrorCodeAnomalousLogin()D
.end method

.method protected abstract marshallJSConstantErrorCodeDeviceAlreadyClaimed()D
.end method

.method protected abstract marshallJSConstantErrorCodeHttpError()D
.end method

.method protected abstract marshallJSConstantErrorCodeInvalidCreds()D
.end method

.method protected abstract marshallJSConstantErrorCodeLoginApprovalsInvalidCode()D
.end method

.method protected abstract marshallJSConstantErrorCodeNetworkError()D
.end method

.method protected abstract marshallJSConstantErrorCodeNoLinkedAccount()D
.end method

.method protected abstract marshallJSConstantErrorCodeRateLimited()D
.end method

.method protected abstract marshallJSConstantErrorCodeTwoFactorLoginRequired()D
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v0, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "ERROR_CODE_ANOMALOUS_LOGIN"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AuthModule;->marshallJSConstantErrorCodeAnomalousLogin()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 55
    const-string v1, "ERROR_CODE_DEVICE_ALREADY_CLAIMED"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AuthModule;->marshallJSConstantErrorCodeDeviceAlreadyClaimed()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 56
    const-string v1, "ERROR_CODE_HTTP_ERROR"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AuthModule;->marshallJSConstantErrorCodeHttpError()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 57
    const-string v1, "ERROR_CODE_INVALID_CREDS"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AuthModule;->marshallJSConstantErrorCodeInvalidCreds()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 58
    const-string v1, "ERROR_CODE_LOGIN_APPROVALS_INVALID_CODE"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AuthModule;->marshallJSConstantErrorCodeLoginApprovalsInvalidCode()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 59
    const-string v1, "ERROR_CODE_NETWORK_ERROR"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AuthModule;->marshallJSConstantErrorCodeNetworkError()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 60
    const-string v1, "ERROR_CODE_NO_LINKED_ACCOUNT"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AuthModule;->marshallJSConstantErrorCodeNoLinkedAccount()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 61
    const-string v1, "ERROR_CODE_RATE_LIMITED"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AuthModule;->marshallJSConstantErrorCodeRateLimited()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 62
    const-string v1, "ERROR_CODE_TWO_FACTOR_LOGIN_REQUIRED"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/AuthModule;->marshallJSConstantErrorCodeTwoFactorLoginRequired()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final sendTwoFactorCode(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "methodId"    # Ljava/lang/String;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 210
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$8;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/AuthModule$8;-><init>(Lcom/oculus/modules/codegen/AuthModule;II)V

    .line 226
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthSendTwoFactorCodeResult;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/AuthModule;->sendTwoFactorCodeImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 227
    return-void
.end method

.method protected abstract sendTwoFactorCodeImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
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
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method protected final status(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 229
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/AuthModule$9;-><init>(Lcom/oculus/modules/codegen/AuthModule;II)V

    .line 245
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthStatusResult;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/AuthModule;->statusImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 246
    return-void
.end method

.method protected abstract statusImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/AuthModule$AuthStatusResult;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final verifyLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 7
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "methodId"    # Ljava/lang/String;
    .param p4, "fbAccessToken"    # Ljava/lang/String;
    .param p5, "isSecuredAction"    # Z
    .param p6, "resolveID"    # I
    .param p7, "rejectID"    # I

    .prologue
    .line 248
    new-instance v6, Lcom/oculus/modules/codegen/AuthModule$10;

    invoke-direct {v6, p0, p6, p7}, Lcom/oculus/modules/codegen/AuthModule$10;-><init>(Lcom/oculus/modules/codegen/AuthModule;II)V

    .local v6, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/AuthModule$AuthVerifyLoginResult;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 264
    invoke-virtual/range {v0 .. v6}, Lcom/oculus/modules/codegen/AuthModule;->verifyLoginImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/modules/codegen/Resolver;)V

    .line 265
    return-void
.end method

.method protected abstract verifyLoginImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/modules/codegen/Resolver;)V
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
.end method
