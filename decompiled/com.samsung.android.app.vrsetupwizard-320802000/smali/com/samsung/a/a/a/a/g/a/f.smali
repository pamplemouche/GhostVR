.class public Lcom/samsung/a/a/a/a/g/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/a/a/a/a/d/b;


# instance fields
.field private a:Lcom/samsung/a/a/a/a/g/a/a;

.field private b:Lcom/samsung/a/a/a/c;

.field private c:Lcom/samsung/a/a/a/a/g/f;

.field private d:Lcom/samsung/a/a/a/a/d/a;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/samsung/a/a/a/a/g/a/a;Lcom/samsung/a/a/a/c;Lcom/samsung/a/a/a/a/g/f;Lcom/samsung/a/a/a/a/d/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/a/a/a/a/g/a/f;->e:I

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/a/f;->a:Lcom/samsung/a/a/a/a/g/a/a;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/g/a/f;->b:Lcom/samsung/a/a/a/c;

    iput-object p3, p0, Lcom/samsung/a/a/a/a/g/a/f;->c:Lcom/samsung/a/a/a/a/g/f;

    iput-object p4, p0, Lcom/samsung/a/a/a/a/g/a/f;->d:Lcom/samsung/a/a/a/a/d/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a/f;->a:Lcom/samsung/a/a/a/a/g/a/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/a/a;->d()Lcom/sec/a/a/a/a/a;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a/f;->c:Lcom/samsung/a/a/a/a/g/f;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/f;->d()Lcom/samsung/a/a/a/a/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/c;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a/f;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a/f;->c:Lcom/samsung/a/a/a/a/g/f;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/f;->b()J

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a/f;->c:Lcom/samsung/a/a/a/a/g/f;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/f;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    const-string v8, ""

    const-string v9, "2.01.007"

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a/f;->c:Lcom/samsung/a/a/a/a/g/f;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/f;->c()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v1 .. v10}, Lcom/sec/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/a/a/a/a/g/a/f;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send to DLC : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/a/a/a/a/g/a/f;->c:Lcom/samsung/a/a/a/a/g/f;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/g/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 3

    iget v0, p0, Lcom/samsung/a/a/a/a/g/a/f;->e:I

    const-string v1, "DLC Sender"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send result success : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/a/a/a/a/g/a/f;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send result fail : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/a/a/a/a/g/a/f;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x7

    return v0
.end method
