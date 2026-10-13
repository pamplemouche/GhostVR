.class public LNC0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;

.field public final b:Ljava/util/Map;

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LNC0;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LNC0;->c:Z

    .line 4
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;-><init>()V

    iput-object v0, p0, LNC0;->a:Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LNC0;->b:Ljava/util/Map;

    .line 7
    iput-boolean p1, p0, LNC0;->c:Z

    .line 8
    new-instance p1, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;

    invoke-direct {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;-><init>()V

    iput-object p1, p0, LNC0;->a:Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)LyC0;
    .locals 2

    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p2, 0x0

    .line 71
    :cond_1
    invoke-static {p1}, LzC0;->a(Ljava/lang/String;)LzC0;

    move-result-object p1

    .line 72
    invoke-static {p2}, LzC0;->a(Ljava/lang/String;)LzC0;

    move-result-object p2

    .line 73
    new-instance v0, LFC0;

    invoke-direct {v0, p1, p2}, LFC0;-><init>(LzC0;LzC0;)V

    .line 74
    iget-object v1, p0, LNC0;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LyC0;

    if-nez v1, :cond_2

    .line 75
    new-instance v1, LyC0;

    invoke-direct {v1, p1, p2}, LyC0;-><init>(LzC0;LzC0;)V

    .line 76
    iget-object p1, p0, LNC0;->b:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public a(LMC0;)V
    .locals 6

    .line 1
    new-instance v0, LJC0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LJC0;-><init>(LAC0;)V

    .line 2
    new-instance v2, LGC0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v2, LGC0;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v4}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, LCC0;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, LEC0;

    invoke-direct {v2, p0, v1}, LEC0;-><init>(LNC0;LAC0;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v2, LLC0;

    invoke-direct {v2, p0, v1}, LLC0;-><init>(LNC0;LAC0;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, LCC0;

    invoke-direct {v2, p0, v4}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v2, LCC0;

    const/16 v4, 0x1a

    invoke-direct {v2, p0, v4}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v2, LCC0;

    invoke-direct {v2, p0, v3}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v2, LCC0;

    const/16 v3, 0x1f

    invoke-direct {v2, p0, v3}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, LGC0;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v2, LGC0;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v2, LGC0;

    invoke-direct {v2, p0, v5}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v2, LGC0;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, LCC0;

    const/16 v3, 0x16

    invoke-direct {v2, p0, v3}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v2, LCC0;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v2, LCC0;

    const/16 v3, 0x17

    invoke-direct {v2, p0, v3}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v2, LBC0;

    const/16 v3, 0x27

    invoke-direct {v2, p0, v3}, LBC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v2, LGC0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v2, LGC0;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {}, LwT;->c()LwT;

    move-result-object v2

    const-string v3, "enable-experimental-web-platform-features"

    .line 22
    invoke-virtual {v2, v3}, LwT;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    new-instance v2, LCC0;

    const/16 v3, 0x2e

    invoke-direct {v2, p0, v3}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    new-instance v2, LHC0;

    invoke-direct {v2, p0, p1, v1}, LHC0;-><init>(LNC0;LMC0;LAC0;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v0}, LJC0;->a()V

    return-void
.end method

.method public a(LuC0;LMC0;)V
    .locals 9

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, LuC0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p0, p2}, LNC0;->a(LMC0;)V

    return-void

    .line 28
    :cond_0
    new-instance v1, LJC0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LJC0;-><init>(LAC0;)V

    const/4 v3, 0x7

    .line 29
    invoke-virtual {p1, v3}, LuC0;->a(I)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 30
    new-instance p1, LGC0;

    invoke-direct {p1, p0, v5}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x6

    .line 31
    invoke-virtual {p1, v4}, LuC0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 32
    new-instance p1, LCC0;

    invoke-direct {p1, p0, v0}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0xf

    .line 33
    invoke-virtual {p1, v6}, LuC0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 34
    new-instance p1, LEC0;

    invoke-direct {p1, p0, v2}, LEC0;-><init>(LNC0;LAC0;)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance p1, LLC0;

    invoke-direct {p1, p0, v2}, LLC0;-><init>(LNC0;LAC0;)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x4

    .line 36
    invoke-virtual {p1, v6}, LuC0;->a(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 37
    new-instance p1, LGC0;

    invoke-direct {p1, p0, v0}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x9

    .line 38
    invoke-virtual {p1, v0}, LuC0;->a(I)Z

    move-result v0

    const/4 v7, 0x3

    if-eqz v0, :cond_5

    .line 39
    new-instance p1, LGC0;

    invoke-direct {p1, p0, v7}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0xb

    .line 40
    invoke-virtual {p1, v0}, LuC0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41
    new-instance p1, LCC0;

    invoke-direct {p1, p0, v6}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, LuC0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 43
    new-instance p1, LCC0;

    const/16 v0, 0x1a

    invoke-direct {p1, p0, v0}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const/16 v6, 0x8

    .line 44
    invoke-virtual {p1, v6}, LuC0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 45
    new-instance p1, LCC0;

    invoke-direct {p1, p0, v5}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0xe

    .line 46
    invoke-virtual {p1, v6}, LuC0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 47
    new-instance p1, LCC0;

    const/16 v0, 0x1f

    invoke-direct {p1, p0, v0}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const/16 v6, 0xa

    .line 48
    invoke-virtual {p1, v6}, LuC0;->a(I)Z

    move-result v6

    const/4 v8, 0x5

    if-eqz v6, :cond_a

    .line 49
    new-instance p1, LGC0;

    invoke-direct {p1, p0, v8}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 50
    :cond_a
    invoke-virtual {p1, v7}, LuC0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 51
    new-instance p1, LCC0;

    const/16 v0, 0x16

    invoke-direct {p1, p0, v0}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const/16 v6, 0x11

    .line 52
    invoke-virtual {p1, v6}, LuC0;->a(I)Z

    move-result v6

    const/16 v7, 0xd

    if-eqz v6, :cond_c

    .line 53
    new-instance p1, LCC0;

    invoke-direct {p1, p0, v7}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const/16 v6, 0xc

    .line 54
    invoke-virtual {p1, v6}, LuC0;->a(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 55
    new-instance p1, LGC0;

    invoke-direct {p1, p0, v4}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_d
    invoke-virtual {p1, v5}, LuC0;->a(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 57
    new-instance p1, LCC0;

    const/16 v0, 0x17

    invoke-direct {p1, p0, v0}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_e
    const/16 v4, 0x10

    .line 58
    invoke-virtual {p1, v4}, LuC0;->a(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 59
    new-instance p1, LBC0;

    const/16 v0, 0x27

    invoke-direct {p1, p0, v0}, LBC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_f
    invoke-virtual {p1, v8}, LuC0;->a(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 61
    new-instance p1, LGC0;

    invoke-direct {p1, p0, v0}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_10
    invoke-virtual {p1, v7}, LuC0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 63
    new-instance p1, LGC0;

    invoke-direct {p1, p0, v3}, LGC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_11
    const/16 v0, 0x12

    .line 64
    invoke-virtual {p1, v0}, LuC0;->a(I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 65
    invoke-static {}, LwT;->c()LwT;

    move-result-object p1

    const-string v0, "enable-experimental-web-platform-features"

    .line 66
    invoke-virtual {p1, v0}, LwT;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 67
    new-instance p1, LCC0;

    const/16 v0, 0x2e

    invoke-direct {p1, p0, v0}, LCC0;-><init>(LNC0;I)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_12
    :goto_0
    new-instance p1, LHC0;

    invoke-direct {p1, p0, p2, v2}, LHC0;-><init>(LNC0;LMC0;LAC0;)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v1}, LJC0;->a()V

    return-void
.end method
