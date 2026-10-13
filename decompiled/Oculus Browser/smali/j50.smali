.class public Lj50;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/HashSet;


# instance fields
.field public final a:Lcy0;

.field public final b:Lo50;

.field public c:Lh50;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "\\s"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lj50;->d:Ljava/util/regex/Pattern;

    const-string v0, "GB"

    const-string v1, "US"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, LsT;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lj50;->e:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lo50;Lh50;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lay0;->a:Lcy0;

    .line 3
    iput-object v0, p0, Lj50;->a:Lcy0;

    .line 4
    iput-object p1, p0, Lj50;->b:Lo50;

    .line 5
    iput-object p2, p0, Lj50;->c:Lh50;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lj50;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, LP40;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lj50;->a:Lcy0;

    const-string v2, "contextual_search_promo_open_count"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcy0;->a(Ljava/lang/String;I)I

    move-result v0

    .line 5
    invoke-static {v1}, LP40;->b(I)I

    move-result v2

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public a(Ljava/net/URL;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, LP40;->a(I)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, LJ/N;->Mhm1CPCt(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj50;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, LP40;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lj50;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lj50;->c:Lh50;

    invoke-interface {v0}, Lh50;->h()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj50;->a(Ljava/net/URL;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
