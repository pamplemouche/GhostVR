.class public final synthetic LRd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LTd0;


# direct methods
.method public constructor <init>(LTd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRd0;->w:LTd0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, LRd0;->w:LTd0;

    .line 1
    invoke-virtual {v1}, LTd0;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2
    iget-object v2, v1, LTd0;->c:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    const v4, 0x7f0e011f

    .line 3
    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/gesturenav/NavigationSheetView;

    iput-object v2, v1, LTd0;->p:Lorg/chromium/chrome/browser/gesturenav/NavigationSheetView;

    const v4, 0x7f0b02c1

    .line 4
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 5
    iget-object v4, v1, LTd0;->l:LTd1;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    iget-object v2, v1, LTd0;->e:LMd0;

    iget-boolean v4, v1, LTd0;->q:Z

    check-cast v2, Lge0;

    .line 7
    iget-object v5, v2, Lge0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 8
    iget-object v5, v5, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 9
    invoke-interface {v5}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v5

    const/16 v6, 0x8

    invoke-interface {v5, v4, v6}, Lorg/chromium/content_public/browser/NavigationController;->a(ZI)LS01;

    move-result-object v4

    .line 10
    new-instance v14, Lorg/chromium/content_public/browser/NavigationEntry;

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v2, Lge0;->b:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const-string v7, "chrome://history/"

    move-object v5, v14

    move-object v2, v14

    move-wide v14, v15

    invoke-direct/range {v5 .. v15}, Lorg/chromium/content_public/browser/NavigationEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IJ)V

    .line 11
    iget-object v5, v4, LS01;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v2, v1, LTd0;->f:LYd0;

    .line 13
    iput-object v4, v2, LYd0;->g:LS01;

    .line 14
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 15
    :goto_0
    iget-object v8, v2, LYd0;->g:LS01;

    invoke-virtual {v8}, LS01;->a()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 16
    new-instance v8, Lle1;

    sget-object v9, LXd0;->d:[LUd1;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Lle1;-><init>(Ljava/util/Collection;)V

    .line 17
    iget-object v9, v2, LYd0;->g:LS01;

    invoke-virtual {v9, v7}, LS01;->a(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v9

    .line 18
    sget-object v10, LXd0;->b:Lke1;

    .line 19
    iget-object v11, v9, Lorg/chromium/content_public/browser/NavigationEntry;->d:Ljava/lang/String;

    .line 20
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 21
    iget-object v11, v9, Lorg/chromium/content_public/browser/NavigationEntry;->c:Ljava/lang/String;

    .line 22
    :cond_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 23
    iget-object v11, v9, Lorg/chromium/content_public/browser/NavigationEntry;->b:Ljava/lang/String;

    .line 24
    :cond_1
    invoke-virtual {v8, v10, v11}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 25
    sget-object v10, LXd0;->c:Lke1;

    new-instance v11, LUd0;

    invoke-direct {v11, v2, v7, v9}, LUd0;-><init>(LYd0;ILorg/chromium/content_public/browser/NavigationEntry;)V

    invoke-virtual {v8, v10, v11}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 26
    iget-object v10, v2, LYd0;->e:LQd1;

    new-instance v11, LPd1;

    invoke-direct {v11, v6, v8}, LPd1;-><init>(ILle1;)V

    invoke-virtual {v10, v11}, LLd1;->add(Ljava/lang/Object;)V

    .line 27
    iget-object v8, v9, Lorg/chromium/content_public/browser/NavigationEntry;->e:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    iget-object v8, v9, Lorg/chromium/content_public/browser/NavigationEntry;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 30
    new-instance v9, LVd0;

    invoke-direct {v9, v2, v8}, LVd0;-><init>(LYd0;Ljava/lang/String;)V

    const-string v10, "chrome://history/"

    .line 31
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 32
    iget-object v10, v2, LYd0;->b:LDa0;

    .line 33
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v11

    iget v12, v2, LYd0;->d:I

    .line 34
    invoke-virtual {v10, v11, v8, v12, v9}, LDa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    .line 35
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_3
    iget-object v8, v2, LYd0;->e:LQd1;

    invoke-virtual {v8, v7}, LLd1;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LPd1;

    iget-object v8, v8, LPd1;->b:Lle1;

    sget-object v9, LXd0;->a:Lke1;

    iget-object v10, v2, LYd0;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9, v10}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 37
    :cond_5
    iget-object v2, v1, LTd0;->d:LrU;

    invoke-interface {v2}, LrU;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LtQ0;

    .line 38
    iget-object v2, v2, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 39
    iget-object v2, v2, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->N:LsQ0;

    if-ne v1, v2, :cond_6

    .line 40
    iget-object v2, v1, LTd0;->d:LrU;

    invoke-interface {v2}, LrU;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LtQ0;

    .line 41
    iget-object v2, v2, LtQ0;->w:Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;

    .line 42
    iget-object v3, v1, LTd0;->g:LuQ0;

    .line 43
    iget-object v2, v2, Lorg/chromium/chrome/browser/widget/bottomsheet/BottomSheet;->x:LWT;

    invoke-virtual {v2, v3}, LWT;->a(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 44
    iput-boolean v2, v1, LTd0;->s:Z

    .line 45
    invoke-virtual {v4}, LS01;->a()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_7

    .line 46
    iput-boolean v2, v1, LTd0;->u:Z

    .line 47
    iget-object v2, v1, LTd0;->d:LrU;

    invoke-interface {v2}, LrU;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LtQ0;

    invoke-virtual {v2}, LtQ0;->b()V

    .line 48
    iget-boolean v1, v1, LTd0;->q:Z

    const/4 v2, 0x2

    const-string v3, "GestureNavigation.Sheet.Viewed"

    .line 49
    invoke-static {v3, v1, v2}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_2

    .line 50
    :cond_6
    throw v3

    :cond_7
    :goto_2
    return-void
.end method
