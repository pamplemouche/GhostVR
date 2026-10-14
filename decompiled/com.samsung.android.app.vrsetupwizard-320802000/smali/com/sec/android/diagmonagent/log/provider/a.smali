.class public Lcom/sec/android/diagmonagent/log/provider/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->c:Ljava/lang/String;

    const-string v1, "Samsung Software"

    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/a;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/a;->h:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/a;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/a;->h()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/a;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DIAGMON_AGENT"

    if-nez v0, :cond_2

    const-string v0, "Y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong agreement : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/a;->b:Z

    goto :goto_2

    :cond_2
    const-string p1, "Empty agreement"

    :goto_1
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/sec/android/diagmonagent/log/provider/a;->b:Z

    :goto_2
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/sec/android/diagmonagent/log/provider/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/android/diagmonagent/log/provider/a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/a;->i:Ljava/util/List;

    return-object p0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->b:Z

    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/a;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/a;->c(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/a;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/a;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->h:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.android.log."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->i:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/a;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->h:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected h()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/a;->g:Ljava/lang/String;

    return-void
.end method
