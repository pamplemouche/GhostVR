.class public LCZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public A:LS01;

.field public final B:LBZ;

.field public final C:I

.field public final D:I

.field public final E:Landroid/view/View$OnLayoutChangeListener;

.field public F:LCa0;

.field public G:LDa0;

.field public H:Z

.field public final w:Lorg/chromium/chrome/browser/profiles/Profile;

.field public final x:Landroid/content/Context;

.field public final y:Landroid/widget/ListPopupWindow;

.field public final z:Lorg/chromium/content_public/browser/NavigationController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LCZ;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;Landroid/content/Context;Lorg/chromium/content_public/browser/NavigationController;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p1

    .line 2
    iput-object v3, v0, LCZ;->w:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 3
    iput-object v1, v0, LCZ;->x:Landroid/content/Context;

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v4, p3

    .line 5
    iput-object v4, v0, LCZ;->z:Lorg/chromium/content_public/browser/NavigationController;

    .line 6
    iput v2, v0, LCZ;->C:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 7
    :goto_1
    iget-object v8, v0, LCZ;->z:Lorg/chromium/content_public/browser/NavigationController;

    const/16 v9, 0x8

    invoke-interface {v8, v7, v9}, Lorg/chromium/content_public/browser/NavigationController;->a(ZI)LS01;

    move-result-object v7

    iput-object v7, v0, LCZ;->A:LS01;

    .line 8
    new-instance v15, Lorg/chromium/content_public/browser/NavigationEntry;

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v8, 0x7f130580

    .line 9
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-string v10, "chrome://history/"

    move-object v8, v15

    move-object v4, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-wide/from16 v17, v18

    invoke-direct/range {v8 .. v18}, Lorg/chromium/content_public/browser/NavigationEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IJ)V

    .line 10
    iget-object v7, v7, LS01;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v4, LBZ;

    const/4 v7, 0x0

    invoke-direct {v4, v0, v7}, LBZ;-><init>(LCZ;LzZ;)V

    iput-object v4, v0, LCZ;->B:LBZ;

    .line 12
    new-instance v4, Landroid/widget/ListPopupWindow;

    const v8, 0x7f140116

    invoke-direct {v4, v1, v7, v6, v8}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v4, v0, LCZ;->y:Landroid/widget/ListPopupWindow;

    .line 13
    new-instance v1, LxZ;

    invoke-direct {v1, v0}, LxZ;-><init>(LCZ;)V

    invoke-virtual {v4, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 14
    iget-object v1, v0, LCZ;->y:Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_2

    const v4, 0x7f0802ab

    goto :goto_2

    :cond_2
    const v4, 0x7f0802ad

    :goto_2
    invoke-static {v3, v4}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v1, v0, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 16
    iget-object v1, v0, LCZ;->y:Landroid/widget/ListPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 17
    iget-object v1, v0, LCZ;->y:Landroid/widget/ListPopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v1, v4}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 18
    iget-object v1, v0, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 19
    iget-object v1, v0, LCZ;->y:Landroid/widget/ListPopupWindow;

    iget-object v4, v0, LCZ;->B:LBZ;

    invoke-virtual {v1, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    iget-object v1, v0, LCZ;->y:Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_3

    const v4, 0x7f0701f9

    goto :goto_3

    :cond_3
    const v4, 0x7f07019b

    :goto_3
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    if-eqz v2, :cond_4

    .line 21
    iget-object v1, v0, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 22
    new-instance v1, LzZ;

    invoke-direct {v1, v0}, LzZ;-><init>(LCZ;)V

    iput-object v1, v0, LCZ;->E:Landroid/view/View$OnLayoutChangeListener;

    goto :goto_4

    .line 23
    :cond_4
    iput-object v7, v0, LCZ;->E:Landroid/view/View$OnLayoutChangeListener;

    :goto_4
    const v1, 0x7f0700b6

    .line 24
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, LCZ;->D:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, LCZ;->C:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "ForwardMenu_"

    goto :goto_0

    :cond_0
    const-string v1, "BackMenu_"

    :goto_0
    invoke-static {v0, v1, p1}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 4
    :cond_0
    iget-object v0, p0, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/NavigationEntry;

    .line 2
    iget p2, p1, Lorg/chromium/content_public/browser/NavigationEntry;->a:I

    const/4 p4, -0x1

    if-ne p2, p4, :cond_0

    const-string p1, "ShowFullHistory"

    .line 3
    invoke-virtual {p0, p1}, LCZ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, LCZ;->x:Landroid/content/Context;

    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    invoke-static {p1, p2}, Lze0;->a(Lorg/chromium/chrome/browser/ChromeActivity;Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    const-string p2, "HistoryClick"

    .line 6
    invoke-static {p2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, LCZ;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LhV;->a(Ljava/lang/String;)V

    .line 7
    iget p1, p1, Lorg/chromium/content_public/browser/NavigationEntry;->a:I

    .line 8
    iget-object p2, p0, LCZ;->z:Lorg/chromium/content_public/browser/NavigationController;

    .line 9
    invoke-interface {p2, p1}, Lorg/chromium/content_public/browser/NavigationController;->d(I)Z

    move-result p2

    const-string p3, "Navigation.BackForward.NavigatingToEntryMarkedToBeSkipped"

    .line 10
    invoke-static {p3, p2}, LfV;->a(Ljava/lang/String;Z)V

    .line 11
    iget-object p2, p0, LCZ;->z:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {p2, p1}, Lorg/chromium/content_public/browser/NavigationController;->e(I)V

    .line 12
    :goto_0
    iget-object p1, p0, LCZ;->y:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
