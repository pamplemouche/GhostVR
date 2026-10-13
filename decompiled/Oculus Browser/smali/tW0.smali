.class public LtW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LN01;


# direct methods
.method public synthetic constructor <init>(LsW0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lha1;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Landroid/content/Context;

    .line 2
    sget-object p2, LI51;->m:LA61;

    new-instance v0, LzX0;

    invoke-direct {v0}, LzX0;-><init>()V

    .line 3
    iget-object p1, p1, Lha1;->w:Ljava/util/Map;

    invoke-virtual {p2}, LA61;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lga1;

    invoke-direct {v2, p2, v0}, Lga1;-><init>(LA61;Lea1;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
