.class public interface abstract Lcom/oculus/vrshell/panels/ImageLoader$MultiImageCallbacks;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panels/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiImageCallbacks"
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/util/Map;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onFailImage(Ljava/lang/Throwable;Ljava/lang/String;)V
.end method

.method public abstract onLoadImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method
