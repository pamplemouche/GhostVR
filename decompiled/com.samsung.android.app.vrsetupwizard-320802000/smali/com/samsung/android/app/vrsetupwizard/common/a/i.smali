.class public Lcom/samsung/android/app/vrsetupwizard/common/a/i;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static final b:I

.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;

.field private static final h:Ljava/lang/reflect/Method;

.field private static final i:Ljava/lang/reflect/Method;

.field private static final j:Ljava/lang/reflect/Method;

.field private static final k:Ljava/lang/reflect/Method;

.field private static final l:Ljava/lang/reflect/Method;

.field private static final m:Ljava/lang/reflect/Field;

.field private static final n:Ljava/lang/reflect/Field;

.field private static final o:Ljava/lang/reflect/Field;

.field private static final p:Ljava/lang/reflect/Field;

.field private static final q:Ljava/lang/reflect/Field;

.field private static final r:Ljava/lang/reflect/Field;

.field private static final s:Ljava/lang/reflect/Field;

.field private static final t:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Landroid/content/pm/PackageManager;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/os/UserHandle;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "getPermissionFlags"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->d:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    const-class v3, Landroid/os/UserHandle;

    const/4 v7, 0x4

    aput-object v3, v2, v7

    const-string v3, "updatePermissionFlags"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->e:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Landroid/os/UserHandle;

    aput-object v3, v2, v6

    const-string v3, "grantRuntimePermission"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->f:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v5

    const-class v2, Landroid/os/UserHandle;

    aput-object v2, v1, v6

    const-string v2, "revokeRuntimePermission"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->g:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Landroid/content/pm/ApplicationInfo;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-string v2, "getApplicationIconForIconTray"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->j:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    const-string v2, "semGetDrawableForIconTray"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->k:Ljava/lang/reflect/Method;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v5

    const-string v7, "getInstalledPackagesAsUser"

    invoke-static {v0, v7, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->i:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->i:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->h:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    new-array v3, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/pm/PackageItemInfo;

    aput-object v6, v3, v4

    const-class v4, Landroid/content/pm/ApplicationInfo;

    aput-object v4, v3, v5

    const-string v4, "loadUnbadgedItemIcon"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->l:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    const-string v4, "getInstalledPackages"

    invoke-static {v0, v4, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->h:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->h:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->i:Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->h:Ljava/lang/reflect/Method;

    sput-object v2, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->i:Ljava/lang/reflect/Method;

    :goto_0
    sput-object v2, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->l:Ljava/lang/reflect/Method;

    :goto_1
    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    const-string v3, "FLAG_PERMISSION_USER_SET"

    invoke-static {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->m:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    const-string v3, "FLAG_PERMISSION_USER_FIXED"

    invoke-static {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->n:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    const-string v3, "FLAG_PERMISSION_POLICY_FIXED"

    invoke-static {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->o:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    const-string v3, "FLAG_PERMISSION_REVOKE_ON_UPGRADE"

    invoke-static {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->p:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    const-string v3, "FLAG_PERMISSION_SYSTEM_FIXED"

    invoke-static {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->q:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    const-string v3, "FLAG_PERMISSION_GRANTED_BY_DEFAULT"

    invoke-static {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->r:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    const-string v3, "ICON_TRAY_SQUICLE_MODE"

    invoke-static {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->t:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->t:Ljava/lang/reflect/Field;

    invoke-static {v2, v2, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->a:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x40

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->c:Ljava/lang/Class;

    const-string v1, "FLAG_PERMISSION_REVIEW_REQUIRED"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->s:Ljava/lang/reflect/Field;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->s:Ljava/lang/reflect/Field;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->b:I

    goto :goto_2

    :cond_2
    sput-object v2, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->s:Ljava/lang/reflect/Field;

    sput v3, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->b:I

    :goto_2
    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/i;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
