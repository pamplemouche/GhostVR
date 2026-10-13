.class public abstract Lb3;
.super Lv7;
.source "PG"


# instance fields
.field public final b:LH2;

.field public c:Ld3;

.field public d:Lz2;


# direct methods
.method public constructor <init>(LH2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv7;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb3;->c:Ld3;

    .line 3
    iput-object v0, p0, Lb3;->d:Lz2;

    .line 4
    iput-object p1, p0, Lb3;->b:LH2;

    return-void
.end method

.method public static a(IJ)Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 4

    .line 8
    iget-object p1, p0, Lb3;->c:Ld3;

    if-eqz p1, :cond_4

    .line 9
    check-cast p1, Lq2;

    .line 10
    iget-boolean v0, p1, Lq2;->i:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p1, Lq2;->j:Z

    .line 12
    iget-object v0, p1, Lq2;->a:LY2;

    .line 13
    iget-object v1, v0, LY2;->H:LG2;

    if-eqz v1, :cond_2

    iget-boolean v1, v0, LY2;->O:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, LY2;->c(Z)V

    .line 15
    iget-object v2, v0, LY2;->Q:Ljava/util/ArrayList;

    iget-object v3, v0, LY2;->R:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Lq2;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iput-boolean v1, v0, LY2;->x:Z

    .line 17
    :try_start_0
    iget-object p1, v0, LY2;->Q:Ljava/util/ArrayList;

    iget-object v1, v0, LY2;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, LY2;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v0}, LY2;->f()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, LY2;->f()V

    throw p1

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {v0}, LY2;->m()V

    .line 20
    invoke-virtual {v0}, LY2;->d()V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lb3;->c:Ld3;

    goto :goto_2

    .line 22
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This transaction is already being added to the back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb3;->c:Ld3;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lb3;->b:LH2;

    check-cast p1, LY2;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lq2;

    invoke-direct {v0, p1}, Lq2;-><init>(LY2;)V

    .line 4
    iput-object v0, p0, Lb3;->c:Ld3;

    goto :goto_0

    .line 5
    :cond_0
    throw p2

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lb3;->c:Ld3;

    check-cast p3, Lz2;

    check-cast p1, Lq2;

    if-eqz p1, :cond_2

    .line 7
    new-instance p2, Lp2;

    const/4 v0, 0x6

    invoke-direct {p2, v0, p3}, Lp2;-><init>(ILz2;)V

    invoke-virtual {p1, p2}, Lq2;->a(Lp2;)V

    return-void

    :cond_2
    throw p2
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
