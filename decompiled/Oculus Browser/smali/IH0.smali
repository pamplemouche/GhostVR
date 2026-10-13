.class public LIH0;
.super LSG0;
.source "PG"


# instance fields
.field public w:LBd1;

.field public x:Lle1;

.field public final synthetic y:LJH0;


# direct methods
.method public synthetic constructor <init>(LJH0;LGH0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LIH0;->y:LJH0;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, LSG0;->onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    iget-object p1, p0, LIH0;->w:LBd1;

    iget-object v0, p0, LIH0;->x:Lle1;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, LBd1;->a(Lle1;I)V

    return-void
.end method
