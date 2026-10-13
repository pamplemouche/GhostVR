.class public LpL0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LhL0;

.field public b:Lle1;

.field public c:I

.field public d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;)Lle1;
    .locals 5

    .line 1
    sget-object v0, LqL0;->e:[LUd1;

    .line 2
    invoke-static {v0}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v0

    .line 3
    sget-object v1, LqL0;->b:Lfe1;

    .line 4
    new-instance v2, Lbe1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lbe1;-><init>(LVd1;)V

    .line 5
    iput-object p1, v2, Lbe1;->a:Ljava/lang/Object;

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, LqL0;->d:Lfe1;

    new-instance v2, LoL0;

    invoke-direct {v2, p0}, LoL0;-><init>(LpL0;)V

    .line 8
    new-instance v4, Lbe1;

    invoke-direct {v4, v3}, Lbe1;-><init>(LVd1;)V

    .line 9
    iput-object v2, v4, Lbe1;->a:Ljava/lang/Object;

    .line 10
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, LqL0;->c:Lfe1;

    .line 12
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->getOriginUrl()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, LJ/N;->M25QTkfm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v2, Lbe1;

    invoke-direct {v2, v3}, Lbe1;-><init>(LVd1;)V

    .line 15
    iput-object p1, v2, Lbe1;->a:Ljava/lang/Object;

    .line 16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p1, Lle1;

    invoke-direct {p1, v0, v3}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    return-object p1
.end method
