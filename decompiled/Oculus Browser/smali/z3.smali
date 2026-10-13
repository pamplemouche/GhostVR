.class public Lz3;
.super Lu;
.source "PG"


# static fields
.field public static final b:Lv;


# instance fields
.field public a:Le7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly3;

    invoke-direct {v0}, Ly3;-><init>()V

    sput-object v0, Lz3;->b:Lv;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lu;-><init>()V

    .line 2
    new-instance v0, Le7;

    const/16 v1, 0xa

    .line 3
    invoke-direct {v0, v1}, Le7;-><init>(I)V

    .line 4
    iput-object v0, p0, Lz3;->a:Le7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz3;->a:Le7;

    invoke-virtual {v0}, Le7;->c()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Lz3;->a:Le7;

    invoke-virtual {v0}, Le7;->a()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lz3;->a:Le7;

    invoke-virtual {v0, v1}, Le7;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx3;

    const/4 v0, 0x0

    .line 4
    throw v0
.end method
