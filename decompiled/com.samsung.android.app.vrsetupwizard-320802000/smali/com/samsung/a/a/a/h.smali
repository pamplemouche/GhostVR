.class public abstract Lcom/samsung/a/a/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/a/a/a/h;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/a/a/a/h;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/a/a/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/a/a/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/a/a/a/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/a/a/a/h;->d()Lcom/samsung/a/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;)Lcom/samsung/a/a/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/a/a/a/a/j/b;

    invoke-direct {v0}, Lcom/samsung/a/a/a/a/j/b;-><init>()V

    invoke-static {p1}, Lcom/samsung/a/a/a/a/e/d;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/samsung/a/a/a/a/j/c;->b:Lcom/samsung/a/a/a/a/j/c;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/a/a/a/a/j/b;->a(Ljava/util/Map;Lcom/samsung/a/a/a/a/j/c;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cd"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/h;

    invoke-virtual {p0}, Lcom/samsung/a/a/a/h;->d()Lcom/samsung/a/a/a/h;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/a/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "pn"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/h;

    invoke-virtual {p0}, Lcom/samsung/a/a/a/h;->d()Lcom/samsung/a/a/a/h;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0}, Lcom/samsung/a/a/a/h;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ts"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/h;

    iget-object v0, p0, Lcom/samsung/a/a/a/h;->a:Ljava/util/Map;

    return-object v0
.end method

.method public c()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract d()Lcom/samsung/a/a/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
