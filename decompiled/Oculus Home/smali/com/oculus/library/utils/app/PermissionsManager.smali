.class public Lcom/oculus/library/utils/app/PermissionsManager;
.super Ljava/lang/Object;
.source "PermissionsManager.java"


# instance fields
.field private final mPermissionsCache:Lcom/oculus/library/utils/app/PermissionsCache;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/oculus/library/utils/app/PermissionsCache;

    invoke-direct {v0, p1}, Lcom/oculus/library/utils/app/PermissionsCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oculus/library/utils/app/PermissionsManager;->mPermissionsCache:Lcom/oculus/library/utils/app/PermissionsCache;

    .line 17
    return-void
.end method

.method public static toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/AppPermission;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppPermission;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "legacyPermissionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/model/AppPermission;

    .line 37
    .local v1, "permission":Lcom/oculus/library/model/AppPermission;
    iget-object v3, v1, Lcom/oculus/library/model/AppPermission;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    .end local v1    # "permission":Lcom/oculus/library/model/AppPermission;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getPermission(Ljava/lang/String;)Lcom/oculus/library/model/AppPermission;
    .locals 1
    .param p1, "permissionName"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/library/utils/app/PermissionsManager;->mPermissionsCache:Lcom/oculus/library/utils/app/PermissionsCache;

    invoke-virtual {v0, p1}, Lcom/oculus/library/utils/app/PermissionsCache;->getPermission(Ljava/lang/String;)Lcom/oculus/library/model/AppPermission;

    move-result-object v0

    return-object v0
.end method

.method public toAppPermissions(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/AppPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppPermission;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    invoke-virtual {p0, v0}, Lcom/oculus/library/utils/app/PermissionsManager;->getPermission(Ljava/lang/String;)Lcom/oculus/library/model/AppPermission;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    return-object v1
.end method
