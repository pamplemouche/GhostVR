.class public LkH0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

.field public final b:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LkH0;->a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    .line 3
    iput-object p2, p0, LkH0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ContextMenu;Landroid/content/Context;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Ljava/util/List;
    .locals 2

    .line 2
    iget-object v0, p0, LkH0;->a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->a(Landroid/view/ContextMenu;Landroid/content/Context;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Ljava/util/List;

    move-result-object p2

    .line 4
    iget-object p3, p0, LkH0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p3}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object p3

    .line 5
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpH0;

    iget-object v1, p0, LkH0;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v1, p1}, LpH0;->onContextMenuShown(Lorg/chromium/chrome/browser/tab/Tab;Landroid/view/ContextMenu;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LkH0;->a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->a()V

    :cond_0
    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)Z
    .locals 1

    .line 7
    iget-object v0, p0, LkH0;->a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)Z

    move-result p1

    return p1
.end method
