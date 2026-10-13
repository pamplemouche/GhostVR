.class public final LNk;
.super Landroid/util/LruCache;
.source "PG"


# instance fields
.field public final synthetic a:Lek;


# direct methods
.method public constructor <init>(Lek;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LNk;->a:Lek;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, LNk;->a:Lek;

    iget-object p1, p1, Lek;->h:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
