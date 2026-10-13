.class public LXd1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public varargs constructor <init>([LUd1;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LXd1;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lce1;Z)LXd1;
    .locals 2

    .line 1
    new-instance v0, LWd1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LWd1;-><init>(LVd1;)V

    .line 2
    iput-boolean p2, v0, LWd1;->a:Z

    .line 3
    iget-object p2, p0, LXd1;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Lfe1;Landroid/content/res/Resources;I)LXd1;
    .locals 0

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    :cond_0
    return-object p0
.end method

.method public a(Lfe1;Ljava/lang/Object;)LXd1;
    .locals 2

    .line 4
    new-instance v0, Lbe1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbe1;-><init>(LVd1;)V

    .line 5
    iput-object p2, v0, Lbe1;->a:Ljava/lang/Object;

    .line 6
    iget-object p2, p0, LXd1;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lle1;
    .locals 3

    .line 8
    new-instance v0, Lle1;

    iget-object v1, p0, LXd1;->a:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    return-object v0
.end method
