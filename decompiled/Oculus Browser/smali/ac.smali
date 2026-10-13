.class public Lac;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmc;


# instance fields
.field public final synthetic w:Lvc;

.field public final synthetic x:Lcc;


# direct methods
.method public constructor <init>(Lcc;Lvc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lac;->x:Lcc;

    iput-object p2, p0, Lac;->w:Lvc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lac;->w:Lvc;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Lvc;->f(I)V

    .line 2
    iget-object p1, p0, Lac;->x:Lcc;

    iget-object p1, p1, Lcc;->a:Lyc;

    .line 3
    iget-object v0, p1, Lyc;->D:Landroid/os/Handler;

    iget-object v1, p1, Lyc;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p1, Lyc;->D:Landroid/os/Handler;

    iget-object p1, p1, Lyc;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5
    iget-object p1, p0, Lac;->w:Lvc;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
