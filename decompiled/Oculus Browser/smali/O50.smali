.class public LO50;
.super LQ40;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, LQ40;-><init>()V

    .line 2
    iput p1, p0, LO50;->a:I

    const/4 v0, 0x4

    .line 3
    invoke-static {v0}, LP40;->b(I)I

    move-result v0

    iput v0, p0, LO50;->b:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    :goto_0
    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_1
    iput-boolean p1, p0, LO50;->c:Z

    return-void
.end method


# virtual methods
.method public a(LW40;)V
    .locals 2

    .line 2
    iget v0, p0, LO50;->a:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4
    check-cast p1, Lk50;

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lk50;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LO50;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, LO50;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
