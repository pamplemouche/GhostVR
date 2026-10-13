.class public final synthetic Ld40;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld40;->w:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld40;->w:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    if-eqz v0, :cond_0

    .line 1
    new-instance v1, Lg40;

    invoke-direct {v1, v0}, Lg40;-><init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->a(Lorg/chromium/base/Callback;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
