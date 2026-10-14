.class public abstract La/c/b/m;
.super La/c/b/l;

# interfaces
.implements La/e/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/c/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()La/e/a;
    .locals 1

    invoke-static {p0}, La/c/b/o;->a(La/c/b/m;)La/e/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, La/c/b/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i()La/e/h;
    .locals 1

    invoke-virtual {p0}, La/c/b/m;->h()La/e/e;

    move-result-object v0

    check-cast v0, La/e/g;

    invoke-interface {v0}, La/e/g;->i()La/e/h;

    move-result-object v0

    return-object v0
.end method
