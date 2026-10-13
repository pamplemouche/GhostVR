.class public Lcom/oculus/library/utils/app/PermissionsManager;
.super Ljava/lang/Object;
.source "PermissionsManager.java"


# instance fields
.field private final mPermissionsCache:Lcom/oculus/library/utils/app/PermissionsCache;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/oculus/library/utils/app/PermissionsCache;

    invoke-direct {v0, p1}, Lcom/oculus/library/utils/app/PermissionsCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oculus/library/utils/app/PermissionsManager;->mPermissionsCache:Lcom/oculus/library/utils/app/PermissionsCache;

    return-void
.end method

.method public static toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/library/model/AppPermission;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/model/AppPermission;

    .line 37
    iget-object v1, v1, Lcom/oculus/library/model/AppPermission;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getPermission(Ljava/lang/String;)Lcom/oculus/library/model/AppPermission;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/oculus/library/utils/app/PermissionsManager;->mPermissionsCache:Lcom/oculus/library/utils/app/PermissionsCache;

    invoke-virtual {v0, p1}, Lcom/oculus/library/utils/app/PermissionsCache;->getPermission(Ljava/lang/String;)Lcom/oculus/library/model/AppPermission;

    move-result-object p1

    return-object p1
.end method

.method public toAppPermissions(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oculus/library/model/AppPermission;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oculus/library/utils/app/PermissionsManager;->getPermission(Ljava/lang/String;)Lcom/oculus/library/model/AppPermission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
