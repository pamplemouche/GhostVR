.class public Lcom/samsung/a/a/a/i;
.super Lcom/samsung/a/a/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/a/a/a/h<",
        "Lcom/samsung/a/a/a/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/a/a/a/h;-><init>(Lcom/samsung/a/a/a/f;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/a/a/a/i;
    .locals 0

    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/a/a/a/i;->a:Ljava/util/Map;

    const-string v1, "pn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failure to build Log : Screen name cannot be null"

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "t"

    const-string v1, "pv"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/h;

    :goto_0
    invoke-super {p0}, Lcom/samsung/a/a/a/h;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()J
    .locals 2

    invoke-super {p0}, Lcom/samsung/a/a/a/h;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method protected synthetic d()Lcom/samsung/a/a/a/h;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/a/a/a/i;->a()Lcom/samsung/a/a/a/i;

    move-result-object v0

    return-object v0
.end method
