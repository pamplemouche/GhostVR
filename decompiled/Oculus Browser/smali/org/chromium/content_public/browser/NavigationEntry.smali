.class public Lorg/chromium/content_public/browser/NavigationEntry;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/chromium/content_public/browser/NavigationEntry;->a:I

    .line 3
    iput-object p2, p0, Lorg/chromium/content_public/browser/NavigationEntry;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/chromium/content_public/browser/NavigationEntry;->c:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lorg/chromium/content_public/browser/NavigationEntry;->d:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lorg/chromium/content_public/browser/NavigationEntry;->e:Landroid/graphics/Bitmap;

    return-void
.end method
