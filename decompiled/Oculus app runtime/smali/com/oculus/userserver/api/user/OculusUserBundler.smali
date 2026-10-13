.class public final Lcom/oculus/userserver/api/user/OculusUserBundler;
.super Ljava/lang/Object;
.source "OculusUserBundler.java"


# static fields
.field private static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field private static final KEY_USER_NAME:Ljava/lang/String; = "user_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bundleSparseUser(Lcom/oculus/userserver/api/user/SparseOculusUser;)Landroid/os/Bundle;
    .locals 3

    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "user_name"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static bundleUser(Lcom/oculus/userserver/api/user/OculusUser;)Landroid/os/Bundle;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/OculusUser;->toSparseUser()Lcom/oculus/userserver/api/user/SparseOculusUser;

    move-result-object p0

    invoke-static {p0}, Lcom/oculus/userserver/api/user/OculusUserBundler;->bundleSparseUser(Lcom/oculus/userserver/api/user/SparseOculusUser;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static unbundleBuilder(Landroid/os/Bundle;)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;
    .locals 3

    .line 37
    new-instance v0, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    invoke-direct {v0}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;-><init>()V

    const-string v1, "user_id"

    .line 39
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->setUserId(I)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    :cond_0
    const-string v1, "user_name"

    .line 40
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->setUserName(Ljava/lang/String;)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    :cond_1
    return-object v0
.end method

.method public static unbundleSparseUser(Landroid/os/Bundle;)Lcom/oculus/userserver/api/user/SparseOculusUser;
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/oculus/userserver/api/user/OculusUserBundler;->unbundleBuilder(Landroid/os/Bundle;)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->buildSparseUser()Lcom/oculus/userserver/api/user/SparseOculusUser;

    move-result-object p0

    return-object p0
.end method

.method public static unbundleUser(Landroid/os/Bundle;)Lcom/oculus/userserver/api/user/OculusUser;
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/oculus/userserver/api/user/OculusUserBundler;->unbundleBuilder(Landroid/os/Bundle;)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->buildUser()Lcom/oculus/userserver/api/user/OculusUser;

    move-result-object p0

    return-object p0
.end method

.method public static unbundleUsers(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oculus/userserver/api/user/OculusUser;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 48
    invoke-static {v1}, Lcom/oculus/userserver/api/user/OculusUserBundler;->unbundleUser(Landroid/os/Bundle;)Lcom/oculus/userserver/api/user/OculusUser;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
