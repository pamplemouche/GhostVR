.class public Lcom/samsung/a/a/a/a/g/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/samsung/a/a/a/a/g/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/a/a/a/a/g/e;Lcom/samsung/a/a/a/c;)Lcom/samsung/a/a/a/a/g/b;
    .locals 2

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/a/a/a/c;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/a/a/a/a/g/e;->b:Lcom/samsung/a/a/a/a/g/e;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/a/a/a/a/g/e;->a:Lcom/samsung/a/a/a/a/g/e;

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/a/a/a/a/g/d;->a:Lcom/samsung/a/a/a/a/g/b;

    if-nez v0, :cond_5

    const-class v0, Lcom/samsung/a/a/a/a/g/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/a/a/a/a/g/e;->a:Lcom/samsung/a/a/a/a/g/e;

    invoke-virtual {p1, v1}, Lcom/samsung/a/a/a/a/g/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/samsung/a/a/a/a/g/a/d;

    invoke-direct {p1, p0, p2}, Lcom/samsung/a/a/a/a/g/a/d;-><init>(Landroid/content/Context;Lcom/samsung/a/a/a/c;)V

    :goto_1
    sput-object p1, Lcom/samsung/a/a/a/a/g/d;->a:Lcom/samsung/a/a/a/a/g/b;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/samsung/a/a/a/a/g/e;->b:Lcom/samsung/a/a/a/a/g/e;

    invoke-virtual {p1, v1}, Lcom/samsung/a/a/a/a/g/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lcom/samsung/a/a/a/a/g/b/b;

    invoke-direct {p1, p0, p2}, Lcom/samsung/a/a/a/a/g/b/b;-><init>(Landroid/content/Context;Lcom/samsung/a/a/a/c;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/samsung/a/a/a/a/g/e;->c:Lcom/samsung/a/a/a/a/g/e;

    invoke-virtual {p1, v1}, Lcom/samsung/a/a/a/a/g/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/samsung/a/a/a/a/g/c/c;

    invoke-direct {p1, p0, p2}, Lcom/samsung/a/a/a/a/g/c/c;-><init>(Landroid/content/Context;Lcom/samsung/a/a/a/c;)V

    goto :goto_1

    :cond_4
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_3
    sget-object p0, Lcom/samsung/a/a/a/a/g/d;->a:Lcom/samsung/a/a/a/a/g/b;

    return-object p0
.end method
