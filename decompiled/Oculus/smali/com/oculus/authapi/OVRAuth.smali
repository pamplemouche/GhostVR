.class public Lcom/oculus/authapi/OVRAuth;
.super Ljava/lang/Object;
.source "OVRAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;,
        Lcom/oculus/authapi/OVRAuth$TestReceiverForSending;,
        Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;
    }
.end annotation


# instance fields
.field private final mCallerInfoProvider:Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;

.field private final mContext:Landroid/content/Context;

.field private mIsUnderTest:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/oculus/authapi/OVRAuth;->mCallerInfoProvider:Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/authapi/OVRAuth;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/oculus/authapi/OVRAuth;->insertFbAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private attachCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth;->mCallerInfoProvider:Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth;->mCallerInfoProvider:Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;

    invoke-interface {v0, p1}, Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;->attachCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 103
    :cond_0
    return-object p1
.end method

.method private getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-boolean v0, p0, Lcom/oculus/authapi/OVRAuth;->mIsUnderTest:Z

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/oculus/authapi/OVRAuth$TestReceiverForSending;

    invoke-direct {v0, p1}, Lcom/oculus/authapi/OVRAuth$TestReceiverForSending;-><init>(Landroid/os/ResultReceiver;)V

    .line 44
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 40
    invoke-virtual {p1, v1, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 41
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method private insertFbAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "accesstoken"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/fbconnect/contract/FBConnectContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 88
    return-void
.end method

.method private newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 619
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    sget-object v1, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->attachCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fetchTwoFactorMethods(Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Lcom/oculus/authapi/OVRAuth$10;

    invoke-direct {v0, p0, p2}, Lcom/oculus/authapi/OVRAuth$10;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 415
    const-string v1, "com.oculus.auth.ACTION_FETCH_TWO_FACTOR_METHODS"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 416
    const-string v2, "nonce"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string/jumbo v2, "receiver"

    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v1}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 419
    return-void
.end method

.method public loginWithCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthLoginError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    const-string v0, "com.oculus.auth.ACTION_LOGIN_API"

    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 210
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "fb_access_token"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    new-instance v1, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;

    invoke-direct {v1, p0, p3, p4, p5}, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;-><init>(Lcom/oculus/authapi/OVRAuth;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 217
    const-string/jumbo v2, "receiver"

    new-instance v3, Lcom/oculus/authapi/OVRAuth$3;

    invoke-direct {v3, p0, v1}, Lcom/oculus/authapi/OVRAuth$3;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 219
    invoke-direct {p0, v3}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    return-void
.end method

.method loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3

    .prologue
    .line 92
    const-string v0, "com.oculus.auth.ACTION_LOGIN_API"

    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string/jumbo v1, "receiver"

    invoke-direct {p0, p3}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    return-void
.end method

.method public loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthLoginError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/oculus/authapi/OVRAuth$1;

    invoke-direct {v0, p0, p3}, Lcom/oculus/authapi/OVRAuth$1;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/authapi/OVRAuth;->loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 123
    return-void
.end method

.method public loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthLoginError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    const-string v0, "com.oculus.auth.ACTION_LOGIN_API"

    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 143
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "fb_access_token"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    new-instance v1, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;

    invoke-direct {v1, p0, p3, p4, p5}, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;-><init>(Lcom/oculus/authapi/OVRAuth;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 151
    const-string/jumbo v2, "receiver"

    new-instance v3, Lcom/oculus/authapi/OVRAuth$2;

    invoke-direct {v3, p0, v1}, Lcom/oculus/authapi/OVRAuth$2;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 153
    invoke-direct {p0, v3}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 167
    return-void
.end method

.method public logout(Landroid/os/ResultReceiver;)V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/authapi/OVRAuth;->logout(Landroid/os/ResultReceiver;Z)V

    .line 294
    return-void
.end method

.method public logout(Landroid/os/ResultReceiver;Z)V
    .locals 4

    .prologue
    .line 306
    const-string v0, "com.oculus.auth.ACTION_LOGOUT"

    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 307
    const-string/jumbo v1, "receiver"

    new-instance v2, Lcom/oculus/authapi/OVRAuth$6;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/oculus/authapi/OVRAuth$6;-><init>(Lcom/oculus/authapi/OVRAuth;Landroid/os/Handler;Landroid/os/ResultReceiver;)V

    .line 309
    invoke-direct {p0, v2}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 307
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 316
    const-string v1, "logout_no_server"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 318
    return-void
.end method

.method public resendLoginApprovalsCode(Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Lcom/oculus/authapi/OVRAuth$7;

    invoke-direct {v0, p0, p2}, Lcom/oculus/authapi/OVRAuth$7;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 345
    const-string v1, "com.oculus.auth.ACTION_RESEND_LOGIN_APPROVAL_CODE"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 346
    const-string v2, "nonce"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string/jumbo v2, "receiver"

    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v1}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 349
    return-void
.end method

.method sendTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 322
    const-string v0, "com.oculus.auth.ACTION_SEND_TWO_FACTOR_CODE"

    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 323
    const-string v1, "nonce"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string/jumbo v1, "two_factor_method_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string/jumbo v1, "receiver"

    invoke-direct {p0, p3}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.method public sendTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Lcom/oculus/authapi/OVRAuth$8;

    invoke-direct {v0, p0, p3}, Lcom/oculus/authapi/OVRAuth$8;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 368
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/authapi/OVRAuth;->sendTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 369
    return-void
.end method

.method public startAuthService(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 616
    return-void
.end method

.method public verifyLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/authapi/AuthResultCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Lcom/oculus/authapi/OVRAuth$9;

    invoke-direct {v0, p0, p6}, Lcom/oculus/authapi/OVRAuth$9;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 390
    const-string v1, "com.oculus.auth.ACTION_VERIFY_LOGIN"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 391
    const-string v2, "nonce"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v2, "pin"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string/jumbo v2, "two_factor_method_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v2, "fb_access_token"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string/jumbo v2, "secured_action"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    const-string/jumbo v2, "receiver"

    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v1}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 398
    return-void
.end method
