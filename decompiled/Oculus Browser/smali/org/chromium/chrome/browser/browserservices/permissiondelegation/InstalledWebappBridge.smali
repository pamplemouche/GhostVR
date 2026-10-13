.class public Lorg/chromium/chrome/browser/browserservices/permissiondelegation/InstalledWebappBridge;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:J


# direct methods
.method public static getNotificationPermissions()[Lorg/chromium/chrome/browser/browserservices/permissiondelegation/InstalledWebappBridge$Permission;
    .locals 9

    .line 1
    invoke-static {}, LA20;->a()LA20;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v3, v0, LA20;->a:LB20;

    invoke-virtual {v3}, LB20;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    new-instance v5, Lh20;

    invoke-direct {v5, v4}, Lh20;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v4, v0, LA20;->a:LB20;

    .line 6
    invoke-virtual {v4, v5}, LB20;->b(Lh20;)Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v7, v4, LB20;->a:Landroid/content/SharedPreferences;

    invoke-interface {v7, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    move-object v4, v1

    goto :goto_1

    .line 8
    :cond_0
    iget-object v4, v4, LB20;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_1
    const/4 v6, 0x1

    if-nez v4, :cond_1

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v5, v4, v8

    const-string v5, "TwaPermissionManager"

    const-string v6, "%s is known but has no notification permission."

    .line 9
    invoke-static {v5, v6, v4}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    .line 11
    :goto_2
    new-instance v4, Lorg/chromium/chrome/browser/browserservices/permissiondelegation/InstalledWebappBridge$Permission;

    invoke-direct {v4, v5, v6}, Lorg/chromium/chrome/browser/browserservices/permissiondelegation/InstalledWebappBridge$Permission;-><init>(Lh20;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/chrome/browser/browserservices/permissiondelegation/InstalledWebappBridge$Permission;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/browserservices/permissiondelegation/InstalledWebappBridge$Permission;

    return-object v0

    .line 13
    :cond_4
    throw v1
.end method

.method public static getOriginFromPermission(Lorg/chromium/chrome/browser/browserservices/permissiondelegation/InstalledWebappBridge$Permission;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/chrome/browser/browserservices/permissiondelegation/InstalledWebappBridge$Permission;->a:Lh20;

    invoke-virtual {p0}, Lh20;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingFromPermission(Lorg/chromium/chrome/browser/browserservices/permissiondelegation/InstalledWebappBridge$Permission;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/chromium/chrome/browser/browserservices/permissiondelegation/InstalledWebappBridge$Permission;->b:I

    return p0
.end method

.method public static setInstalledWebappProvider(J)V
    .locals 0

    .line 1
    sput-wide p0, Lorg/chromium/chrome/browser/browserservices/permissiondelegation/InstalledWebappBridge;->a:J

    return-void
.end method
