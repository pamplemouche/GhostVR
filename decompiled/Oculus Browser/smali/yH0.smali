.class public LyH0;
.super LUH0;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/tab/Tab;

.field public final synthetic b:LzH0;


# direct methods
.method public constructor <init>(LzH0;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iput-object p1, p0, LyH0;->b:LzH0;

    iput-object p2, p0, LyH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0}, LUH0;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .line 1
    iget v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->k:I

    .line 2
    iget-object v1, p0, LyH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->h()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, LyH0;->b:LzH0;

    .line 5
    iget v1, v0, LzH0;->B:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LzH0;->B:I

    .line 6
    iget-object v1, v0, LzH0;->C:LRG0;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, LRG0;

    .line 8
    iget v2, p1, Lorg/chromium/chrome/browser/tab/Tab;->k:I

    .line 9
    invoke-direct {v1, v2}, LRG0;-><init>(I)V

    iput-object v1, v0, LzH0;->C:LRG0;

    .line 10
    :cond_0
    iget-object v0, v0, LzH0;->C:LRG0;

    .line 11
    iget-object v1, v0, LRG0;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, v0}, LWT;->a(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
