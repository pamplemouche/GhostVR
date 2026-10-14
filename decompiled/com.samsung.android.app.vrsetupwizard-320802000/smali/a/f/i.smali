.class public final La/f/i;
.super Ljava/lang/Object;

# interfaces
.implements La/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La/f/a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:La/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/f/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:La/c/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/c/a/b<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/f/a;La/c/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/f/a<",
            "+TT;>;",
            "La/c/a/b<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, La/c/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/f/i;->a:La/f/a;

    iput-object p2, p0, La/f/i;->b:La/c/a/b;

    return-void
.end method

.method public static final synthetic a(La/f/i;)La/c/a/b;
    .locals 0

    iget-object p0, p0, La/f/i;->b:La/c/a/b;

    return-object p0
.end method

.method public static final synthetic b(La/f/i;)La/f/a;
    .locals 0

    iget-object p0, p0, La/f/i;->a:La/f/a;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, La/f/j;

    invoke-direct {v0, p0}, La/f/j;-><init>(La/f/i;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
