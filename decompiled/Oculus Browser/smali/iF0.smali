.class public LiF0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:LmU0;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:LjF0;


# direct methods
.method public constructor <init>(LjF0;LmU0;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, LiF0;->c:LjF0;

    iput-object p2, p0, LiF0;->a:LmU0;

    iput-object p3, p0, LiF0;->b:Landroid/widget/TextView;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LiF0;->a:LmU0;

    iget-object v1, p0, LiF0;->c:LjF0;

    .line 2
    iget-object v1, v1, LjF0;->A0:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, LmU0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 10

    .line 1
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 2
    iget-object p1, p0, LiF0;->c:LjF0;

    .line 3
    iget-object v0, p1, LjF0;->x0:LFE0;

    const/4 v3, 0x0

    .line 4
    iget-object v1, p0, LiF0;->b:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/view/View;

    .line 5
    iget-object p1, p1, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 6
    iget-object p1, v0, LFE0;->b:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LEE0;

    .line 7
    iget p1, p1, LEE0;->b:I

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_0

    .line 10
    aget-object v9, v5, v8

    .line 11
    invoke-virtual {v0, v9, v7}, LFE0;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 13
    instance-of v7, v5, Landroid/widget/TextView;

    if-nez v7, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    check-cast v5, Landroid/widget/TextView;

    .line 15
    iget-object v7, v0, LFE0;->b:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LEE0;

    .line 16
    iget v5, v5, LEE0;->b:I

    if-nez v5, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 19
    sget-object v0, LE30;->a:LE30;

    if-nez v0, :cond_4

    new-instance v0, LE30;

    invoke-direct {v0}, LE30;-><init>()V

    sput-object v0, LE30;->a:LE30;

    .line 20
    :cond_4
    sget-object v0, LE30;->a:LE30;

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 22
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v6, v5, :cond_5

    .line 23
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 24
    :cond_5
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    move v5, p1

    .line 25
    invoke-static/range {v0 .. v5}, LJ/N;->MswahTi8(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I[II)V

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 26
    throw p1
.end method
