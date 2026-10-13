.class public final synthetic LGs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/page_info/PageInfoController;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LGs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LGs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Lorg/chromium/ui/base/Clipboard;->getInstance()Lorg/chromium/ui/base/Clipboard;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->D:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/chromium/ui/base/Clipboard;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
