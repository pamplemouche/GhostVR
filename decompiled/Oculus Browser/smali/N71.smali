.class public abstract LN71;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lq71;


# instance fields
.field public w:I

.field public x:Lorg/chromium/mojo/system/impl/CoreImpl;


# direct methods
.method public constructor <init>(LN71;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, LN71;->x:Lorg/chromium/mojo/system/impl/CoreImpl;

    iput-object v0, p0, LN71;->x:Lorg/chromium/mojo/system/impl/CoreImpl;

    .line 6
    iget v0, p1, LN71;->w:I

    const/4 v1, 0x0

    .line 7
    iput v1, p1, LN71;->w:I

    .line 8
    iput v0, p0, LN71;->w:I

    return-void
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LN71;->x:Lorg/chromium/mojo/system/impl/CoreImpl;

    .line 3
    iput p2, p0, LN71;->w:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 2

    .line 1
    iget v0, p0, LN71;->w:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, LN71;->w:I

    return v0
.end method

.method public c()Lj71;
    .locals 1

    .line 1
    iget-object v0, p0, LN71;->x:Lorg/chromium/mojo/system/impl/CoreImpl;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget v0, p0, LN71;->w:I

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    iput v1, p0, LN71;->w:I

    .line 3
    iget-object v1, p0, LN71;->x:Lorg/chromium/mojo/system/impl/CoreImpl;

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v1, v0}, LJ/N;->MLQe1QEw(Ljava/lang/Object;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ly71;

    invoke-direct {v1, v0}, Ly71;-><init>(I)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    .line 6
    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final finalize()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LN71;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HandleImpl"

    const-string v2, "Handle was not closed."

    .line 2
    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, LN71;->x:Lorg/chromium/mojo/system/impl/CoreImpl;

    iget v1, p0, LN71;->w:I

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0, v1}, LJ/N;->MLQe1QEw(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget v0, p0, LN71;->w:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()LF71;
    .locals 1

    .line 1
    new-instance v0, LQ71;

    invoke-direct {v0, p0}, LQ71;-><init>(LN71;)V

    return-object v0
.end method
