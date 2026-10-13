.class public Lzy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic w:Lorg/chromium/components/search_engines/TemplateUrl;


# direct methods
.method public constructor <init>(Lorg/chromium/components/search_engines/TemplateUrl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzy0;->w:Lorg/chromium/components/search_engines/TemplateUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Lorg/chromium/components/search_engines/TemplateUrl;

    check-cast p2, Lorg/chromium/components/search_engines/TemplateUrl;

    .line 2
    invoke-virtual {p1}, Lorg/chromium/components/search_engines/TemplateUrl;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/chromium/components/search_engines/TemplateUrl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, p1, Lorg/chromium/components/search_engines/TemplateUrl;->a:J

    .line 4
    invoke-static {v0, v1}, LJ/N;->MhwmJ882(J)I

    move-result p1

    .line 5
    iget-wide v0, p2, Lorg/chromium/components/search_engines/TemplateUrl;->a:J

    .line 6
    invoke-static {v0, v1}, LJ/N;->MhwmJ882(J)I

    move-result p2

    sub-int v1, p1, p2

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/components/search_engines/TemplateUrl;->a()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Lorg/chromium/components/search_engines/TemplateUrl;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1, p2}, Lorg/chromium/components/search_engines/TemplateUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    iget-object v0, p0, Lzy0;->w:Lorg/chromium/components/search_engines/TemplateUrl;

    invoke-virtual {p1, v0}, Lorg/chromium/components/search_engines/TemplateUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lzy0;->w:Lorg/chromium/components/search_engines/TemplateUrl;

    invoke-virtual {p2, v0}, Lorg/chromium/components/search_engines/TemplateUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p2}, Lorg/chromium/components/search_engines/TemplateUrl;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/chromium/components/search_engines/TemplateUrl;->c()J

    move-result-wide p1

    cmp-long v0, v4, p1

    if-gez v0, :cond_6

    :goto_0
    const/4 v1, -0x1

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x1

    :goto_2
    return v1
.end method
