.class public final synthetic Lyz0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LAz0;


# direct methods
.method public constructor <init>(LAz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyz0;->a:LAz0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lyz0;->a:LAz0;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN70;

    .line 2
    invoke-virtual {v4}, LN70;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN70;

    .line 3
    iget v5, v4, LN70;->e:I

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v5, v0, LAz0;->x:Landroid/content/Context;

    const v6, 0x7f1302b5

    .line 5
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, LN70;->a:Ljava/lang/String;

    .line 6
    iget-object v5, v0, LAz0;->C:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    .line 7
    iget-object v5, v0, LAz0;->x:Landroid/content/Context;

    const v7, 0x7f1302ed

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v8, v3, 0x1

    .line 8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    .line 9
    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 10
    :cond_2
    iget-object v5, v0, LAz0;->x:Landroid/content/Context;

    const v6, 0x7f1302ec

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 11
    :goto_1
    iput-object v5, v4, LN70;->a:Ljava/lang/String;

    .line 12
    iget-object v5, v0, LAz0;->B:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_3
    iget-object v5, v0, LAz0;->x:Landroid/content/Context;

    const v6, 0x7f1303bb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, LN70;->a:Ljava/lang/String;

    .line 14
    iget-object v5, v0, LAz0;->A:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, v0, LAz0;->C:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_5

    .line 16
    :cond_5
    sget p1, LAz0;->D:I

    .line 17
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 18
    invoke-static {v3}, LJ/N;->MoK$xknu(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 19
    :goto_2
    invoke-virtual {v0}, LAz0;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 20
    invoke-virtual {v0, v2}, LAz0;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN70;

    if-nez v3, :cond_6

    goto :goto_3

    .line 21
    :cond_6
    iget-object v3, v3, LN70;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move p1, v2

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_8
    :goto_4
    iput p1, v0, LAz0;->w:I

    .line 23
    :goto_5
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 24
    iget-object p1, v0, LAz0;->z:Lzz0;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lzz0;->d()V

    :cond_9
    return-void

    .line 25
    :cond_a
    throw v1

    .line 26
    :cond_b
    throw v1
.end method
