.class public final LS6;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic A:LX6;

.field public final w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(LX6;I)V
    .locals 1

    .line 1
    iput-object p1, p0, LS6;->A:LX6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LS6;->z:Z

    .line 3
    iput p2, p0, LS6;->w:I

    .line 4
    invoke-virtual {p1}, LX6;->c()I

    move-result p1

    iput p1, p0, LS6;->x:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, LS6;->y:I

    iget v1, p0, LS6;->x:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, LS6;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LS6;->A:LX6;

    iget v1, p0, LS6;->y:I

    iget v2, p0, LS6;->w:I

    invoke-virtual {v0, v1, v2}, LX6;->a(II)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget v1, p0, LS6;->y:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, LS6;->y:I

    .line 4
    iput-boolean v2, p0, LS6;->z:Z

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-boolean v0, p0, LS6;->z:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, LS6;->y:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LS6;->y:I

    .line 3
    iget v1, p0, LS6;->x:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LS6;->x:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, LS6;->z:Z

    .line 5
    iget-object v1, p0, LS6;->A:LX6;

    invoke-virtual {v1, v0}, LX6;->a(I)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
