.class public final synthetic LZ30;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ30;->a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LZ30;->a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    check-cast p1, Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->F:Z

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->y:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    iget-object v2, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->z:Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, v0, v2, p1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->a(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)Z

    return-void
.end method
