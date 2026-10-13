.class public final Lcom/oculus/userserver/api/user/OculusUserBundler;
.super Ljava/lang/Object;
.source "OculusUserBundler.java"


# static fields
.field private static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field private static final KEY_USER_NAME:Ljava/lang/String; = "user_name"


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
    .param p0, "sparseUser"    # Lcom/oculus/userserver/api/user/SparseOculusUser;

    .prologue
    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "user_id"

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

    const-string v1, "user_name"

    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/SparseOculusUser;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_1
    return-object v0
.end method

.method public static bundleUser(Lcom/oculus/userserver/api/user/OculusUser;)Landroid/os/Bundle;
    .locals 1
    .param p0, "oculusUser"    # Lcom/oculus/userserver/api/user/OculusUser;

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/oculus/userserver/api/user/OculusUser;->toSparseUser()Lcom/oculus/userserver/api/user/SparseOculusUser;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/userserver/api/user/OculusUserBundler;->bundleSparseUser(Lcom/oculus/userserver/api/user/SparseOculusUser;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static unbundleBuilder(Landroid/os/Bundle;)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 37
    new-instance v0, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    invoke-direct {v0}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;-><init>()V

    .line 39
    .local v0, "builder":Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;
    const-string v1, "user_id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "user_id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->setUserId(I)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    .line 40
    :cond_0
    const-string v1, "user_name"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "user_name"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->setUserName(Ljava/lang/String;)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    .line 42
    :cond_1
    return-object v0
.end method

.method public static unbundleSparseUser(Landroid/os/Bundle;)Lcom/oculus/userserver/api/user/SparseOculusUser;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/oculus/userserver/api/user/OculusUserBundler;->unbundleBuilder(Landroid/os/Bundle;)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->buildSparseUser()Lcom/oculus/userserver/api/user/SparseOculusUser;

    move-result-object v0

    return-object v0
.end method

.method public static unbundleUser(Landroid/os/Bundle;)Lcom/oculus/userserver/api/user/OculusUser;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/oculus/userserver/api/user/OculusUserBundler;->unbundleBuilder(Landroid/os/Bundle;)Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/userserver/api/user/SparseOculusUser$Builder;->buildUser()Lcom/oculus/userserver/api/user/OculusUser;

    move-result-object v0

    return-object v0
.end method

.method public static unbundleUsers(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/userserver/api/user/OculusUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "listBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .local v1, "listUsers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/userserver/api/user/OculusUser;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 48
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Lcom/oculus/userserver/api/user/OculusUserBundler;->unbundleUser(Landroid/os/Bundle;)Lcom/oculus/userserver/api/user/OculusUser;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method
