.class public Lnr0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lnr0;->a:I

    .line 3
    iput p2, p0, Lnr0;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lnr0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lnr0;

    .line 3
    iget v0, p0, Lnr0;->a:I

    iget v2, p1, Lnr0;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lnr0;->b:I

    iget p1, p1, Lnr0;->b:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
