.class public final LBy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LZw;


# instance fields
.field public final a:Llx;

.field public final b:Ljava/util/Set;

.field public final c:Lxx;

.field public final d:LYw;

.field public final e:Lew;


# direct methods
.method public constructor <init>(Llx;Lxx;LYw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LBy;->b:Ljava/util/Set;

    .line 3
    iput-object p1, p0, LBy;->a:Llx;

    .line 4
    iput-object p2, p0, LBy;->c:Lxx;

    .line 5
    iput-object p3, p0, LBy;->d:LYw;

    .line 6
    new-instance p2, LAy;

    invoke-direct {p2, p0}, LAy;-><init>(LBy;)V

    iput-object p2, p0, LBy;->e:Lew;

    .line 7
    check-cast p1, Liz;

    .line 8
    iput-object p2, p1, Liz;->t:Lew;

    return-void
.end method
