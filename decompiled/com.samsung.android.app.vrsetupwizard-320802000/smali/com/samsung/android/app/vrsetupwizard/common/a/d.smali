.class public Lcom/samsung/android/app/vrsetupwizard/common/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.os.Build$VERSION"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/common/a/d;->b:Ljava/lang/Class;

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/common/a/d;->b:Ljava/lang/Class;

    const-string v2, "SEM_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/vrsetupwizard/common/a/d;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/vrsetupwizard/common/a/d;->c:Ljava/lang/reflect/Field;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/vrsetupwizard/common/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    :catch_1
    :goto_0
    sput v0, Lcom/samsung/android/app/vrsetupwizard/common/a/d;->a:I

    return-void
.end method
