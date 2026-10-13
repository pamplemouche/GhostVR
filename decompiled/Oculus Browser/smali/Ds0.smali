.class public final synthetic LDs0;
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

    iput-object p1, p0, LDs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    iput-object p2, p0, LDs0;->x:LRC0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LDs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoController;

    iget-object v1, p0, LDs0;->x:LRC0;

    .line 1
    iget-object v2, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 3
    invoke-virtual {v1, v2}, LRC0;->a(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v3}, LSC0;->a(Ljava/lang/String;I)V

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/page_info/PageInfoController;->y:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 7
    iget-wide v2, v1, LRC0;->a:J

    .line 8
    invoke-static {v2, v3, v1, v0}, LJ/N;->MUNdHFuu(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
