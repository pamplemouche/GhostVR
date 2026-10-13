.class public Lcom/oculus/vrshell/home/module/AccountLinkingModule;
.super Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;
.source "AccountLinkingModule.java"


# static fields
.field private static final ACTION_COMPLETE_ACCOUNT_LINKING:Ljava/lang/String; = "com.oculus.vrshell.home.COMPLETE_ACCOUNT_LINKING"

.field public static final ERROR_CODE_INVALID_CREDS:I = -0x1

.field public static final ERROR_CODE_LOGIN_APPROVALS_INVALID_CODE:I = -0xa

.field public static final ERROR_CODE_RATE_LIMITED:I = -0x5

.field public static final ERROR_CODE_TWO_FACTOR_LOGIN_REQUIRED:I = -0x8

.field private static final KEY_SERVICE_PROVIDER:Ljava/lang/String; = "service_provider"

.field private static final LINKED_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

.field private static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private mContext:Landroid/content/Context;

.field private mOVRAuth:Lcom/oculus/authapi/OVRAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->MODULE_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "content://com.oculus.horizon.linkedaccounts/accounts"

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->LINKED_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->mContext:Landroid/content/Context;

    .line 65
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->LINKED_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/vrshell/home/module/AccountLinkingModule;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/AccountLinkingModule;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/authapi/AuthFbLoginError;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/authapi/AuthFbLoginError;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->fbLoginErrorToJson(Lcom/oculus/authapi/AuthFbLoginError;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/vrshell/home/module/AccountLinkingModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/AccountLinkingModule;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->facebookLinkMachineApprovalLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/authapi/AuthError;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->errorToJson(Lcom/oculus/authapi/AuthError;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static describe()Ljava/util/List;
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
    .line 74
    invoke-static {}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->describe()Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_CODE_INVALID_CREDS"

    const-string v3, "~i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_CODE_RATE_LIMITED"

    const-string v3, "~i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_CODE_TWO_FACTOR_LOGIN_REQUIRED"

    const-string v3, "~i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_CODE_LOGIN_APPROVALS_INVALID_CODE"

    const-string v3, "~i"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Landroid/util/Pair;

    const-string v2, "unlink"

    const-string v3, "si"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Landroid/util/Pair;

    const-string v2, "facebookLinkWithCredentials"

    const-string v3, "ssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Landroid/util/Pair;

    const-string v2, "facebookLinkCheckMachineApproval"

    const-string v3, "sssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Landroid/util/Pair;

    const-string v2, "facebookLinkWithTwoFacCode"

    const-string v3, "sssssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-object v0
.end method

.method private ensureOVRAuth()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    if-eqz v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v0, Lcom/oculus/authapi/OVRAuth;

    iget-object v1, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oculus/vrshell/home/module/AccountLinkingModule$7;

    invoke-direct {v2, p0}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$7;-><init>(Lcom/oculus/vrshell/home/module/AccountLinkingModule;)V

    invoke-direct {v0, v1, v2}, Lcom/oculus/authapi/OVRAuth;-><init>(Landroid/content/Context;Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;)V

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    goto :goto_0
.end method

.method private static errorToJson(Lcom/oculus/authapi/AuthError;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "error"    # Lcom/oculus/authapi/AuthError;

    .prologue
    .line 256
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 257
    .local v1, "resultJson":Lorg/json/JSONObject;
    const-string v2, "error_title"

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getErrorTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v2, "error_message"

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v2, "error_code"

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthError;->getErrorCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v1    # "resultJson":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "JSON Error"

    invoke-static {v2, v3, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method private facebookLinkMachineApprovalLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "machineID"    # Ljava/lang/String;
    .param p4, "successCallbackID"    # I
    .param p5, "failureCallbackID"    # I

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->ensureOVRAuth()V

    .line 198
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    new-instance v1, Lcom/oculus/vrshell/home/module/AccountLinkingModule$5;

    invoke-direct {v1, p0, p4, p5}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$5;-><init>(Lcom/oculus/vrshell/home/module/AccountLinkingModule;II)V

    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/oculus/authapi/OVRAuth;->completeFbLoginAfterMachineApprovalAndLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 210
    return-void
.end method

.method private static fbLoginErrorToJson(Lcom/oculus/authapi/AuthFbLoginError;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "error"    # Lcom/oculus/authapi/AuthFbLoginError;

    .prologue
    .line 269
    :try_start_0
    invoke-static {p0}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->errorToJson(Lcom/oculus/authapi/AuthError;)Lorg/json/JSONObject;

    move-result-object v1

    .line 270
    .local v1, "resultJson":Lorg/json/JSONObject;
    const-string v2, "uid"

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginError;->getUid()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->nonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v2, "machine_id"

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginError;->getMachineId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->nonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v2, "auth_token"

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginError;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->nonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v2, "login_first_factor"

    invoke-virtual {p0}, Lcom/oculus/authapi/AuthFbLoginError;->getLoginFirstFactor()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->nonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v1    # "resultJson":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->MODULE_NAME:Ljava/lang/String;

    const-string v3, "JSON Error"

    invoke-static {v2, v3, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method

.method private static nonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "value":Ljava/lang/Object;, "TT;"
    .local p1, "elseValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .end local p0    # "value":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p0

    .restart local p0    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method


# virtual methods
.method public facebookLinkCheckMachineApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "machineID"    # Ljava/lang/String;
    .param p4, "successCallbackID"    # I
    .param p5, "failureCallbackID"    # I

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->ensureOVRAuth()V

    .line 172
    iget-object v7, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    new-instance v0, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$4;-><init>(Lcom/oculus/vrshell/home/module/AccountLinkingModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v7, p1, p3, v0}, Lcom/oculus/authapi/OVRAuth;->checkFbMachineApproval(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 188
    return-void
.end method

.method public facebookLinkWithCredentials(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "emailOrPhone"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "successCallbackID"    # I
    .param p4, "failureCallbackID"    # I

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->ensureOVRAuth()V

    .line 147
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    new-instance v1, Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;

    invoke-direct {v1, p0, p3, p4}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$3;-><init>(Lcom/oculus/vrshell/home/module/AccountLinkingModule;II)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oculus/authapi/OVRAuth;->loginToFbAndLink(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 162
    return-void
.end method

.method public facebookLinkWithTwoFacCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "twoFacCode"    # Ljava/lang/String;
    .param p2, "emailOrPhone"    # Ljava/lang/String;
    .param p3, "firstFactor"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "machineID"    # Ljava/lang/String;
    .param p6, "successCallbackID"    # I
    .param p7, "failureCallbackID"    # I

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->ensureOVRAuth()V

    .line 222
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    new-instance v6, Lcom/oculus/vrshell/home/module/AccountLinkingModule$6;

    invoke-direct {v6, p0, p6, p7}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$6;-><init>(Lcom/oculus/vrshell/home/module/AccountLinkingModule;II)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/authapi/OVRAuth;->completeFbLoginWithTwoFactorCodeAndLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 235
    return-void
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oculus.vrshell.home.COMPLETE_ACCOUNT_LINKING"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public invokeCallback(ILjava/lang/String;)V
    .locals 4
    .param p1, "callbackID"    # I
    .param p2, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->RVRCtxTag:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->nativeInvokeCallback(JILjava/lang/String;)V

    .line 61
    return-void
.end method

.method public processIntent(Landroid/content/Intent;Z)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "forceNativeUpdate"    # Z

    .prologue
    .line 96
    sget-object v3, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "processIntent()"

    invoke-static {v3, v4}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v3, "service_provider"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "serviceProvider":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v1, "response":Lorg/json/JSONObject;
    const-string v3, "serviceProvider"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    iget-wide v4, p0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->RVRCtxTag:J

    const-string v3, "onAccountLinkingCompleteListener"

    .line 104
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-static {v4, v5, v3, v6}, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "response":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "JSON Error"

    invoke-static {v3, v4, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unlink(Ljava/lang/String;I)V
    .locals 3
    .param p1, "serviceProvider"    # Ljava/lang/String;
    .param p2, "callbackID"    # I

    .prologue
    .line 111
    sget-object v0, Lcom/oculus/vrshell/home/module/AccountLinkingModule;->MODULE_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlink "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/oculus/panellib/ThreadExecutor;->getInstance()Lcom/oculus/panellib/ThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/vrshell/home/module/AccountLinkingModule$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$1;-><init>(Lcom/oculus/vrshell/home/module/AccountLinkingModule;Ljava/lang/String;)V

    new-instance v2, Lcom/oculus/vrshell/home/module/AccountLinkingModule$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/oculus/vrshell/home/module/AccountLinkingModule$2;-><init>(Lcom/oculus/vrshell/home/module/AccountLinkingModule;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panellib/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 141
    return-void
.end method
