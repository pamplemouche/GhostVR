.class public Lib;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:Ljb;


# direct methods
.method public constructor <init>(Ljb;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lib;->x:Ljb;

    iput p2, p0, Lib;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lib;->x:Ljb;

    iget-object v0, v0, Ljb;->f:Lkb;

    iget-object v0, v0, Lkb;->c:Lnb;

    iget-object v0, v0, Lnb;->o:Lqb;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lib;->w:I

    invoke-virtual {v0, v1}, Lqb;->b(I)V

    :cond_0
    return-void
.end method
