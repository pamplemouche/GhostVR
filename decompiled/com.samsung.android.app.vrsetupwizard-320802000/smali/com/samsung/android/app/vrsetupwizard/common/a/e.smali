.class public Lcom/samsung/android/app/vrsetupwizard/common/a/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Field;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Landroid/content/Context;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->b:Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->b:Ljava/lang/Class;

    const-string v1, "STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->c:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->a:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->b:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getUserId"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->d:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->b:Ljava/lang/Class;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/BroadcastReceiver;

    aput-object v3, v2, v1

    const-class v3, Landroid/os/UserHandle;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Landroid/content/IntentFilter;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const-class v3, Landroid/os/Handler;

    const/4 v6, 0x4

    aput-object v3, v2, v6

    const-string v3, "registerReceiverAsUser"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->e:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->b:Ljava/lang/Class;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v1

    const-class v3, Landroid/os/UserHandle;

    aput-object v3, v2, v4

    const-string v3, "startServiceAsUser"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->f:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->b:Ljava/lang/Class;

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v1

    const-class v1, Landroid/os/UserHandle;

    aput-object v1, v2, v4

    const-string v1, "startActivityAsUser"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->g:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/a/e;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
