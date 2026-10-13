.class public final synthetic LPz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIx;


# instance fields
.field public final a:LSz;


# direct methods
.method public constructor <init>(LSz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPz;->a:LSz;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LPz;->a:LSz;

    check-cast p1, Ljava/util/Map;

    .line 1
    iget-object v1, v0, LSz;->a:Lry;

    const-string v2, "EphemeralFeedStore"

    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 2
    iget-object v0, v0, LSz;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "commitSemanticPropertiesMutation"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "mutations"

    aput-object v3, v0, v2

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lny;->a([Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lxw;->b:Lxw;

    return-object p1
.end method
