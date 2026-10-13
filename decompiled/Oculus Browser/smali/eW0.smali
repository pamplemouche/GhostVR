.class public LeW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final w:I

.field public x:I

.field public final synthetic y:LfW0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LfW0;

    return-void
.end method

.method public constructor <init>(LfW0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LeW0;->y:LfW0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, LfW0;->y:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, LeW0;->w:I

    add-int/lit8 p1, p1, -0x1

    .line 4
    iput p1, p0, LeW0;->x:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, LeW0;->x:I

    if-ltz v0, :cond_0

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
    iget-object v0, p0, LeW0;->y:LfW0;

    .line 2
    iget-object v0, v0, LfW0;->y:Ljava/util/List;

    .line 3
    iget v1, p0, LeW0;->x:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, LeW0;->x:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LcW0;

    iget-object v0, v0, LcW0;->a:LLV;

    return-object v0
.end method
