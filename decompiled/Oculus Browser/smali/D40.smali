.class public LD40;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LF40;

.field public b:Lorg/chromium/chrome/browser/contextmenu/RevampedContextMenuListView;

.field public c:F

.field public d:LnM0;

.field public e:Ljava/lang/Runnable;

.field public f:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(FLjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LD40;->c:F

    .line 3
    iput-object p2, p0, LD40;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;Ljava/util/List;Lorg/chromium/base/Callback;Ljava/lang/Runnable;Lorg/chromium/base/Callback;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p6

    .line 1
    iput-object v1, v0, LD40;->f:Lorg/chromium/base/Callback;

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3
    iget v2, v9, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->l:I

    int-to-float v2, v2

    mul-float v4, v2, v1

    .line 4
    iget v2, v9, Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;->m:I

    int-to-float v2, v2

    mul-float v5, v2, v1

    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0188

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v1, 0x7f0b00ef

    .line 6
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 7
    new-instance v12, LnM0;

    iget v6, v0, LD40;->c:F

    const v3, 0x7f140245

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, LnM0;-><init>(Landroid/app/Activity;IFFFLandroid/view/View;)V

    .line 8
    invoke-virtual {v12, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 9
    iput-object v12, v0, LD40;->d:LnM0;

    .line 10
    new-instance v1, Lp40;

    move-object/from16 v2, p5

    invoke-direct {v1, v2}, Lp40;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v12, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 11
    iget-object v1, v0, LD40;->d:LnM0;

    new-instance v2, Lt40;

    invoke-direct {v2, v0}, Lt40;-><init>(LD40;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 12
    new-instance v1, LF40;

    invoke-direct {v1, v8, v9}, LF40;-><init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)V

    iput-object v1, v0, LD40;->a:LF40;

    .line 13
    new-instance v1, LQd1;

    invoke-direct {v1}, LQd1;-><init>()V

    .line 14
    new-instance v2, LPd1;

    iget-object v3, v0, LD40;->a:LF40;

    .line 15
    iget-object v3, v3, LF40;->a:Lle1;

    const/4 v4, 0x1

    .line 16
    invoke-direct {v2, v4, v3}, LPd1;-><init>(ILle1;)V

    invoke-virtual {v1, v2}, LLd1;->add(Ljava/lang/Object;)V

    .line 17
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 18
    new-instance v12, LPd1;

    new-instance v13, Lle1;

    new-array v14, v6, [LUd1;

    invoke-direct {v13, v14}, Lle1;-><init>([LUd1;)V

    invoke-direct {v12, v6, v13}, LPd1;-><init>(ILle1;)V

    invoke-virtual {v1, v12}, LLd1;->add(Ljava/lang/Object;)V

    .line 19
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk40;

    .line 20
    instance-of v12, v6, LL40;

    if-eqz v12, :cond_2

    .line 21
    move-object v12, v6

    check-cast v12, LL40;

    .line 22
    iget-boolean v13, v12, LL40;->c:Z

    if-eqz v13, :cond_1

    invoke-static {}, LTD0;->a()Landroid/content/Intent;

    move-result-object v13

    goto :goto_1

    .line 23
    :cond_1
    invoke-static {v10}, LTD0;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v13

    .line 24
    :goto_1
    invoke-static {v13, v10}, LTD0;->a(Landroid/content/Intent;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v13

    .line 25
    sget-object v14, LK40;->g:[LUd1;

    .line 26
    invoke-static {v14}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v14

    .line 27
    sget-object v15, LJ40;->b:Lje1;

    .line 28
    invoke-interface {v6}, Lk40;->a()I

    move-result v4

    .line 29
    new-instance v7, LZd1;

    invoke-direct {v7, v10}, LZd1;-><init>(LVd1;)V

    .line 30
    iput v4, v7, LZd1;->a:I

    .line 31
    invoke-interface {v14, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v4, LJ40;->a:Lke1;

    .line 33
    invoke-interface {v6, v8}, Lk40;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 34
    new-instance v7, Lbe1;

    invoke-direct {v7, v10}, Lbe1;-><init>(LVd1;)V

    .line 35
    iput-object v6, v7, Lbe1;->a:Ljava/lang/Object;

    .line 36
    invoke-interface {v14, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v4, LK40;->d:Lke1;

    iget-object v6, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 38
    new-instance v7, Lbe1;

    invoke-direct {v7, v10}, Lbe1;-><init>(LVd1;)V

    .line 39
    iput-object v6, v7, Lbe1;->a:Ljava/lang/Object;

    .line 40
    invoke-interface {v14, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v4, LK40;->e:Lke1;

    iget-object v6, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    .line 42
    new-instance v7, Lbe1;

    invoke-direct {v7, v10}, Lbe1;-><init>(LVd1;)V

    .line 43
    iput-object v6, v7, Lbe1;->a:Ljava/lang/Object;

    .line 44
    invoke-interface {v14, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v4, LK40;->f:Lke1;

    .line 46
    new-instance v6, Lr40;

    invoke-direct {v6, v0, v9, v12, v8}, Lr40;-><init>(LD40;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;LL40;Landroid/app/Activity;)V

    .line 47
    new-instance v7, Lbe1;

    invoke-direct {v7, v10}, Lbe1;-><init>(LVd1;)V

    .line 48
    iput-object v6, v7, Lbe1;->a:Ljava/lang/Object;

    .line 49
    invoke-interface {v14, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v4, Lle1;

    invoke-direct {v4, v14, v10}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    .line 51
    new-instance v6, LPd1;

    invoke-direct {v6, v5, v4}, LPd1;-><init>(ILle1;)V

    invoke-virtual {v1, v6}, LLd1;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 52
    :cond_2
    sget-object v4, LJ40;->c:[LUd1;

    .line 53
    invoke-static {v4}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v4

    .line 54
    sget-object v7, LJ40;->b:Lje1;

    .line 55
    invoke-interface {v6}, Lk40;->a()I

    move-result v12

    .line 56
    new-instance v13, LZd1;

    invoke-direct {v13, v10}, LZd1;-><init>(LVd1;)V

    .line 57
    iput v12, v13, LZd1;->a:I

    .line 58
    invoke-interface {v4, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v7, LJ40;->a:Lke1;

    .line 60
    invoke-interface {v6, v8}, Lk40;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 61
    new-instance v12, Lbe1;

    invoke-direct {v12, v10}, Lbe1;-><init>(LVd1;)V

    .line 62
    iput-object v6, v12, Lbe1;->a:Ljava/lang/Object;

    .line 63
    invoke-interface {v4, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v6, Lle1;

    invoke-direct {v6, v4, v10}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    .line 65
    new-instance v4, LPd1;

    const/4 v7, 0x2

    invoke-direct {v4, v7, v6}, LPd1;-><init>(ILle1;)V

    invoke-virtual {v1, v4}, LLd1;->add(Ljava/lang/Object;)V

    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 66
    :cond_3
    new-instance v2, LC40;

    invoke-direct {v2, v0, v1}, LC40;-><init>(LD40;LQd1;)V

    const v1, 0x7f0b00f0

    .line 67
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/contextmenu/RevampedContextMenuListView;

    iput-object v1, v0, LD40;->b:Lorg/chromium/chrome/browser/contextmenu/RevampedContextMenuListView;

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object v1, v0, LD40;->a:LF40;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    new-instance v3, Lu40;

    invoke-direct {v3, v1}, Lu40;-><init>(LF40;)V

    .line 71
    sget-object v1, Lv40;->a:Lne1;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3, v1}, LTd1;->a(ILRd1;Lne1;)V

    .line 72
    new-instance v1, Lw40;

    invoke-direct {v1, v0}, Lw40;-><init>(LD40;)V

    sget-object v3, Lx40;->a:Lne1;

    invoke-virtual {v2, v6, v1, v3}, LTd1;->a(ILRd1;Lne1;)V

    .line 73
    new-instance v1, Ly40;

    invoke-direct {v1, v0}, Ly40;-><init>(LD40;)V

    sget-object v3, Lz40;->a:Lne1;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1, v3}, LTd1;->a(ILRd1;Lne1;)V

    .line 74
    new-instance v1, LA40;

    invoke-direct {v1, v0}, LA40;-><init>(LD40;)V

    sget-object v3, LB40;->a:Lne1;

    invoke-virtual {v2, v5, v1, v3}, LTd1;->a(ILRd1;Lne1;)V

    .line 75
    iget-object v1, v0, LD40;->b:Lorg/chromium/chrome/browser/contextmenu/RevampedContextMenuListView;

    new-instance v2, Lq40;

    move-object/from16 v3, p4

    invoke-direct {v2, v0, v3}, Lq40;-><init>(LD40;Lorg/chromium/base/Callback;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object v1, v0, LD40;->d:LnM0;

    invoke-virtual {v1}, LnM0;->show()V

    return-void
.end method
