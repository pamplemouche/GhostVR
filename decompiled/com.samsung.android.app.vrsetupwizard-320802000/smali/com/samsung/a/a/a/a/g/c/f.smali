.class public Lcom/samsung/a/a/a/a/g/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/a/a/a/a/d/b;


# instance fields
.field private a:Lcom/samsung/a/a/a/a/g/f;

.field private b:Lcom/sec/android/diagmonagent/a/a;

.field private c:Lcom/samsung/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/sec/android/diagmonagent/a/a;Lcom/samsung/a/a/a/c;Lcom/samsung/a/a/a/a/g/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/a/a/a/a/g/c/f;->a:Lcom/samsung/a/a/a/a/g/f;

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/c/f;->b:Lcom/sec/android/diagmonagent/a/a;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/g/c/f;->c:Lcom/samsung/a/a/a/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/c/f;->b:Lcom/sec/android/diagmonagent/a/a;

    sget-object v1, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/e/b;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/a/a/a/a/g/c/f;->c:Lcom/samsung/a/a/a/c;

    invoke-virtual {v2}, Lcom/samsung/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/a/a/a/a/g/c/f;->a:Lcom/samsung/a/a/a/a/g/f;

    invoke-virtual {v3}, Lcom/samsung/a/a/a/a/g/f;->d()Lcom/samsung/a/a/a/a/g/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/a/a/a/a/g/c;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/a/a/a/a/g/c/f;->a:Lcom/samsung/a/a/a/a/g/f;

    invoke-virtual {v4}, Lcom/samsung/a/a/a/a/g/f;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/a/a/a/a/g/c/f;->a:Lcom/samsung/a/a/a/a/g/f;

    invoke-virtual {v6}, Lcom/samsung/a/a/a/a/g/f;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/diagmonagent/a/a;->a(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
