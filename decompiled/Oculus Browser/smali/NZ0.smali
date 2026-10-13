.class public LNZ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LZZ0;


# instance fields
.field public A:Landroid/graphics/Rect;

.field public B:Landroid/view/ActionMode$Callback;

.field public final w:Landroid/view/View;

.field public final x:LYZ0;

.field public final y:Landroid/content/Context;

.field public z:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;LYZ0;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LNZ0;->w:Landroid/view/View;

    .line 3
    iput-object p3, p0, LNZ0;->x:LYZ0;

    .line 4
    iput-object p1, p0, LNZ0;->y:Landroid/content/Context;

    .line 5
    iput-object p4, p0, LNZ0;->B:Landroid/view/ActionMode$Callback;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 7
    iget-object v0, p0, LNZ0;->z:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, LNZ0;->z:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iput-object p1, p0, LNZ0;->A:Landroid/graphics/Rect;

    .line 2
    iget-object p1, p0, LNZ0;->z:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidateContentRect()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, LNZ0;->w:Landroid/view/View;

    new-instance v0, LMZ0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LMZ0;-><init>(LNZ0;LLZ0;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, LNZ0;->y:Landroid/content/Context;

    invoke-static {v0, p1}, LSZ0;->a(Landroid/content/Context;Landroid/view/ActionMode;)V

    .line 6
    iput-object p1, p0, LNZ0;->z:Landroid/view/ActionMode;

    :cond_2
    :goto_0
    return-void
.end method
