.class Landroid/arch/a/b/e;
.super Landroid/arch/a/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/a/b/h<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/arch/a/b/f;Landroid/arch/a/b/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/f<",
            "TK;TV;>;",
            "Landroid/arch/a/b/f<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/arch/a/b/h;-><init>(Landroid/arch/a/b/f;Landroid/arch/a/b/f;)V

    return-void
.end method


# virtual methods
.method a(Landroid/arch/a/b/f;)Landroid/arch/a/b/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/f<",
            "TK;TV;>;)",
            "Landroid/arch/a/b/f<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Landroid/arch/a/b/f;->d:Landroid/arch/a/b/f;

    return-object p1
.end method

.method b(Landroid/arch/a/b/f;)Landroid/arch/a/b/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/f<",
            "TK;TV;>;)",
            "Landroid/arch/a/b/f<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Landroid/arch/a/b/f;->c:Landroid/arch/a/b/f;

    return-object p1
.end method
