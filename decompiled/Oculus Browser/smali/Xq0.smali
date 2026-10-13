.class public final synthetic LXq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LRd1;


# instance fields
.field public final a:LZq0;


# direct methods
.method public constructor <init>(LZq0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXq0;->a:LZq0;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, LXq0;->a:LZq0;

    .line 1
    iget-object v0, v0, LZq0;->e:Lar0;

    .line 2
    iget-object v0, v0, Lar0;->y:Landroid/widget/ListView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e013b

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;

    return-object v0
.end method
