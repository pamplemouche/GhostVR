.class public final Lkb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LS5;

.field public b:LY4;

.field public final synthetic c:Lnb;


# direct methods
.method public constructor <init>(Lnb;LS5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkb;->c:Lnb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lkb;->a:LS5;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkb;->a:LS5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lkb;->c:Lnb;

    iget-object v1, v1, Lnb;->g:LMb;

    iget v1, v1, LMb;->d:I

    .line 3
    iget-object v0, v0, LS5;->a:LI5;

    invoke-interface {v0, v1}, LI5;->a(I)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lkb;->b:LY4;

    :cond_0
    return-void
.end method
