.class public LIa0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lorg/chromium/chrome/browser/profiles/Profile;

.field public b:J

.field public c:Landroid/util/LruCache;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LJ/N;->MbuUwjTx()J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, LIa0;->b:J

    .line 4
    iput-object p1, p0, LIa0;->a:Lorg/chromium/chrome/browser/profiles/Profile;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z
    .locals 7

    .line 1
    iget-object v0, p0, LIa0;->c:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 2
    iget-wide v1, p0, LIa0;->b:J

    iget-object v3, p0, LIa0;->a:Lorg/chromium/chrome/browser/profiles/Profile;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    .line 3
    invoke-static/range {v1 .. v6}, LJ/N;->MHtQtq_n(JLjava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHa0;

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, v0, LHa0;->a:Landroid/graphics/Bitmap;

    iget p2, v0, LHa0;->b:I

    iget-boolean v1, v0, LHa0;->c:Z

    iget v0, v0, LHa0;->d:I

    invoke-interface {p3, p1, p2, v1, v0}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;->onLargeIconAvailable(Landroid/graphics/Bitmap;IZI)V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    new-instance v5, LGa0;

    invoke-direct {v5, p0, p1, p3}, LGa0;-><init>(LIa0;Ljava/lang/String;Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)V

    .line 7
    iget-wide v0, p0, LIa0;->b:J

    iget-object v2, p0, LIa0;->a:Lorg/chromium/chrome/browser/profiles/Profile;

    move-object v3, p1

    move v4, p2

    .line 8
    invoke-static/range {v0 .. v5}, LJ/N;->MHtQtq_n(JLjava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
