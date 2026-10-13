.class public interface abstract Lcom/oculus/vrshell/panels/ImageLoader$ImageCache;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panels/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageCache"
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method
