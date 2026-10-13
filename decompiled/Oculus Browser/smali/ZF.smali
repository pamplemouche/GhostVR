.class public LZF;
.super Ljava/util/AbstractList;
.source "PG"


# instance fields
.field public final w:Ljava/util/List;

.field public final x:LYF;


# direct methods
.method public constructor <init>(Ljava/util/List;LYF;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, LZF;->w:Ljava/util/List;

    .line 3
    iput-object p2, p0, LZF;->x:LYF;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LZF;->x:LYF;

    iget-object v1, p0, LZF;->w:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LYF;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, LZF;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
