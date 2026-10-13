.class public final synthetic LZy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Liz;

.field public final x:LKx;

.field public final y:LJx;


# direct methods
.method public constructor <init>(Liz;LKx;LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZy;->w:Liz;

    iput-object p2, p0, LZy;->x:LKx;

    iput-object p3, p0, LZy;->y:LJx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LZy;->w:Liz;

    iget-object v1, p0, LZy;->x:LKx;

    iget-object v2, p0, LZy;->y:LJx;

    .line 1
    new-instance v3, Llz;

    iget-object v4, v0, Liz;->i:Lpx;

    iget-object v5, v0, Liz;->k:Lry;

    iget-object v0, v0, Liz;->j:LYw;

    invoke-direct {v3, v4, v5, v0}, Llz;-><init>(Lpx;Lry;LYw;)V

    .line 2
    new-instance v0, Laz;

    invoke-direct {v0, v1}, Laz;-><init>(LKx;)V

    .line 3
    new-instance v1, Lbz;

    invoke-direct {v1, v2, v3, v0}, Lbz;-><init>(LJx;Llz;LKx;)V

    invoke-virtual {v3, v1}, Llz;->a(LJx;)V

    return-void
.end method
