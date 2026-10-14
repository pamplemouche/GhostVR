.class Landroid/support/constraint/a/a/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/support/constraint/a/a/d;

.field private b:Landroid/support/constraint/a/a/d;

.field private c:I

.field private d:Landroid/support/constraint/a/a/g;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/a/a/v;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->g()Landroid/support/constraint/a/a/d;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/a/a/v;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->e()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/v;->c:I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->f()Landroid/support/constraint/a/a/g;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/a/a/v;->d:Landroid/support/constraint/a/a/g;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->h()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/a/a/v;->e:I

    return-void
.end method


# virtual methods
.method public a(Landroid/support/constraint/a/a/i;)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/v;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->d()Landroid/support/constraint/a/a/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/i;->a(Landroid/support/constraint/a/a/h;)Landroid/support/constraint/a/a/d;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/a/a/v;->a:Landroid/support/constraint/a/a/d;

    iget-object p1, p0, Landroid/support/constraint/a/a/v;->a:Landroid/support/constraint/a/a/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->g()Landroid/support/constraint/a/a/d;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/a/a/v;->b:Landroid/support/constraint/a/a/d;

    iget-object p1, p0, Landroid/support/constraint/a/a/v;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->e()I

    move-result p1

    iput p1, p0, Landroid/support/constraint/a/a/v;->c:I

    iget-object p1, p0, Landroid/support/constraint/a/a/v;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->f()Landroid/support/constraint/a/a/g;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/a/a/v;->d:Landroid/support/constraint/a/a/g;

    iget-object p1, p0, Landroid/support/constraint/a/a/v;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/d;->h()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/a/a/v;->b:Landroid/support/constraint/a/a/d;

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/constraint/a/a/v;->c:I

    sget-object v0, Landroid/support/constraint/a/a/g;->b:Landroid/support/constraint/a/a/g;

    iput-object v0, p0, Landroid/support/constraint/a/a/v;->d:Landroid/support/constraint/a/a/g;

    :goto_0
    iput p1, p0, Landroid/support/constraint/a/a/v;->e:I

    return-void
.end method

.method public b(Landroid/support/constraint/a/a/i;)V
    .locals 4

    iget-object v0, p0, Landroid/support/constraint/a/a/v;->a:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->d()Landroid/support/constraint/a/a/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/i;->a(Landroid/support/constraint/a/a/h;)Landroid/support/constraint/a/a/d;

    move-result-object p1

    iget-object v0, p0, Landroid/support/constraint/a/a/v;->b:Landroid/support/constraint/a/a/d;

    iget v1, p0, Landroid/support/constraint/a/a/v;->c:I

    iget-object v2, p0, Landroid/support/constraint/a/a/v;->d:Landroid/support/constraint/a/a/g;

    iget v3, p0, Landroid/support/constraint/a/a/v;->e:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/d;ILandroid/support/constraint/a/a/g;I)Z

    return-void
.end method
