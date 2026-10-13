.class public Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:F

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:I

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:I

.field public s:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->s:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->g:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/chromium/content_public/browser/AccessibilitySnapshotNode;->h:Ljava/lang/String;

    return-void
.end method
