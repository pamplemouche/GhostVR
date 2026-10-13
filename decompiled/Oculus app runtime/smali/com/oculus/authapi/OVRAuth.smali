.class public Lcom/oculus/authapi/OVRAuth;
.super Ljava/lang/Object;
.source "OVRAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;,
        Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;
    }
.end annotation


# static fields
.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final RESULT_ERROR:I = 0x1

.field public static final RESULT_OK:I = -0x1


# instance fields
.field private final mCallerInfoProvider:Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/oculus/authapi/OVRAuth;->mCallerInfoProvider:Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/authapi/OVRAuth;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/oculus/authapi/OVRAuth;->insertFbAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private attachCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth;->mCallerInfoProvider:Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1}, Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;->attachCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    .line 36
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    sget-object p0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method private insertFbAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 64
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "userid"

    .line 65
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "accesstoken"

    .line 66
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/oculus/horizon/fbconnect/contract/FBConnectContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 448
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    sget-object p1, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->attachCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public callFBAuthMethod(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/ResultReceiver;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    .line 380
    invoke-direct {p0, p1}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.oculus.auth.ACTION_LINK_FB_ACCOUNT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "com.oculus.auth.ACTION_FB_MACHINE_APPROVAL_LOGIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "com.oculus.auth.ACTION_FB_VERIFY_LOGIN_APPROVALS_CODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "com.oculus.auth.ACTION_FB_RESEND_SMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "com.oculus.auth.ACTION_FB_LOGIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "com.oculus.auth.ACTION_FB_CHECK_MACHINE_APPROVAL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v1, "email"

    if-eqz p1, :cond_7

    const-string v7, "first_factor"

    const-string v8, "machine_id"

    const-string v9, "uid"

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eqz p3, :cond_1

    .line 419
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 p2, -0xc

    const-string v0, "error_code"

    .line 420
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    invoke-virtual {p3, v6, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    return-void

    .line 413
    :cond_2
    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "access_token"

    .line 415
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 414
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 408
    :cond_3
    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 409
    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 401
    :cond_4
    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "auth_token"

    .line 403
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 402
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 404
    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 396
    :cond_5
    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 397
    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 387
    :cond_6
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pin"

    .line 388
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 390
    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 392
    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 383
    :cond_7
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "password"

    .line 384
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    :goto_2
    new-instance p1, Lcom/oculus/authapi/OVRAuth$10;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/oculus/authapi/OVRAuth$10;-><init>(Lcom/oculus/authapi/OVRAuth;Landroid/os/Handler;Landroid/os/ResultReceiver;)V

    .line 428
    invoke-static {p1}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    const-string p2, "receiver"

    .line 426
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c202826 -> :sswitch_5
        -0x3fbf7bbf -> :sswitch_4
        0x1449293d -> :sswitch_3
        0x19e72510 -> :sswitch_2
        0x1ca31f6d -> :sswitch_1
        0x73951054 -> :sswitch_0
    .end sparse-switch
.end method

.method public fetchTwoFactorMethods(Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback<",
            "Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .line 365
    new-instance v0, Lcom/oculus/authapi/OVRAuth$9;

    invoke-direct {v0, p0, p2}, Lcom/oculus/authapi/OVRAuth$9;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    const-string p2, "com.oculus.auth.ACTION_FETCH_TWO_FACTOR_METHODS"

    .line 372
    invoke-direct {p0, p2}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "nonce"

    .line 373
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "receiver"

    .line 374
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, p2}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    return-void
.end method

.method public login(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/authapi/OVRAuth;->loginWithCredentials(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public loginWithCredentials(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2

    const-string v0, "com.oculus.auth.ACTION_LOGIN_API"

    .line 166
    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    .line 167
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "access_token"

    .line 168
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "receiver"

    .line 169
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    return-void
.end method

.method public loginWithCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthLoginError;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.oculus.auth.ACTION_LOGIN_API"

    .line 188
    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    .line 189
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "access_token"

    .line 190
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "fb_access_token"

    .line 191
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    new-instance p1, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;

    invoke-direct {p1, p0, p3, p4, p5}, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;-><init>(Lcom/oculus/authapi/OVRAuth;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 196
    new-instance p2, Lcom/oculus/authapi/OVRAuth$3;

    invoke-direct {p2, p0, p1}, Lcom/oculus/authapi/OVRAuth$3;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    const-string p1, "receiver"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    iget-object p1, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2

    const-string v0, "com.oculus.auth.ACTION_LOGIN_API"

    .line 72
    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email"

    .line 73
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "password"

    .line 74
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "receiver"

    .line 75
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    iget-object p1, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthLoginError;",
            ">;)V"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/oculus/authapi/OVRAuth$1;

    invoke-direct {v0, p0, p3}, Lcom/oculus/authapi/OVRAuth$1;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/authapi/OVRAuth;->loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthLoginError;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com.oculus.auth.ACTION_LOGIN_API"

    .line 122
    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "email"

    .line 123
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "password"

    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "fb_access_token"

    .line 126
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    new-instance p1, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;

    invoke-direct {p1, p0, p3, p4, p5}, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;-><init>(Lcom/oculus/authapi/OVRAuth;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 131
    new-instance p2, Lcom/oculus/authapi/OVRAuth$2;

    invoke-direct {p2, p0, p1}, Lcom/oculus/authapi/OVRAuth$2;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    const-string p1, "receiver"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    iget-object p1, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public logout(Landroid/os/ResultReceiver;)V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/oculus/authapi/OVRAuth;->logout(Landroid/os/ResultReceiver;Z)V

    return-void
.end method

.method public logout(Landroid/os/ResultReceiver;Z)V
    .locals 3

    const-string v0, "com.oculus.auth.ACTION_LOGOUT"

    .line 263
    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 264
    new-instance v1, Lcom/oculus/authapi/OVRAuth$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/oculus/authapi/OVRAuth$5;-><init>(Lcom/oculus/authapi/OVRAuth;Landroid/os/Handler;Landroid/os/ResultReceiver;)V

    .line 266
    invoke-static {v1}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    const-string v1, "receiver"

    .line 264
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "logout_no_server"

    .line 273
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    return-void
.end method

.method public resendLoginApprovalsCode(Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .line 294
    new-instance v0, Lcom/oculus/authapi/OVRAuth$6;

    invoke-direct {v0, p0, p2}, Lcom/oculus/authapi/OVRAuth$6;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    const-string p2, "com.oculus.auth.ACTION_RESEND_LOGIN_APPROVAL_CODE"

    .line 302
    invoke-direct {p0, p2}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "nonce"

    .line 303
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "receiver"

    .line 304
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, p2}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    return-void
.end method

.method sendTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "com.oculus.auth.ACTION_SEND_TWO_FACTOR_CODE"

    .line 279
    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nonce"

    .line 280
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "two_factor_method_id"

    .line 281
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "receiver"

    .line 282
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    return-void
.end method

.method public sendTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .line 317
    new-instance v0, Lcom/oculus/authapi/OVRAuth$7;

    invoke-direct {v0, p0, p3}, Lcom/oculus/authapi/OVRAuth$7;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 325
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/authapi/OVRAuth;->sendTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public startAuthService(Landroid/content/Intent;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public status(Landroid/os/ResultReceiver;)V
    .locals 3

    const-string v0, "com.oculus.auth.ACTION_STATUS"

    .line 228
    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/oculus/authapi/OVRAuth$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/oculus/authapi/OVRAuth$4;-><init>(Lcom/oculus/authapi/OVRAuth;Landroid/os/Handler;Landroid/os/ResultReceiver;)V

    .line 231
    invoke-static {v1}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    const-string v1, "receiver"

    .line 229
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    return-void
.end method

.method public verifyLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/authapi/AuthResultCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
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
            "Lcom/oculus/authapi/AuthResultCallback<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .line 339
    new-instance v0, Lcom/oculus/authapi/OVRAuth$8;

    invoke-direct {v0, p0, p6}, Lcom/oculus/authapi/OVRAuth$8;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    const-string p6, "com.oculus.auth.ACTION_VERIFY_LOGIN"

    .line 347
    invoke-direct {p0, p6}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p6

    const-string v1, "nonce"

    .line 348
    invoke-virtual {p6, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pin"

    .line 349
    invoke-virtual {p6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "two_factor_method_id"

    .line 350
    invoke-virtual {p6, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "fb_access_token"

    .line 351
    invoke-virtual {p6, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "secured_action"

    .line 352
    invoke-virtual {p6, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "receiver"

    .line 353
    invoke-virtual {p6, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, p6}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    return-void
.end method
