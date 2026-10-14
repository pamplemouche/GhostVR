.class public Lcom/samsung/a/a/a/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/samsung/a/a/a/j;


# instance fields
.field private b:Lcom/samsung/a/a/a/a/b;


# direct methods
.method private constructor <init>(Landroid/app/Application;Lcom/samsung/a/a/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/a/a/a/j;->b:Lcom/samsung/a/a/a/a/b;

    invoke-static {p1}, Lcom/samsung/a/a/a/a/e/c;->b(Landroid/content/Context;)Z

    invoke-static {p1, p2}, Lcom/samsung/a/a/a/a/e/d;->a(Landroid/app/Application;Lcom/samsung/a/a/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/a/a/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/a/a/a/a/b;

    invoke-direct {v0, p1, p2}, Lcom/samsung/a/a/a/a/b;-><init>(Landroid/app/Application;Lcom/samsung/a/a/a/c;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/a/a/a/j;->b:Lcom/samsung/a/a/a/a/b;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/a/a/a/a/e/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/a/a/a/a/b;

    invoke-direct {v0, p1, p2}, Lcom/samsung/a/a/a/a/b;-><init>(Landroid/app/Application;Lcom/samsung/a/a/a/c;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static a()Lcom/samsung/a/a/a/j;
    .locals 1

    sget-object v0, Lcom/samsung/a/a/a/j;->a:Lcom/samsung/a/a/a/j;

    if-nez v0, :cond_0

    const-string v0, "call after setConfiguration() method"

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/a/a/a/a/j/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/samsung/a/a/a/j;->b(Landroid/app/Application;Lcom/samsung/a/a/a/c;)Lcom/samsung/a/a/a/j;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/a/a/a/j;->a:Lcom/samsung/a/a/a/j;

    return-object v0
.end method

.method public static a(Landroid/app/Application;Lcom/samsung/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/a/a/a/j;->b(Landroid/app/Application;Lcom/samsung/a/a/a/c;)Lcom/samsung/a/a/a/j;

    return-void
.end method

.method private static b(Landroid/app/Application;Lcom/samsung/a/a/a/c;)Lcom/samsung/a/a/a/j;
    .locals 2

    sget-object v0, Lcom/samsung/a/a/a/j;->a:Lcom/samsung/a/a/a/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/a/a/a/j;->b:Lcom/samsung/a/a/a/a/b;

    if-nez v0, :cond_1

    :cond_0
    const-class v0, Lcom/samsung/a/a/a/j;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/samsung/a/a/a/j;

    invoke-direct {v1, p0, p1}, Lcom/samsung/a/a/a/j;-><init>(Landroid/app/Application;Lcom/samsung/a/a/a/c;)V

    sput-object v1, Lcom/samsung/a/a/a/j;->a:Lcom/samsung/a/a/a/j;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object p0, Lcom/samsung/a/a/a/j;->a:Lcom/samsung/a/a/a/j;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/a/a/a/j;->b:Lcom/samsung/a/a/a/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/a/a/a/a/b;->a(Ljava/util/Map;Z)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/16 p1, -0x64

    return p1
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/a/a/a/j;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/a/a/a/j;->b:Lcom/samsung/a/a/a/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/samsung/a/a/a/a/b;->a(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-object p0
.end method
