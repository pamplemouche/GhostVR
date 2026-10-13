.class public Lorg/chromium/chrome/browser/compositor/LayerTitleCache;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/util/SparseArray;

.field public final c:I

.field public d:J

.field public e:Lorg/chromium/ui/resources/ResourceManager;

.field public f:LCa0;

.field public g:LB30;

.field public h:LB30;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->b:Landroid/util/SparseArray;

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070068

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v1, 0x7f0702e7

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v1, 0x7f0702e6

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0802ca

    const v7, 0x7f0802cb

    move-object v2, p0

    .line 8
    invoke-static/range {v2 .. v7}, LJ/N;->MTbG5FQ5(Ljava/lang/Object;IIIII)J

    move-result-wide v1

    .line 9
    iput-wide v1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->d:J

    const v1, 0x7f070093

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->c:I

    .line 11
    new-instance v0, LB30;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LB30;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->g:LB30;

    .line 12
    new-instance v0, LB30;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LB30;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->h:LB30;

    .line 13
    new-instance p1, LCa0;

    invoke-direct {p1}, LCa0;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->f:LCa0;

    return-void
.end method

.method private buildUpdatedTitle(I)V
    .locals 0

    return-void
.end method

.method private getNativePtr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/LayerTitleCache;->d:J

    return-wide v0
.end method
