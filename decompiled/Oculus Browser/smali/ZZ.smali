.class public LZZ;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:La00;


# direct methods
.method public constructor <init>(La00;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZZ;->w:La00;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, LZZ;->w:La00;

    .line 2
    iget-object p2, p1, La00;->y:LZb1;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, La00;->b()V

    .line 4
    iget-object p1, p0, LZZ;->w:La00;

    .line 5
    invoke-virtual {p1}, La00;->d()V

    .line 6
    iget-object p1, p0, LZZ;->w:La00;

    .line 7
    iget-object p2, p1, La00;->y:LZb1;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p2, LZb1;->w:LXb1;

    .line 9
    iput-object v0, p2, LZb1;->x:LYb1;

    .line 10
    iput-object v0, p1, La00;->y:LZb1;

    :cond_0
    return-void
.end method
