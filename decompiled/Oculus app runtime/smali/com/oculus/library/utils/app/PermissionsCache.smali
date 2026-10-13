.class public Lcom/oculus/library/utils/app/PermissionsCache;
.super Ljava/lang/Object;
.source "PermissionsCache.java"


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mCache:Ljava/util/HashMap;

    .line 19
    iput-object p1, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private fetchPermissionFromPackageManager(Ljava/lang/String;)Lcom/oculus/library/model/AppPermission;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 52
    :try_start_1
    iget-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_2

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v2, :cond_1

    .line 64
    new-instance v0, Lcom/oculus/library/model/AppPermission;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    move-object v3, v0

    move-object v4, p1

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/oculus/library/model/AppPermission;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1
    const/high16 v3, -0x80000000

    if-eqz v0, :cond_2

    .line 70
    iget-object v1, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    iget v3, v0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    move-object v8, v1

    move v9, v3

    goto :goto_1

    :cond_2
    move-object v8, v1

    const/high16 v9, -0x80000000

    .line 73
    :goto_1
    iget-object v0, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 75
    new-instance v0, Lcom/oculus/library/model/AppPermission;

    .line 76
    invoke-static {v2}, Lcom/oculus/library/utils/app/PermissionsCache;->isDangerous(Landroid/content/pm/PermissionInfo;)Z

    move-result v6

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/oculus/library/model/AppPermission;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :catch_1
    move-object v2, v1

    .line 56
    :goto_2
    new-instance v1, Lcom/oculus/library/model/AppPermission;

    if-eqz v2, :cond_3

    .line 58
    invoke-static {v2}, Lcom/oculus/library/utils/app/PermissionsCache;->isDangerous(Landroid/content/pm/PermissionInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    const/4 v7, 0x0

    const/high16 v8, -0x80000000

    move-object v3, v1

    move-object v4, p1

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/oculus/library/model/AppPermission;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method private static isDangerous(Landroid/content/pm/PermissionInfo;)Z
    .locals 1

    .line 42
    iget p0, p0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized getPermission(Ljava/lang/String;)Lcom/oculus/library/model/AppPermission;
    .locals 2

    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/AppPermission;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 32
    monitor-exit p0

    return-object v0

    .line 35
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/oculus/library/utils/app/PermissionsCache;->fetchPermissionFromPackageManager(Ljava/lang/String;)Lcom/oculus/library/model/AppPermission;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/oculus/library/utils/app/PermissionsCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
