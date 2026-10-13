.class public final synthetic La40;
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

    iput-object p1, p0, La40;->w:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, La40;->w:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->F:Z

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-static {}, LJ/N;->MklbOJun()J

    move-result-wide v3

    .line 4
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->E:J

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->w:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "ContextMenu.Shown"

    invoke-static {v0, v1}, LfV;->a(Ljava/lang/String;Z)V

    return-void
.end method
