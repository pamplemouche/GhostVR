.class public LvG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LS10;

.field public final synthetic x:LnU;


# direct methods
.method public constructor <init>(LS10;LnU;)V
    .locals 0

    .line 1
    iput-object p1, p0, LvG0;->w:LS10;

    iput-object p2, p0, LvG0;->x:LnU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, LvG0;->w:LS10;

    .line 2
    iget-wide v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;->b:J

    .line 3
    invoke-static {v1, v2, v0}, LJ/N;->M70Imm05(JLjava/lang/Object;)V

    .line 4
    iget-object v0, p0, LvG0;->w:LS10;

    invoke-virtual {v0}, LS10;->a()V

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a()Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;

    move-result-object v0

    new-instance v1, LuG0;

    invoke-direct {v1, p0}, LuG0;-><init>(LvG0;)V

    .line 6
    sget-object v2, LwG0;->a:[I

    const/4 v3, 0x4

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataBridge;->a(LHA0;[II)V

    return-void
.end method
