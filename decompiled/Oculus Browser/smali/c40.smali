.class public final synthetic Lc40;
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

    iput-object p1, p0, Lc40;->w:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc40;->w:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    .line 1
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->D:Lorg/chromium/base/Callback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
