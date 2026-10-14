.class public Lcom/samsung/android/app/vrsetupwizard/common/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Field;

.field private static final f:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->b:Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->b:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "forceStopPackage"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->c:Ljava/lang/reflect/Method;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->b:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v1

    const-string v1, "killUid"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->d:Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_0
    sput-object v2, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->d:Ljava/lang/reflect/Method;

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->b:Ljava/lang/Class;

    const-string v1, "REMOVE_TASK_KILL_PROCESS"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->e:Ljava/lang/reflect/Field;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->e:Ljava/lang/reflect/Field;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    sput-object v2, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->e:Ljava/lang/reflect/Field;

    const/4 v0, -0x1

    :goto_1
    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->a:I

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->b:Ljava/lang/Class;

    new-array v1, v4, [Ljava/lang/Class;

    const-string v2, "getCurrentUser"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->f:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static a()I
    .locals 4

    const/16 v0, -0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
