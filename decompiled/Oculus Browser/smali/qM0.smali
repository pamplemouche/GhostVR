.class public final synthetic LqM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

.field public final x:[LvM0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;[LvM0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LqM0;->w:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    iput-object p2, p0, LqM0;->x:[LvM0;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, LqM0;->w:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    iget-object p2, p0, LqM0;->x:[LvM0;

    .line 1
    iget-object p4, p1, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->A:LuM0;

    if-eqz p4, :cond_0

    aget-object p2, p2, p3

    invoke-interface {p4, p2}, LuM0;->a(LvM0;)V

    .line 2
    :cond_0
    iget-object p1, p1, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->z:Lef1;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method
