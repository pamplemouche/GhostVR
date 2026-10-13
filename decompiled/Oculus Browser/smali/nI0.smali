.class public LnI0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LmI0;


# instance fields
.field public final a:LpI0;


# direct methods
.method public constructor <init>(LpI0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LnI0;->a:LpI0;

    return-void
.end method


# virtual methods
.method public a(IILorg/chromium/chrome/browser/tab/Tab;)I
    .locals 10

    const/16 v0, 0x9

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const-string v4, "isTabGroupedWithParent"

    if-eqz v3, :cond_b

    .line 1
    iget-object p2, p0, LnI0;->a:LpI0;

    check-cast p2, LrI0;

    invoke-virtual {p2}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p2

    .line 2
    invoke-interface {p2}, LdI0;->a()Z

    move-result v3

    .line 3
    iget-boolean v5, p3, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-ne v3, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_a

    .line 4
    invoke-static {p2}, LFI0;->a(LdI0;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 p2, 0x0

    goto/16 :goto_5

    .line 5
    :cond_4
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v5

    .line 6
    invoke-static {p2, v5}, LFI0;->b(LdI0;I)I

    move-result v6

    .line 7
    iget-boolean v7, p3, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 8
    invoke-virtual {p0, p1, v7}, LnI0;->a(IZ)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 9
    iget v1, p3, Lorg/chromium/chrome/browser/tab/Tab;->k:I

    .line 10
    invoke-static {p2, v1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eq v3, v1, :cond_5

    .line 11
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-static {p2, v1}, LFI0;->b(LdI0;I)I

    move-result p2

    add-int/2addr p2, v0

    goto :goto_5

    :cond_5
    add-int/2addr v6, v0

    move p2, v6

    goto :goto_5

    .line 12
    :cond_6
    iget-object p2, p0, LnI0;->a:LpI0;

    check-cast p2, LrI0;

    invoke-virtual {p2}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p2

    .line 13
    invoke-interface {p2}, LdI0;->getCount()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_3
    if-lt v3, v6, :cond_9

    .line 14
    invoke-interface {p2, v3}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v7

    .line 15
    iget v8, v7, Lorg/chromium/chrome/browser/tab/Tab;->k:I

    if-ne v8, v5, :cond_8

    .line 16
    invoke-static {v7}, LeH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LeH0;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 17
    iget-object v9, v7, LeH0;->w:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v7, v4}, LeH0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 18
    :cond_7
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_9
    const/4 v3, -0x1

    :goto_4
    if-eq v3, v1, :cond_5

    add-int/2addr v3, v0

    move p2, v3

    goto :goto_5

    .line 19
    :cond_a
    iget-object p2, p0, LnI0;->a:LpI0;

    .line 20
    iget-boolean v0, p3, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 21
    check-cast p2, LrI0;

    invoke-virtual {p2, v0}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p2

    invoke-interface {p2}, LdI0;->getCount()I

    move-result p2

    .line 22
    :cond_b
    :goto_5
    iget-boolean p3, p3, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 23
    invoke-virtual {p0, p1, p3}, LnI0;->a(IZ)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 24
    iget-object p1, p0, LnI0;->a:LpI0;

    check-cast p1, LrI0;

    invoke-virtual {p1}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    .line 25
    invoke-interface {p1}, LdI0;->getCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p3, :cond_d

    .line 26
    invoke-interface {p1, v0}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-static {v1}, LeH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LeH0;

    move-result-object v1

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 28
    iget-object v1, v1, LeH0;->w:Ljava/util/Map;

    if-nez v3, :cond_c

    sget-object v3, LeH0;->y:Ljava/lang/Object;

    :cond_c
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    return p2
.end method

.method public a(IZ)Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 29
    iget-object p1, p0, LnI0;->a:LpI0;

    .line 30
    check-cast p1, LrI0;

    invoke-virtual {p1}, LrI0;->f()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method
