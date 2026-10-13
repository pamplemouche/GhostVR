.class public LKU;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LaV;

.field public b:I

.field public c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LaV;

    const-string v1, "ChromiumAndroidLinker.LoadLibraryStatus"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, LaV;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, LKU;->a:LaV;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LKU;->b:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LKU;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 4
    iget v0, p0, LKU;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    or-int/lit8 p1, p1, 0x8

    .line 5
    :cond_1
    iget-object v0, p0, LKU;->a:LaV;

    invoke-virtual {v0, p1}, LaV;->a(I)V

    return-void
.end method

.method public a(ZZZ)V
    .locals 0

    if-eqz p3, :cond_0

    or-int/lit8 p1, p1, 0x2

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 p1, p1, 0x4

    .line 1
    :cond_1
    iget p2, p0, LKU;->b:I

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 2
    invoke-virtual {p0, p1}, LKU;->a(I)V

    return-void

    .line 3
    :cond_3
    iget-object p2, p0, LKU;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
