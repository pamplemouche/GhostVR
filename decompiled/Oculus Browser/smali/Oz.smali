.class public final synthetic LOz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIx;


# instance fields
.field public final a:LSz;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LSz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOz;->a:LSz;

    iput-object p2, p0, LOz;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LOz;->a:LSz;

    iget-object v1, p0, LOz;->b:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v2, v0, LSz;->a:Lry;

    const-string v3, "EphemeralFeedStore"

    invoke-virtual {v2, v3}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v2

    .line 2
    iget-object v3, v0, LSz;->g:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v0, v0, LSz;->g:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v3, ""

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v3, "commitSessionMutation"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "mutations"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Lny;->a([Ljava/lang/Object;)V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
