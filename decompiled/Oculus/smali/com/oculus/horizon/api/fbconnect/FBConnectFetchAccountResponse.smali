.class public Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;
.super Ljava/lang/Object;
.source "FBConnectFetchAccountResponse.java"


# annotations
.annotation runtime Lcom/oculus/http/core/annotations/SingleEntryMapResponse;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse$LinkedAccounts;
    }
.end annotation


# instance fields
.field public linked_accounts_info:Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse$LinkedAccounts;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasFBConnectAccount()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;->linked_accounts_info:Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse$LinkedAccounts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;->linked_accounts_info:Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse$LinkedAccounts;

    iget-object v0, v0, Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse$LinkedAccounts;->facebook_account:Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFriendPolicy()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;->hasFBConnectAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse;->linked_accounts_info:Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse$LinkedAccounts;

    iget-object v0, v0, Lcom/oculus/horizon/api/fbconnect/FBConnectFetchAccountResponse$LinkedAccounts;->facebook_account:Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;

    iget-object v0, v0, Lcom/oculus/horizon/api/fbconnect/FBConnectAccount;->friend_policy:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
