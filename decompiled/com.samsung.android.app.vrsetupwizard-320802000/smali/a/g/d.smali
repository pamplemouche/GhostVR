.class final La/g/d;
.super Ljava/lang/Object;

# interfaces
.implements La/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/f/a<",
        "La/d/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:La/c/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a/c<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "La/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILa/c/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "La/c/a/c<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "La/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/g/d;->a:Ljava/lang/CharSequence;

    iput p2, p0, La/g/d;->b:I

    iput p3, p0, La/g/d;->c:I

    iput-object p4, p0, La/g/d;->d:La/c/a/c;

    return-void
.end method

.method public static final synthetic a(La/g/d;)I
    .locals 0

    iget p0, p0, La/g/d;->c:I

    return p0
.end method

.method public static final synthetic b(La/g/d;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, La/g/d;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic c(La/g/d;)La/c/a/c;
    .locals 0

    iget-object p0, p0, La/g/d;->d:La/c/a/c;

    return-object p0
.end method

.method public static final synthetic d(La/g/d;)I
    .locals 0

    iget p0, p0, La/g/d;->b:I

    return p0
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "La/d/d;",
            ">;"
        }
    .end annotation

    new-instance v0, La/g/e;

    invoke-direct {v0, p0}, La/g/e;-><init>(La/g/d;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
