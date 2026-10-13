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


# static fields
.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final RESULT_ERROR:I = 0x1

.field public static final RESULT_OK:I = -0x1


# instance fields
.field private final mCallerInfoProvider:Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;

.field private final mContext:Landroid/content/Context;

.field private mIsUnderTest:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;

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
    .param p0, "x0"    # Lcom/oculus/authapi/OVRAuth;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/oculus/authapi/OVRAuth;->insertFbAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private attachCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth;->mCallerInfoProvider:Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth;->mCallerInfoProvider:Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;

    invoke-interface {v0, p1}, Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;->attachCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 103
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_0
    return-object p1
.end method

.method private completeFbLoginAfterMachineApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "machineId"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .param p4, "followUp"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 526
    const-string v1, "com.oculus.auth.ACTION_FB_MACHINE_APPROVAL_LOGIN"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 527
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const-string v1, "machine_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string v1, "auth_token"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v1, "follow_up"

    invoke-static {v0, v1, p4}, Lcom/oculus/authapi/OVRAuth;->putExtraIfNonnull(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v1, "receiver"

    invoke-direct {p0, p5}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 533
    return-void
.end method

.method private completeFbLoginWithTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "machineId"    # Ljava/lang/String;
    .param p4, "firstFactor"    # Ljava/lang/String;
    .param p5, "twoFactorCode"    # Ljava/lang/String;
    .param p6, "followUp"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 578
    const-string v1, "com.oculus.auth.ACTION_FB_VERIFY_LOGIN_APPROVALS_CODE"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 579
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v1, "machine_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v1, "first_factor"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string v1, "pin"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v1, "follow_up"

    invoke-static {v0, v1, p6}, Lcom/oculus/authapi/OVRAuth;->putExtraIfNonnull(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v1, "receiver"

    invoke-direct {p0, p7}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 587
    return-void
.end method

.method private getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 4
    .param p1, "actualReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v3, 0x0

    .line 36
    iget-boolean v2, p0, Lcom/oculus/authapi/OVRAuth;->mIsUnderTest:Z

    if-eqz v2, :cond_0

    .line 37
    new-instance v1, Lcom/oculus/authapi/OVRAuth$TestReceiverForSending;

    invoke-direct {v1, p1}, Lcom/oculus/authapi/OVRAuth$TestReceiverForSending;-><init>(Landroid/os/ResultReceiver;)V

    .line 44
    :goto_0
    return-object v1

    .line 39
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 40
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {p1, v0, v3}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 41
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 43
    .local v1, "receiverForSending":Landroid/os/ResultReceiver;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method private insertFbAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fbUserId"    # Ljava/lang/String;
    .param p2, "fbAccessToken"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "userid"

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

.method private loginToFb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "followUp"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 467
    const-string v1, "com.oculus.auth.ACTION_FB_LOGIN"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 468
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string v1, "follow_up"

    invoke-static {v0, v1, p3}, Lcom/oculus/authapi/OVRAuth;->putExtraIfNonnull(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v1, "receiver"

    invoke-direct {p0, p4}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 472
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 473
    return-void
.end method

.method private newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 619
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    invoke-direct {p0, v0}, Lcom/oculus/authapi/OVRAuth;->attachCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static putExtraIfNonnull(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 625
    if-eqz p2, :cond_0

    .line 626
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    :cond_0
    return-void
.end method


# virtual methods
.method public checkFbMachineApproval(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "machineId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p3, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Boolean;Lcom/oculus/authapi/AuthError;>;"
    new-instance v1, Lcom/oculus/authapi/OVRAuth$13;

    invoke-direct {v1, p0, p3}, Lcom/oculus/authapi/OVRAuth$13;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 485
    .local v1, "receiver":Lcom/oculus/authapi/AuthTaskReceiver;, "Lcom/oculus/authapi/AuthTaskReceiver<Ljava/lang/Boolean;Lcom/oculus/authapi/AuthError;>;"
    const-string v2, "com.oculus.auth.ACTION_FB_CHECK_MACHINE_APPROVAL"

    invoke-direct {p0, v2}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 486
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v2, "machine_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v2, "receiver"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 489
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 490
    return-void
.end method

.method public completeFbLoginAfterMachineApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "machineId"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Lcom/oculus/authapi/AuthFbLoginResult;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p4, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Lcom/oculus/authapi/AuthFbLoginResult;Lcom/oculus/authapi/AuthError;>;"
    new-instance v5, Lcom/oculus/authapi/AuthFbLoginReceiver;

    invoke-direct {v5, p4}, Lcom/oculus/authapi/AuthFbLoginReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    .line 502
    .local v5, "receiver":Lcom/oculus/authapi/AuthFbLoginReceiver;
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/authapi/OVRAuth;->completeFbLoginAfterMachineApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 503
    return-void
.end method

.method public completeFbLoginAfterMachineApprovalAndLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "machineId"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 515
    .local p4, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthError;>;"
    new-instance v5, Lcom/oculus/authapi/AuthVoidReceiver;

    invoke-direct {v5, p4}, Lcom/oculus/authapi/AuthVoidReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    .line 516
    .local v5, "receiver":Lcom/oculus/authapi/AuthVoidReceiver;
    const-string v4, "link"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/authapi/OVRAuth;->completeFbLoginAfterMachineApproval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 518
    return-void
.end method

.method public completeFbLoginWithTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 8
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
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
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Lcom/oculus/authapi/AuthFbLoginResult;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p6, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Lcom/oculus/authapi/AuthFbLoginResult;Lcom/oculus/authapi/AuthError;>;"
    new-instance v7, Lcom/oculus/authapi/AuthFbLoginReceiver;

    invoke-direct {v7, p6}, Lcom/oculus/authapi/AuthFbLoginReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    .line 544
    .local v7, "receiver":Lcom/oculus/authapi/AuthFbLoginReceiver;
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/oculus/authapi/OVRAuth;->completeFbLoginWithTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 546
    return-void
.end method

.method public completeFbLoginWithTwoFactorCodeAndLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 8
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
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
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    .local p6, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthError;>;"
    new-instance v7, Lcom/oculus/authapi/AuthVoidReceiver;

    invoke-direct {v7, p6}, Lcom/oculus/authapi/AuthVoidReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    .line 560
    .local v7, "receiver":Lcom/oculus/authapi/AuthVoidReceiver;
    const-string v6, "link"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/oculus/authapi/OVRAuth;->completeFbLoginWithTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 568
    return-void
.end method

.method public fetchTwoFactorMethods(Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 4
    .param p1, "nonce"    # Ljava/lang/String;
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
    .local p2, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;Lcom/oculus/authapi/AuthError;>;"
    new-instance v1, Lcom/oculus/authapi/OVRAuth$10;

    invoke-direct {v1, p0, p2}, Lcom/oculus/authapi/OVRAuth$10;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 415
    .local v1, "receiver":Lcom/oculus/authapi/AuthTaskReceiver;, "Lcom/oculus/authapi/AuthTaskReceiver<Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;Lcom/oculus/authapi/AuthError;>;"
    const-string v2, "com.oculus.auth.ACTION_FETCH_TWO_FACTOR_METHODS"

    invoke-direct {p0, v2}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "nonce"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v2, "receiver"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 419
    return-void
.end method

.method public linkFbAccount(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
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
    .line 603
    .local p3, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthError;>;"
    new-instance v1, Lcom/oculus/authapi/AuthVoidReceiver;

    invoke-direct {v1, p3}, Lcom/oculus/authapi/AuthVoidReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    .line 604
    .local v1, "receiver":Lcom/oculus/authapi/AuthVoidReceiver;
    const-string v2, "com.oculus.auth.ACTION_LINK_FB_ACCOUNT"

    invoke-direct {p0, v2}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 605
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string v2, "access_token"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    const-string v2, "receiver"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 608
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 609
    return-void
.end method

.method public login(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/os/ResultReceiver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/authapi/OVRAuth;->loginWithCredentials(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 175
    return-void
.end method

.method public loginToFb(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Lcom/oculus/authapi/AuthFbLoginResult;",
            "Lcom/oculus/authapi/AuthFbLoginError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p3, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Lcom/oculus/authapi/AuthFbLoginResult;Lcom/oculus/authapi/AuthFbLoginError;>;"
    new-instance v0, Lcom/oculus/authapi/OVRAuth$11;

    invoke-direct {v0, p0, p3}, Lcom/oculus/authapi/OVRAuth$11;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 443
    .local v0, "receiver":Lcom/oculus/authapi/AuthTaskReceiver;, "Lcom/oculus/authapi/AuthTaskReceiver<Lcom/oculus/authapi/AuthFbLoginResult;Lcom/oculus/authapi/AuthFbLoginError;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oculus/authapi/OVRAuth;->loginToFb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 444
    return-void
.end method

.method public loginToFbAndLink(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthFbLoginError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p3, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthFbLoginError;>;"
    new-instance v0, Lcom/oculus/authapi/OVRAuth$12;

    invoke-direct {v0, p0, p3}, Lcom/oculus/authapi/OVRAuth$12;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 462
    .local v0, "receiver":Lcom/oculus/authapi/AuthTaskReceiver;, "Lcom/oculus/authapi/AuthTaskReceiver<Ljava/lang/Void;Lcom/oculus/authapi/AuthFbLoginError;>;"
    const-string v1, "link"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oculus/authapi/OVRAuth;->loginToFb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 463
    return-void
.end method

.method public loginWithCredentials(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 187
    const-string v1, "com.oculus.auth.ACTION_LOGIN_API"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, "receiver"

    invoke-direct {p0, p3}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 192
    return-void
.end method

.method public loginWithCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "fbUserId"    # Ljava/lang/String;
    .param p4, "fbAccessToken"    # Ljava/lang/String;
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
    .local p5, "callback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthLoginError;>;"
    const-string v2, "com.oculus.auth.ACTION_LOGIN_API"

    invoke-direct {p0, v2}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "user_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v2, "access_token"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v2, "fb_access_token"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    new-instance v1, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;

    invoke-direct {v1, p0, p3, p4, p5}, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;-><init>(Lcom/oculus/authapi/OVRAuth;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 217
    .local v1, "proxyCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthLoginError;>;"
    const-string v2, "receiver"

    new-instance v3, Lcom/oculus/authapi/OVRAuth$3;

    invoke-direct {v3, p0, v1}, Lcom/oculus/authapi/OVRAuth$3;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 219
    invoke-direct {p0, v3}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v3

    .line 217
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    iget-object v2, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    return-void
.end method

.method loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 92
    const-string v1, "com.oculus.auth.ACTION_LOGIN_API"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "receiver"

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
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
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
    .local p3, "callback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthLoginError;>;"
    new-instance v0, Lcom/oculus/authapi/OVRAuth$1;

    invoke-direct {v0, p0, p3}, Lcom/oculus/authapi/OVRAuth$1;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/authapi/OVRAuth;->loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 123
    return-void
.end method

.method public loginWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "fbUserId"    # Ljava/lang/String;
    .param p4, "fbAccessToken"    # Ljava/lang/String;
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
    .local p5, "callback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthLoginError;>;"
    const-string v2, "com.oculus.auth.ACTION_LOGIN_API"

    invoke-direct {p0, v2}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "email"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v2, "password"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v2, "fb_access_token"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    new-instance v1, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;

    invoke-direct {v1, p0, p3, p4, p5}, Lcom/oculus/authapi/OVRAuth$ProxyAuthCallback;-><init>(Lcom/oculus/authapi/OVRAuth;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 151
    .local v1, "proxyCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthLoginError;>;"
    const-string v2, "receiver"

    new-instance v3, Lcom/oculus/authapi/OVRAuth$2;

    invoke-direct {v3, p0, v1}, Lcom/oculus/authapi/OVRAuth$2;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 153
    invoke-direct {p0, v3}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v3

    .line 151
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    iget-object v2, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 167
    return-void
.end method

.method public loginWithFbAuth(Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 4
    .param p1, "fbAccessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthLoginWithFbAuthError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthLoginWithFbAuthError;>;"
    new-instance v1, Lcom/oculus/authapi/OVRAuth$4;

    invoke-direct {v1, p0, p2}, Lcom/oculus/authapi/OVRAuth$4;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 250
    .local v1, "receiver":Lcom/oculus/authapi/AuthTaskReceiver;, "Lcom/oculus/authapi/AuthTaskReceiver<Ljava/lang/Void;Lcom/oculus/authapi/AuthLoginWithFbAuthError;>;"
    const-string v2, "com.oculus.auth.ACTION_LOGIN_WITH_FB_AUTH"

    invoke-direct {p0, v2}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "fb_access_token"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v2, "receiver"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method public logout(Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/authapi/OVRAuth;->logout(Landroid/os/ResultReceiver;Z)V

    .line 294
    return-void
.end method

.method public logout(Landroid/os/ResultReceiver;Z)V
    .locals 4
    .param p1, "receiver"    # Landroid/os/ResultReceiver;
    .param p2, "localLogout"    # Z

    .prologue
    .line 306
    const-string v1, "com.oculus.auth.ACTION_LOGOUT"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "receiver"

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

.method public resendFbSms(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "firstFactor"    # Ljava/lang/String;
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
    .line 592
    .local p3, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthError;>;"
    new-instance v1, Lcom/oculus/authapi/AuthVoidReceiver;

    invoke-direct {v1, p3}, Lcom/oculus/authapi/AuthVoidReceiver;-><init>(Lcom/oculus/authapi/AuthResultCallback;)V

    .line 593
    .local v1, "receiver":Lcom/oculus/authapi/AuthVoidReceiver;
    const-string v2, "com.oculus.auth.ACTION_FB_RESEND_SMS"

    invoke-direct {p0, v2}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 594
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v2, "first_factor"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string v2, "receiver"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 598
    return-void
.end method

.method public resendLoginApprovalsCode(Ljava/lang/String;Lcom/oculus/authapi/AuthResultCallback;)V
    .locals 4
    .param p1, "nonce"    # Ljava/lang/String;
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
    .local p2, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthError;>;"
    new-instance v1, Lcom/oculus/authapi/OVRAuth$7;

    invoke-direct {v1, p0, p2}, Lcom/oculus/authapi/OVRAuth$7;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 345
    .local v1, "receiver":Lcom/oculus/authapi/AuthTaskReceiver;, "Lcom/oculus/authapi/AuthTaskReceiver<Ljava/lang/Void;Lcom/oculus/authapi/AuthError;>;"
    const-string v2, "com.oculus.auth.ACTION_RESEND_LOGIN_APPROVAL_CODE"

    invoke-direct {p0, v2}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "nonce"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v2, "receiver"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 349
    return-void
.end method

.method sendTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "methodId"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 322
    const-string v1, "com.oculus.auth.ACTION_SEND_TWO_FACTOR_CODE"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 323
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "nonce"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v1, "two_factor_method_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v1, "receiver"

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
    .param p1, "nonce"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "methodId"    # Ljava/lang/String;
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
    .local p3, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthError;>;"
    new-instance v0, Lcom/oculus/authapi/OVRAuth$8;

    invoke-direct {v0, p0, p3}, Lcom/oculus/authapi/OVRAuth$8;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 368
    .local v0, "receiver":Lcom/oculus/authapi/AuthTaskReceiver;, "Lcom/oculus/authapi/AuthTaskReceiver<Ljava/lang/Void;Lcom/oculus/authapi/AuthError;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/authapi/OVRAuth;->sendTwoFactorCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 369
    return-void
.end method

.method setIsUnderTest(Z)V
    .locals 0
    .param p1, "isUnderTest"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 658
    iput-boolean p1, p0, Lcom/oculus/authapi/OVRAuth;->mIsUnderTest:Z

    .line 659
    return-void
.end method

.method public startAuthService(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/oculus/authapi/OVRAuth;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 616
    return-void
.end method

.method public status(Landroid/os/ResultReceiver;)V
    .locals 4
    .param p1, "receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 271
    const-string v1, "com.oculus.auth.ACTION_STATUS"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "receiver"

    new-instance v2, Lcom/oculus/authapi/OVRAuth$5;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/oculus/authapi/OVRAuth$5;-><init>(Lcom/oculus/authapi/OVRAuth;Landroid/os/Handler;Landroid/os/ResultReceiver;)V

    .line 274
    invoke-direct {p0, v2}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method public verifyLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oculus/authapi/AuthResultCallback;)V
    .locals 4
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
            "Lcom/oculus/authapi/AuthResultCallback",
            "<",
            "Ljava/lang/Void;",
            "Lcom/oculus/authapi/AuthError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p6, "resultCallback":Lcom/oculus/authapi/AuthResultCallback;, "Lcom/oculus/authapi/AuthResultCallback<Ljava/lang/Void;Lcom/oculus/authapi/AuthError;>;"
    new-instance v1, Lcom/oculus/authapi/OVRAuth$9;

    invoke-direct {v1, p0, p6}, Lcom/oculus/authapi/OVRAuth$9;-><init>(Lcom/oculus/authapi/OVRAuth;Lcom/oculus/authapi/AuthResultCallback;)V

    .line 390
    .local v1, "receiver":Lcom/oculus/authapi/AuthTaskReceiver;, "Lcom/oculus/authapi/AuthTaskReceiver<Ljava/lang/Void;Lcom/oculus/authapi/AuthError;>;"
    const-string v2, "com.oculus.auth.ACTION_VERIFY_LOGIN"

    invoke-direct {p0, v2}, Lcom/oculus/authapi/OVRAuth;->newHorizonIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 391
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "nonce"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v2, "pin"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v2, "two_factor_method_id"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v2, "fb_access_token"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v2, "secured_action"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    const-string v2, "receiver"

    invoke-direct {p0, v1}, Lcom/oculus/authapi/OVRAuth;->getReceiverForSending(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, v0}, Lcom/oculus/authapi/OVRAuth;->startAuthService(Landroid/content/Intent;)V

    .line 398
    return-void
.end method
