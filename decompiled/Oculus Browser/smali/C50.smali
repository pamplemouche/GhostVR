.class public LC50;
.super LQ40;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>(Lo50;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, LQ40;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, LP40;->b(I)I

    move-result v1

    iput v1, p0, LC50;->a:I

    int-to-float p2, p2

    .line 3
    iget p1, p1, Lo50;->c:F

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 4
    iput p1, p0, LC50;->c:I

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iput-boolean v0, p0, LC50;->b:Z

    return-void
.end method


# virtual methods
.method public a(LW40;)V
    .locals 2

    .line 2
    iget v0, p0, LC50;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Lk50;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lk50;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LC50;->b:Z

    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget v0, p0, LC50;->a:I

    if-lez v0, :cond_0

    .line 2
    iget-boolean v0, p0, LC50;->b:Z

    invoke-static {v0}, Lz50;->d(Z)V

    :cond_0
    return-void
.end method
