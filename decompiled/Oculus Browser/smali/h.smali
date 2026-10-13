.class public Lh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public w:Lg;

.field public x:Z

.field public final synthetic y:Lj;


# direct methods
.method public synthetic constructor <init>(Lj;Le;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh;->y:Lj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lh;->x:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lh;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lh;->x:Z

    .line 3
    iput-object v1, p0, Lh;->w:Lg;

    goto :goto_0

    .line 4
    :cond_0
    iput-object v1, p0, Lh;->w:Lg;

    :goto_0
    return-object v1
.end method
