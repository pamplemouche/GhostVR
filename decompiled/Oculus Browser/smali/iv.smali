.class public final Liv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpv;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public c:LWu;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;LWu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Liv;->b:Ljava/lang/Object;

    iput-object p1, p0, Liv;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Liv;->c:LWu;

    return-void
.end method


# virtual methods
.method public final a(Lbv;)V
    .locals 0

    check-cast p1, Lsv;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method
