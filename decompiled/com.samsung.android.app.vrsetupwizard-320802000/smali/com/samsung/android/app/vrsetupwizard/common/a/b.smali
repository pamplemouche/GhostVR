.class public Lcom/samsung/android/app/vrsetupwizard/common/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/b;->a:Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/b;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getPackageManager"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/b;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static a()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/b;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
