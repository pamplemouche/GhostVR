.class public final La/f/h;
.super Ljava/lang/Object;

# interfaces
.implements La/c/b/a/a;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c/b/a/a;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/f/a;


# direct methods
.method public constructor <init>(La/f/a;)V
    .locals 0

    iput-object p1, p0, La/f/h;->a:La/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, La/f/h;->a:La/f/a;

    invoke-interface {v0}, La/f/a;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
