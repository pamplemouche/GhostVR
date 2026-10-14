.class public La/c/b/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:La/c/b/p;

.field private static final b:[La/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/c/b/p;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, La/c/b/p;

    invoke-direct {v0}, La/c/b/p;-><init>()V

    :goto_1
    sput-object v0, La/c/b/o;->a:La/c/b/p;

    const/4 v0, 0x0

    new-array v0, v0, [La/e/b;

    sput-object v0, La/c/b/o;->b:[La/e/b;

    return-void
.end method

.method public static a(Ljava/lang/Class;)La/e/b;
    .locals 1

    sget-object v0, La/c/b/o;->a:La/c/b/p;

    invoke-virtual {v0, p0}, La/c/b/p;->a(Ljava/lang/Class;)La/e/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(La/c/b/m;)La/e/g;
    .locals 1

    sget-object v0, La/c/b/o;->a:La/c/b/p;

    invoke-virtual {v0, p0}, La/c/b/p;->a(La/c/b/m;)La/e/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(La/c/b/k;)Ljava/lang/String;
    .locals 1

    sget-object v0, La/c/b/o;->a:La/c/b/p;

    invoke-virtual {v0, p0}, La/c/b/p;->a(La/c/b/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
