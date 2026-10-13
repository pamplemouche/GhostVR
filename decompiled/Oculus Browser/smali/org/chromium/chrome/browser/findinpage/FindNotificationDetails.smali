.class public Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/Rect;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->a:I

    .line 3
    iput-object p2, p0, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->b:Landroid/graphics/Rect;

    .line 4
    iput p3, p0, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->c:I

    .line 5
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->d:Z

    return-void
.end method
