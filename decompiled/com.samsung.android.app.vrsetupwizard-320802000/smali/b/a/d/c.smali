.class abstract Lb/a/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Lc/aa;


# instance fields
.field protected final a:Lc/m;

.field protected b:Z

.field final synthetic c:Lb/a/d/a;


# direct methods
.method private constructor <init>(Lb/a/d/a;)V
    .locals 1

    iput-object p1, p0, Lb/a/d/c;->c:Lb/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lc/m;

    iget-object v0, p0, Lb/a/d/c;->c:Lb/a/d/a;

    iget-object v0, v0, Lb/a/d/a;->c:Lc/j;

    invoke-interface {v0}, Lc/j;->a()Lc/ab;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/m;-><init>(Lc/ab;)V

    iput-object p1, p0, Lb/a/d/c;->a:Lc/m;

    return-void
.end method

.method synthetic constructor <init>(Lb/a/d/a;Lb/a/d/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/d/c;-><init>(Lb/a/d/a;)V

    return-void
.end method


# virtual methods
.method public a()Lc/ab;
    .locals 1

    iget-object v0, p0, Lb/a/d/c;->a:Lc/m;

    return-object v0
.end method

.method protected final a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/d/c;->c:Lb/a/d/a;

    iget v0, v0, Lb/a/d/a;->e:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/a/d/c;->c:Lb/a/d/a;

    iget v0, v0, Lb/a/d/a;->e:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lb/a/d/c;->c:Lb/a/d/a;

    iget-object v2, p0, Lb/a/d/c;->a:Lc/m;

    invoke-virtual {v0, v2}, Lb/a/d/a;->a(Lc/m;)V

    iget-object v0, p0, Lb/a/d/c;->c:Lb/a/d/a;

    iput v1, v0, Lb/a/d/a;->e:I

    iget-object v0, v0, Lb/a/d/a;->b:Lb/a/b/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/d/c;->c:Lb/a/d/a;

    iget-object v0, v0, Lb/a/d/a;->b:Lb/a/b/g;

    xor-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lb/a/d/c;->c:Lb/a/d/a;

    invoke-virtual {v0, p1, v1}, Lb/a/b/g;->a(ZLb/a/c/c;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/d/c;->c:Lb/a/d/a;

    iget v1, v1, Lb/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
