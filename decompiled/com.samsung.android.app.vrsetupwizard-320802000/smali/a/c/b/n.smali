.class public La/c/b/n;
.super La/c/b/m;


# instance fields
.field private final c:La/e/c;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/e/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, La/c/b/m;-><init>()V

    iput-object p1, p0, La/c/b/n;->c:La/e/c;

    iput-object p2, p0, La/c/b/n;->d:Ljava/lang/String;

    iput-object p3, p0, La/c/b/n;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, La/c/b/n;->i()La/e/h;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, La/e/h;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()La/e/c;
    .locals 1

    iget-object v0, p0, La/c/b/n;->c:La/e/c;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/b/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/b/n;->e:Ljava/lang/String;

    return-object v0
.end method
