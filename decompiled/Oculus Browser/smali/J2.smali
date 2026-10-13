.class public LJ2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LK2;


# direct methods
.method public constructor <init>(LK2;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJ2;->w:LK2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, LJ2;->w:LK2;

    iget-object v0, v0, LK2;->c:Lz2;

    invoke-virtual {v0}, Lz2;->m()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LJ2;->w:LK2;

    iget-object v0, v0, LK2;->c:Lz2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2;->a(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, LJ2;->w:LK2;

    iget-object v1, v0, LK2;->d:LY2;

    iget-object v2, v0, LK2;->c:Lz2;

    invoke-virtual {v2}, Lz2;->y()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, LY2;->a(Lz2;IIIZ)V

    :cond_0
    return-void
.end method
