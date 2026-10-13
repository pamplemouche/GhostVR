.class public final synthetic LKs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

.field public final x:LRC0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;LRC0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    iput-object p2, p0, LKs0;->x:LRC0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LKs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    iget-object v1, p0, LKs0;->x:LRC0;

    if-eqz v0, :cond_0

    .line 1
    new-instance v2, LDs0;

    invoke-direct {v2, v0, v1}, LDs0;-><init>(Lorg/chromium/chrome/browser/page_info/PageInfoController;LRC0;)V

    .line 2
    iput-object v2, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->L:Ljava/lang/Runnable;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->C:LWs0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LWs0;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method
