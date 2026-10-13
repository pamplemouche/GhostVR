.class public Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;
.super Ljava/lang/Object;
.source "SignatureAuthSecureIntent.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;Lcom/facebook/common/errorreporting/FbErrorReporter;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/common/errorreporting/FbErrorReporter;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->build(Lcom/facebook/common/errorreporting/FbErrorReporter;)Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 48
    return-void
.end method


# virtual methods
.method public appendAuthBundleToIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 217
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 222
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 223
    const-string v2, "auth_pending_intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 224
    const-string v0, "auth_bundle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 225
    return-object p1
.end method

.method public checkPackageInfo(Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;
    .locals 3

    .prologue
    .line 171
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_INVALID:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 202
    :goto_0
    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-static {p1}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->isCompatibleAppOrService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_INCOMPATIBLE:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mContext:Landroid/content/Context;

    const/16 v1, 0x40

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 180
    invoke-static {v0, p1, v1, v2}, Lcom/facebook/rti/common/util/PackageInfoUtil;->getFbnsPackageInfo(Landroid/content/Context;Ljava/lang/String;ILcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)Lcom/facebook/rti/common/util/FbnsPackageInfo;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent$1;->$SwitchMap$com$facebook$rti$common$util$FbnsPackageInfo$PackageStatus:[I

    iget-object v0, v0, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    invoke-virtual {v0}, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 198
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0

    .line 184
    :pswitch_0
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0

    .line 186
    :pswitch_1
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_NOT_INSTALLED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0

    .line 188
    :pswitch_2
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_DISABLED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0

    .line 190
    :pswitch_3
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_UNSUPPORTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0

    .line 192
    :pswitch_4
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0

    .line 194
    :pswitch_5
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_NOT_TRUSTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0

    .line 196
    :pswitch_6
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_TRUSTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0

    .line 202
    :cond_2
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->PACKAGE_TRUSTED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getSender(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    const-string v0, "auth_bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    const-string v0, "SignatureAuthSecureIntent"

    const-string v2, "Invalid auth bundle"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 75
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const-string v2, "auth_pending_intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 64
    if-nez v0, :cond_1

    .line 65
    const-string v0, "SignatureAuthSecureIntent"

    const-string v2, "Invalid auth intent"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 66
    goto :goto_0

    .line 70
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 71
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isTrustedApp(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    invoke-static {v0, p1, v1}, Lcom/facebook/rti/common/util/PackageInfoUtil;->isTrustedApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)Z

    move-result v0

    return v0
.end method

.method public sendExplicitSecureBroadcast(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p2}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->isTrustedApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 156
    :goto_0
    return v0

    .line 155
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->sendExplicitSecureBroadcastToTrustedWithResult(Landroid/content/Intent;Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->isSucceeded()Z

    move-result v0

    goto :goto_0
.end method

.method public sendExplicitSecureBroadcastToTrustedWithResult(Landroid/content/Intent;Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->appendAuthBundleToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->BROADCAST_SENT:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    .line 166
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;->BROADCAST_FAILED:Lcom/facebook/rti/mqtt/common/util/CrossPackageOperationResult;

    goto :goto_0
.end method

.method public startExplicitSecureService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->isTrustedApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    .line 211
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->appendAuthBundleToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public verifySender(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->getSender(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->isTrustedApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
