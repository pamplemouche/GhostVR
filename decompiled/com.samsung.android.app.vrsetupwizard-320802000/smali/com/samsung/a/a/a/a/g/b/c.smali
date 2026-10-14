.class Lcom/samsung/a/a/a/a/g/b/c;
.super Lcom/samsung/a/a/a/a/d/a;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/a/a/a/a/g/b/b;


# direct methods
.method constructor <init>(Lcom/samsung/a/a/a/a/g/b/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/b/c;->b:Lcom/samsung/a/a/a/a/g/b/b;

    iput p2, p0, Lcom/samsung/a/a/a/a/g/b/c;->a:I

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/b/c;->b:Lcom/samsung/a/a/a/a/g/b/b;

    invoke-static {p1}, Lcom/samsung/a/a/a/a/g/b/b;->a(Lcom/samsung/a/a/a/a/g/b/b;)Lcom/samsung/a/a/a/a/g/d/a;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p2, Lcom/samsung/a/a/a/a/g/c;->a:Lcom/samsung/a/a/a/a/g/c;

    invoke-virtual {p2}, Lcom/samsung/a/a/a/a/g/c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/a/a/a/a/g/c;->a:Lcom/samsung/a/a/a/a/g/c;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/samsung/a/a/a/a/g/c;->b:Lcom/samsung/a/a/a/a/g/c;

    :goto_0
    invoke-virtual {p1, v0, v1, p3, p2}, Lcom/samsung/a/a/a/a/g/d/a;->a(JLjava/lang/String;Lcom/samsung/a/a/a/a/g/c;)V

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/b/c;->b:Lcom/samsung/a/a/a/a/g/b/b;

    invoke-static {p1}, Lcom/samsung/a/a/a/a/g/b/b;->b(Lcom/samsung/a/a/a/a/g/b/b;)Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/samsung/a/a/a/a/g/b/c;->a:I

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    array-length p3, p3

    mul-int/lit8 p3, p3, -0x1

    invoke-static {p1, p2, p3}, Lcom/samsung/a/a/a/a/e/c;->b(Landroid/content/Context;II)V

    return-void
.end method
