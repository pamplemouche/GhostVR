.class public Lmx0;
.super LkW;
.source "PG"


# instance fields
.field public final a:Landroid/util/LruCache;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Landroid/graphics/Bitmap;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/util/LruCache;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p1, p0, Lmx0;->a:Landroid/util/LruCache;

    .line 3
    iput-object p3, p0, Lmx0;->b:Ljava/lang/String;

    .line 4
    iput p5, p0, Lmx0;->c:I

    .line 5
    iput-object p2, p0, Lmx0;->d:Landroid/graphics/Bitmap;

    .line 6
    iput-object p4, p0, Lmx0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lmx0;->d:Landroid/graphics/Bitmap;

    iget v3, p0, Lmx0;->c:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lnx0;->a(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-string v0, "Android.PhotoPicker.BitmapScalerTask"

    .line 5
    invoke-static {v0, v3, v4}, LfV;->c(Ljava/lang/String;J)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lmx0;->a:Landroid/util/LruCache;

    iget-object v1, p0, Lmx0;->b:Ljava/lang/String;

    new-instance v2, LSx0;

    iget-object v3, p0, Lmx0;->e:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, LSx0;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
