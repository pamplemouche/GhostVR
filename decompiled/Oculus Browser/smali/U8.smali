.class public LU8;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lk9;


# direct methods
.method public constructor <init>(Lk9;)V
    .locals 0

    .line 1
    iput-object p1, p0, LU8;->w:Lk9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LU8;->w:Lk9;

    iget v1, v0, Lk9;->i0:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Lk9;->c(I)V

    .line 3
    :cond_0
    iget-object v0, p0, LU8;->w:Lk9;

    iget v1, v0, Lk9;->i0:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    .line 4
    invoke-virtual {v0, v1}, Lk9;->c(I)V

    .line 5
    :cond_1
    iget-object v0, p0, LU8;->w:Lk9;

    iput-boolean v2, v0, Lk9;->h0:Z

    .line 6
    iput v2, v0, Lk9;->i0:I

    return-void
.end method
