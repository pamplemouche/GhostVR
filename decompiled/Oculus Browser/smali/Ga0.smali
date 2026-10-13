.class public LGa0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;


# instance fields
.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;

.field public final synthetic y:LIa0;


# direct methods
.method public constructor <init>(LIa0;Ljava/lang/String;Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, LGa0;->y:LIa0;

    iput-object p2, p0, LGa0;->w:Ljava/lang/String;

    iput-object p3, p0, LGa0;->x:Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLargeIconAvailable(Landroid/graphics/Bitmap;IZI)V
    .locals 3

    .line 1
    iget-object v0, p0, LGa0;->y:LIa0;

    .line 2
    iget-object v0, v0, LIa0;->c:Landroid/util/LruCache;

    .line 3
    iget-object v1, p0, LGa0;->w:Ljava/lang/String;

    new-instance v2, LHa0;

    invoke-direct {v2, p1, p2, p3, p4}, LHa0;-><init>(Landroid/graphics/Bitmap;IZI)V

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, LGa0;->x:Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;->onLargeIconAvailable(Landroid/graphics/Bitmap;IZI)V

    return-void
.end method
