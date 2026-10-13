.class public final synthetic Ly40;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LRd1;


# instance fields
.field public final a:LD40;


# direct methods
.method public constructor <init>(LD40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly40;->a:LD40;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Ly40;->a:LD40;

    .line 1
    iget-object v0, v0, LD40;->b:Lorg/chromium/chrome/browser/contextmenu/RevampedContextMenuListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e018a

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
