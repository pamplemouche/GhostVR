.class Lcom/oculus/vrshell/panels/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/panels/ImageLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/vrshell/panels/ImageLoader;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/panels/ImageLoader;)V
    .locals 1

    .line 39
    iput-object p1, p0, Lcom/oculus/vrshell/panels/ImageLoader$2;->this$0:Lcom/oculus/vrshell/panels/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance p1, Lcom/oculus/vrshell/panels/ImageLoader$2$1;

    const/high16 v0, 0x400000

    invoke-direct {p1, p0, v0}, Lcom/oculus/vrshell/panels/ImageLoader$2$1;-><init>(Lcom/oculus/vrshell/panels/ImageLoader$2;I)V

    iput-object p1, p0, Lcom/oculus/vrshell/panels/ImageLoader$2;->mCache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader$2;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/oculus/vrshell/panels/ImageLoader$2;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
