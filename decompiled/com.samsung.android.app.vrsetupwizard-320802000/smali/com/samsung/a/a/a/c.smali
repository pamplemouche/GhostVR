.class public Lcom/samsung/a/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/samsung/a/a/a/k;

.field private l:Lcom/samsung/a/a/a/d;

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/a/a/a/c;->c:Z

    iput-boolean v0, p0, Lcom/samsung/a/a/a/c;->d:Z

    iput-boolean v0, p0, Lcom/samsung/a/a/a/c;->e:Z

    iput-boolean v0, p0, Lcom/samsung/a/a/a/c;->f:Z

    iput-boolean v0, p0, Lcom/samsung/a/a/a/c;->g:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/a/a/a/c;->m:I

    iput v1, p0, Lcom/samsung/a/a/a/c;->n:I

    iput v0, p0, Lcom/samsung/a/a/a/c;->o:I

    iput v0, p0, Lcom/samsung/a/a/a/c;->p:I

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/a/a/a/k;)Lcom/samsung/a/a/a/c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/c;->k:Lcom/samsung/a/a/a/k;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/a/a/a/c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/a/a/a/c;->m:I

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/a/a/a/c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/samsung/a/a/a/c;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/a/a/a/c;->c:Z

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/samsung/a/a/a/c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/c;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/c;->c:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/a/a/a/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/c;->e:Z

    return v0
.end method

.method public h()Lcom/samsung/a/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/c;->k:Lcom/samsung/a/a/a/k;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/c;->g:Z

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/samsung/a/a/a/c;->o:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/samsung/a/a/a/c;->p:I

    return v0
.end method

.method public n()Lcom/samsung/a/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/c;->l:Lcom/samsung/a/a/a/d;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/samsung/a/a/a/c;->m:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/samsung/a/a/a/c;->n:I

    return v0
.end method
