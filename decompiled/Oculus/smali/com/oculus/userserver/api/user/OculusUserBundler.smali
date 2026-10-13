.class public final Lcom/oculus/userserver/api/user/OculusUserBundler;
.super Ljava/lang/Object;
.source "OculusUserBundler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bundleSparseUser(Lcom/oculus/userserver/api/user/SparseOculusUser;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "user_id"

    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "user_name"

    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_1
    return-object v0
.end method
