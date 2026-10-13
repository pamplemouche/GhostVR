.class public Lv2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ln;


# instance fields
.field public final synthetic w:Lz2;


# direct methods
.method public constructor <init>(Lz2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv2;->w:Lz2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B()Lm;
    .locals 3

    .line 1
    iget-object v0, p0, Lv2;->w:Lz2;

    iget-object v1, v0, Lz2;->p0:Lo;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lo;

    iget-object v2, v0, Lz2;->q0:Ln;

    invoke-direct {v1, v2}, Lo;-><init>(Ln;)V

    iput-object v1, v0, Lz2;->p0:Lo;

    .line 3
    :cond_0
    iget-object v0, p0, Lv2;->w:Lz2;

    iget-object v0, v0, Lz2;->p0:Lo;

    return-object v0
.end method
