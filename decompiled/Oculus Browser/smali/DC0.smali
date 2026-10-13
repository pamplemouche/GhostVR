.class public LDC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:LJC0;

.field public final synthetic b:LEC0;


# direct methods
.method public constructor <init>(LEC0;LJC0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LDC0;->b:LEC0;

    iput-object p2, p0, LDC0;->a:LJC0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/HashMap;

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, LDC0;->b:LEC0;

    iget-object v2, v2, LEC0;->a:LNC0;

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v1, v3}, LNC0;->a(Ljava/lang/String;Ljava/lang/String;)LyC0;

    move-result-object v1

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZB0;

    .line 8
    iput-object v0, v1, LyC0;->A:LZB0;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, LDC0;->a:LJC0;

    invoke-virtual {p1}, LJC0;->a()V

    return-void
.end method
