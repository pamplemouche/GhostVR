.class public LmX0;
.super Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;
.source "PG"


# instance fields
.field public final synthetic a:Landroid/view/ViewStructure;

.field public final synthetic b:Z

.field public final synthetic c:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;Landroid/view/ViewStructure;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LmX0;->c:Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;

    iput-object p2, p0, LmX0;->a:Landroid/view/ViewStructure;

    iput-boolean p3, p0, LmX0;->b:Z

    invoke-direct {p0}, Lorg/chromium/content_public/browser/AccessibilitySnapshotCallback;-><init>()V

    return-void
.end method
