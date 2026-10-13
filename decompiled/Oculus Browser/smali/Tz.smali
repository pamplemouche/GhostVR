.class public final LTz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmx;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:LIx;


# direct methods
.method public constructor <init>(LIx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LTz;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, LTz;->b:LIx;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;LNI;)Lmx;
    .locals 2

    .line 1
    iget-object v0, p0, LTz;->a:Ljava/util/List;

    new-instance v1, LWw;

    invoke-direct {v1, p1, p2}, LWw;-><init>(Ljava/lang/String;LNI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lxw;
    .locals 2

    .line 2
    iget-object v0, p0, LTz;->b:LIx;

    iget-object v1, p0, LTz;->a:Ljava/util/List;

    invoke-interface {v0, v1}, LIx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxw;

    return-object v0
.end method
