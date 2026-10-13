.class public LKx0;
.super LBg;
.source "PG"


# instance fields
.field public A:I

.field public y:LTx0;

.field public z:I


# direct methods
.method public constructor <init>(LTx0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LBg;-><init>()V

    .line 2
    iput-object p1, p0, LKx0;->y:LTx0;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 49
    iget-object v0, p0, LKx0;->y:LTx0;

    .line 50
    iget-object v0, v0, LTx0;->z:Ljava/util/List;

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ldh;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0164

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    check-cast p1, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;

    .line 4
    iget-object p2, p0, LKx0;->y:LTx0;

    .line 5
    iput-object p2, p1, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    .line 6
    iget-object p2, p2, LTx0;->H:LrR0;

    .line 7
    iput-object p2, p1, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->P:LrR0;

    .line 8
    iget-object v0, p1, LiR0;->z:LrR0;

    if-eq v0, p2, :cond_1

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, v0, LrR0;->d:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    iput-object p2, p1, LiR0;->z:LrR0;

    .line 11
    iget-object p2, p2, LrR0;->d:LWT;

    invoke-virtual {p2, p1}, LWT;->a(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07025a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->e0:I

    .line 13
    new-instance p2, LMx0;

    invoke-direct {p2, p1}, LMx0;-><init>(Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;)V

    return-object p2
.end method

.method public a(Ldh;I)V
    .locals 10

    .line 14
    instance-of v0, p1, LMx0;

    if-eqz v0, :cond_7

    .line 15
    check-cast p1, LMx0;

    .line 16
    iget-object v0, p0, LKx0;->y:LTx0;

    .line 17
    iput-object v0, p1, LMx0;->P:LTx0;

    .line 18
    iget-object v0, v0, LTx0;->z:Ljava/util/List;

    .line 19
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LLx0;

    iput-object p2, p1, LMx0;->R:LLx0;

    .line 20
    iget v0, p2, LLx0;->y:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_0

    goto/16 :goto_1

    .line 21
    :cond_0
    iget-object p2, p2, LLx0;->w:Landroid/net/Uri;

    .line 22
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 23
    iget-object v0, p1, LMx0;->P:LTx0;

    invoke-virtual {v0}, LTx0;->b()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSx0;

    if-eqz v0, :cond_1

    .line 24
    iget-object p2, p1, LMx0;->Q:Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;

    iget-object p1, p1, LMx0;->R:LLx0;

    iget-object v2, v0, LSx0;->a:Ljava/util/List;

    iget-object v0, v0, LSx0;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, v2, v0, v1}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->a(LLx0;Ljava/util/List;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    goto :goto_2

    .line 25
    :cond_1
    iget-object v0, p1, LMx0;->P:LTx0;

    .line 26
    iget v5, v0, LTx0;->O:I

    .line 27
    invoke-virtual {v0}, LTx0;->c()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LSx0;

    if-eqz p2, :cond_2

    .line 28
    iget-object v0, p2, LSx0;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-float v8, v5

    .line 30
    invoke-static {v0, v8, v1}, Lnx0;->a(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-string v1, "Android.PhotoPicker.UpscaleLowResBitmap"

    .line 32
    invoke-static {v1, v8, v9}, LfV;->c(Ljava/lang/String;J)V

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p1, LMx0;->Q:Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;

    iget-object v6, p1, LMx0;->R:LLx0;

    iget-object p2, p2, LSx0;->b:Ljava/lang/String;

    invoke-virtual {v0, v6, v1, p2, v3}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->a(LLx0;Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_0

    .line 36
    :cond_2
    iget-object p2, p1, LMx0;->Q:Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;

    iget-object v0, p1, LMx0;->R:LLx0;

    invoke-virtual {p2, v0, v2, v2, v3}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->a(LLx0;Ljava/util/List;Ljava/lang/String;Z)V

    .line 37
    :goto_0
    iget-object p2, p1, LMx0;->P:LTx0;

    .line 38
    iget-object p2, p2, LTx0;->C:Lxx0;

    .line 39
    iget-object v0, p1, LMx0;->R:LLx0;

    .line 40
    iget-object v1, v0, LLx0;->w:Landroid/net/Uri;

    .line 41
    iget v0, v0, LLx0;->y:I

    if-eqz p2, :cond_4

    .line 42
    new-instance v2, Lux0;

    invoke-direct {v2, v1, v5, v0, p1}, Lux0;-><init>(Landroid/net/Uri;IILvx0;)V

    .line 43
    iget-object p1, p2, Lxx0;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p2, Lxx0;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lxx0;->A()V

    :cond_3
    const/4 v1, 0x2

    goto :goto_2

    .line 45
    :cond_4
    throw v2

    .line 46
    :cond_5
    :goto_1
    iget-object p2, p1, LMx0;->Q:Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;

    iget-object p1, p1, LMx0;->R:LLx0;

    invoke-virtual {p2, p1, v2, v2, v1}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->a(LLx0;Ljava/util/List;Ljava/lang/String;Z)V

    :goto_2
    if-ne v1, v3, :cond_6

    .line 47
    iget p1, p0, LKx0;->z:I

    add-int/2addr p1, v3

    iput p1, p0, LKx0;->z:I

    goto :goto_3

    :cond_6
    if-ne v1, v4, :cond_7

    .line 48
    iget p1, p0, LKx0;->A:I

    add-int/2addr p1, v3

    iput p1, p0, LKx0;->A:I

    :cond_7
    :goto_3
    return-void
.end method
