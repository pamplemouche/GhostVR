.class public Landroid/support/v4/app/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/app/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/v<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    return-void
.end method

.method public static final a(Landroid/support/v4/app/v;)Landroid/support/v4/app/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/v<",
            "*>;)",
            "Landroid/support/v4/app/u;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/u;

    invoke-direct {v0, p0}, Landroid/support/v4/app/u;-><init>(Landroid/support/v4/app/v;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/z;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public a()Landroid/support/v4/app/w;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->i()Landroid/support/v4/app/z;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/z;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/z;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Landroid/support/v4/app/ao;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/z;->a(Landroid/os/Parcelable;Landroid/support/v4/app/ao;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    iget-object v1, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    invoke-virtual {v0, v1, v1, p1}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/v;Landroid/support/v4/app/t;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public a(Landroid/support/v4/k/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/k/w<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/bj;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/v;->a(Landroid/support/v4/k/w;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/v;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/z;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/z;->a(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/z;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/z;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->m()V

    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/z;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/z;->b(Z)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/z;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->l()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/v;->a(Z)V

    return-void
.end method

.method public d()Landroid/support/v4/app/ao;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->j()Landroid/support/v4/app/ao;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->n()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->o()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->p()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->q()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->r()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->s()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->t()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->v()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->w()V

    return-void
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->g()Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->k()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->l()V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->m()V

    return-void
.end method

.method public r()Landroid/support/v4/k/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/k/w<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/bj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/u;->a:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->n()Landroid/support/v4/k/w;

    move-result-object v0

    return-object v0
.end method
