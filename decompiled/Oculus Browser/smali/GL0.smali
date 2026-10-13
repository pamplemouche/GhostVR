.class public final synthetic LGL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LPL0;


# direct methods
.method public constructor <init>(LPL0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGL0;->a:LPL0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LGL0;->a:LPL0;

    check-cast p1, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, LPL0;->d:Ljava/util/Set;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, LPL0;->a(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
