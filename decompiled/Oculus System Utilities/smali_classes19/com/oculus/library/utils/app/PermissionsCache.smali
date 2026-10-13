.class public Lcom/oculus/library/utils/app/PermissionsCache;
.super Ljava/lang/Object;
.source "PermissionsCache.java"


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/library/model/AppPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mCache:Ljava/util/HashMap;

    .line 19
    iput-object p1, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 20
    return-void
.end method

.method private fetchPermissionFromPackageManager(Ljava/lang/String;)Lcom/oculus/library/model/AppPermission;
    .locals 10
    .param p1, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const/4 v2, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    .local v8, "permissionInfo":Landroid/content/pm/PermissionInfo;
    const/4 v7, 0x0

    .line 51
    .local v7, "permissionGroupInfo":Landroid/content/pm/PermissionGroupInfo;
    :try_start_0
    iget-object v0, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v8

    .line 52
    if-eqz v8, :cond_0

    iget-object v0, v8, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, v8, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 63
    :cond_0
    if-nez v8, :cond_2

    .line 64
    new-instance v0, Lcom/oculus/library/model/AppPermission;

    move-object v1, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/oculus/library/model/AppPermission;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 76
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v6

    .line 56
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v0, Lcom/oculus/library/model/AppPermission;

    if-eqz v8, :cond_1

    .line 58
    invoke-static {v8}, Lcom/oculus/library/utils/app/PermissionsCache;->isDangerous(Landroid/content/pm/PermissionInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    move-object v1, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/oculus/library/model/AppPermission;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 67
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v4, 0x0

    .line 68
    .local v4, "group":Ljava/lang/String;
    const/high16 v5, -0x80000000

    .line 69
    .local v5, "groupPriority":I
    if-eqz v7, :cond_3

    .line 70
    iget-object v0, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v0}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    iget v5, v7, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v0}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "label":Ljava/lang/String;
    new-instance v0, Lcom/oculus/library/model/AppPermission;

    .line 76
    invoke-static {v8}, Lcom/oculus/library/utils/app/PermissionsCache;->isDangerous(Landroid/content/pm/PermissionInfo;)Z

    move-result v2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oculus/library/model/AppPermission;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static isDangerous(Landroid/content/pm/PermissionInfo;)Z
    .locals 1
    .param p0, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 42
    iget v0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getPermission(Ljava/lang/String;)Lcom/oculus/library/model/AppPermission;
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/AppPermission;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .local v0, "permission":Lcom/oculus/library/model/AppPermission;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 38
    .end local v0    # "permission":Lcom/oculus/library/model/AppPermission;
    .local v1, "permission":Lcom/oculus/library/model/AppPermission;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 35
    .end local v1    # "permission":Lcom/oculus/library/model/AppPermission;
    .restart local v0    # "permission":Lcom/oculus/library/model/AppPermission;
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/oculus/library/utils/app/PermissionsCache;->fetchPermissionFromPackageManager(Ljava/lang/String;)Lcom/oculus/library/model/AppPermission;

    move-result-object v0

    .line 36
    iget-object v2, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 38
    .end local v0    # "permission":Lcom/oculus/library/model/AppPermission;
    .restart local v1    # "permission":Lcom/oculus/library/model/AppPermission;
    goto :goto_0

    .line 28
    .end local v1    # "permission":Lcom/oculus/library/model/AppPermission;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
